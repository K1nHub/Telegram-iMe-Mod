.class public Lorg/telegram/ui/Cells/DialogCell;
.super Lorg/telegram/ui/Cells/BaseCell;
.source "DialogCell.java"

# interfaces
.implements Lorg/telegram/ui/Stories/StoriesListPlaceProvider$AvatarOverlaysView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;,
        Lorg/telegram/ui/Cells/DialogCell$SharedResources;,
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

.field public drawArchive:Z

.field public drawAvatar:Z

.field private drawCheck1:Z

.field private drawCheck2:Z

.field private drawClock:Z

.field private drawCount:Z

.field private drawCount2:Z

.field private drawError:Z

.field private drawForwardIcon:Z

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

.field private isCompactMode:Z

.field private isDialogCell:Z

.field private isForum:Z

.field private isForward:Z

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

.field protected overrideSwipeActionBackgroundColorKey:I

.field protected overrideSwipeActionDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field protected overrideSwipeActionRevealBackgroundColorKey:I

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

.field public rightFragmentOffset:F

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

.field public final storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

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

.field private updateLayout:Z

.field public useForceThreeLines:Z

.field public useFromUserAsAvatar:Z

.field private useMeForMyMessages:Z

.field public useSeparator:Z

.field private user:Lorg/telegram/tgnet/TLRPC$User;

.field private visibleOnScreen:Z

.field private wasDrawnOnline:Z

.field protected xOffset:F


# direct methods
.method public static synthetic $r8$lambda$JXvRH2vPsVOzfl6xMrqRLEjO2JQ(Lorg/telegram/ui/Cells/DialogCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DialogCell;->lambda$update$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_RQy46hn9YnKNFrzaBria3WH7rM(Lorg/telegram/ui/Cells/DialogCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->lambda$onDraw$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$fE9Dv5bPl-RMNJilHzzepmJOAY4(Lorg/telegram/ui/Cells/DialogCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DialogCell;->lambda$createStatusDrawableAnimator$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lJXPUY18vpeq8W0-PCNuYp3765o(Lorg/telegram/ui/Cells/DialogCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->lambda$onDraw$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$tmNqj-NiK7sTMFrlcDIRZtThiuY(Lorg/telegram/ui/Cells/DialogCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DialogCell;->lambda$update$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZ)V
    .locals 7

    .line 616
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
    .locals 4

    .line 622
    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x1

    .line 190
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/DialogCell;->drawArchive:Z

    .line 200
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/DialogCell;->drawAvatar:Z

    const/16 v0, 0x48

    .line 201
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    .line 202
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->heightDefault:I

    const/16 v0, 0x4e

    .line 203
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->heightThreeLines:I

    const/high16 v0, 0x42280000    # 42.0f

    .line 211
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chekBoxPaddingTop:F

    .line 234
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Cells/DialogCell$1;-><init>(Lorg/telegram/ui/Cells/DialogCell;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 259
    new-instance v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-direct {v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbSpoiler:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 261
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/DialogCell;->visibleOnScreen:Z

    const/4 v2, 0x0

    .line 322
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    .line 405
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    .line 437
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeAction:Z

    const/4 v2, 0x3

    new-array v3, v2, [Z

    .line 447
    iput-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImageSeen:[Z

    new-array v3, v2, [Lorg/telegram/messenger/ImageReceiver;

    .line 448
    iput-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    new-array v3, v2, [Z

    .line 449
    iput-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPlay:[Z

    new-array v2, v2, [Z

    .line 450
    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->drawSpoiler:[Z

    .line 452
    new-instance v2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 453
    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 456
    new-instance v2, Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;

    invoke-direct {v2}, Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->interpolator:Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;

    .line 519
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool:Ljava/util/Stack;

    .line 520
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    .line 521
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool2:Ljava/util/Stack;

    .line 522
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    .line 546
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/DialogCell;->drawCount2:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 555
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->countChangeProgress:F

    .line 556
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    .line 577
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    const/4 v2, -0x1

    .line 584
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    .line 596
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->readOutboxMaxId:I

    .line 597
    new-instance v2, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;-><init>(Lorg/telegram/ui/Cells/DialogCell;Lorg/telegram/ui/Cells/DialogCell$1;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    .line 623
    iput-boolean p3, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->allowLongress:Z

    .line 624
    iput-object p6, p0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 625
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    .line 626
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->createDialogsResources(Landroid/content/Context;)V

    .line 627
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, p5}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    .line 628
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 p2, 0x1c

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 629
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length p2, p1

    if-ge v1, p2, :cond_0

    .line 630
    new-instance p2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    aput-object p2, p1, v1

    .line 631
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object p2, p1, v1

    iput-boolean p3, p2, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    .line 632
    aget-object p1, p1, v1

    const/4 p2, 0x2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 633
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object p1, p1, v1

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 634
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object p1, p1, v1

    invoke-virtual {p1, p5}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 636
    :cond_0
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    .line 637
    iput p5, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    .line 639
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/16 p2, 0x16

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 640
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/DialogCell;)I
    .locals 0

    .line 130
    iget p0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 130
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 130
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Cells/DialogCell;)I
    .locals 0

    .line 130
    iget p0, p0, Lorg/telegram/ui/Cells/DialogCell;->animateToStatusDrawableParams:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Cells/DialogCell;II)V
    .locals 0

    .line 130
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Cells/DialogCell;->createStatusDrawableAnimator(II)V

    return-void
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Cells/DialogCell;Z)Z
    .locals 0

    .line 130
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Cells/DialogCell;I)I
    .locals 0

    .line 130
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Cells/DialogCell;)J
    .locals 2

    .line 130
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    return-wide v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Cells/DialogCell;)I
    .locals 0

    .line 130
    iget p0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Cells/DialogCell;)I
    .locals 0

    .line 130
    iget p0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Cells/DialogCell;)Lorg/telegram/messenger/MessageObject;
    .locals 0

    .line 130
    iget-object p0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 130
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 130
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Cells/DialogCell;)I
    .locals 0

    .line 130
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Cells/DialogCell;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    .line 130
    iget-object p0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 130
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Cells/DialogCell;)Landroid/text/StaticLayout;
    .locals 0

    .line 130
    iget-object p0, p0, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Cells/DialogCell;F)F
    .locals 0

    .line 130
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->countChangeProgress:F

    return p1
.end method

.method static synthetic access$502(Lorg/telegram/ui/Cells/DialogCell;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;
    .locals 0

    .line 130
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$602(Lorg/telegram/ui/Cells/DialogCell;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;
    .locals 0

    .line 130
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationStableLayout:Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$702(Lorg/telegram/ui/Cells/DialogCell;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;
    .locals 0

    .line 130
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationInLayout:Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$802(Lorg/telegram/ui/Cells/DialogCell;F)F
    .locals 0

    .line 130
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 130
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    return p0
.end method

.method private applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 2648
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v0, :cond_0

    .line 2649
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, " "

    .line 2650
    invoke-virtual {p1, v0, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2651
    new-instance v1, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    mul-int/2addr v2, v3

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

    .line 167
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->bottomClip:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private checkChatTheme()V
    .locals 5

    .line 731
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    if-eqz v1, :cond_0

    .line 732
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    .line 733
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

    .line 721
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

    .line 722
    :goto_1
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    return-void
.end method

.method private checkOnline()V
    .locals 3

    .line 692
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 693
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

    .line 695
    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 698
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 699
    :goto_0
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    return-void
.end method

.method private checkTtl()V
    .locals 1

    .line 726
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

    .line 727
    :goto_1
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    return-void
.end method

.method private checkTwoLinesForName()V
    .locals 1

    const/4 v0, 0x0

    .line 869
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    .line 870
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_0

    .line 871
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    .line 872
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->nameIsEllipsized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 873
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    .line 874
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    :cond_0
    return-void
.end method

.method private computeHeight()I
    .locals 1

    .line 857
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isTransitionSupport:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->collapsed:Z

    if-nez v0, :cond_3

    .line 858
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

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

    .line 860
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->getCollapsedHeight()I

    move-result v0

    return v0
.end method

.method private createStatusDrawableAnimator(II)V
    .locals 3

    const/4 v0, 0x0

    .line 4698
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableProgress:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 4699
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xdc

    .line 4700
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4702
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4703
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->animateFromStatusDrawableParams:I

    .line 4704
    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->animateToStatusDrawableParams:I

    .line 4705
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4709
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Cells/DialogCell$5;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Cells/DialogCell$5;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 p1, 0x1

    .line 4722
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimationInProgress:Z

    .line 4723
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

    .line 2688
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lorg/telegram/ui/Cells/DialogCell;->clockDrawLeft:I

    iget p4, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-static {p2, p3, p4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    cmpl-float p2, p6, v2

    if-eqz p2, :cond_1

    .line 2690
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2691
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

    .line 2692
    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    mul-float/2addr p6, v4

    float-to-int p4, p6

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2694
    :cond_1
    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p2, :cond_2

    .line 2696
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2697
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2699
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    goto/16 :goto_0

    :cond_3
    if-eqz p4, :cond_a

    if-eqz p3, :cond_8

    .line 2702
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawLeft:I

    iget p4, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-static {p2, p3, p4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    if-eqz p5, :cond_4

    .line 2704
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2705
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

    .line 2706
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    mul-float p3, p6, v4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_4
    if-nez p5, :cond_5

    if-eqz v1, :cond_5

    .line 2709
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2710
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

    .line 2711
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    mul-float/2addr v4, p6

    float-to-int p3, v4

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2712
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkReadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2715
    :cond_5
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p5, :cond_6

    .line 2718
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2719
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 p2, 0x4

    .line 2720
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr v2, p6

    mul-float/2addr p2, v2

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2722
    :cond_6
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkReadDrawable:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    iget p4, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-static {p2, p3, p4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 2723
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkReadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p5, :cond_7

    .line 2725
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2726
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_7
    if-nez p5, :cond_a

    if-eqz v1, :cond_a

    .line 2730
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2731
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2732
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkReadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 2735
    :cond_8
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft1:I

    iget p4, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-static {p2, p3, p4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    cmpl-float p2, p6, v2

    if-eqz p2, :cond_9

    .line 2737
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2738
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

    .line 2739
    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    mul-float/2addr p6, v4

    float-to-int p4, p6

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2741
    :cond_9
    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p2, :cond_a

    .line 2743
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2744
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_a
    :goto_0
    return-void
.end method

.method private drawCounter(Landroid/graphics/Canvas;ZIIIFZ)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    .line 4527
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
    move v5, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v7

    .line 4528
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

    .line 4529
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

    .line 4534
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    if-nez v12, :cond_5

    .line 4535
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    iput-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    .line 4536
    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4537
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    const/4 v13, 0x2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4538
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 4539
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 4541
    :cond_5
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedOverlay:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    .line 4542
    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    .line 4543
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    .line 4544
    invoke-static {v12, v10}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v15

    .line 4545
    invoke-static {v12}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v11

    .line 4542
    invoke-static {v14, v15, v12}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v12

    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 4548
    :cond_6
    iget-boolean v12, v0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v12, :cond_a

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_inbox_max_id:I

    if-nez v12, :cond_a

    .line 4549
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->topicCounterPaint:Landroid/graphics/Paint;

    if-nez v6, :cond_7

    .line 4550
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->topicCounterPaint:Landroid/graphics/Paint;

    .line 4552
    :cond_7
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->topicCounterPaint:Landroid/graphics/Paint;

    if-eqz p2, :cond_8

    .line 4553
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_topics_unreadCounterMuted:I

    goto :goto_3

    :cond_8
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_topics_unreadCounter:I

    :goto_3
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    .line 4554
    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 4555
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

    .line 4559
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
    move-object/from16 v19, v7

    move v7, v6

    move-object/from16 v6, v19

    .line 4562
    :goto_6
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    const/high16 v15, 0x40b00000    # 5.5f

    const/16 v16, 0x4

    const/high16 v17, 0x41380000    # 11.5f

    if-eqz v12, :cond_1d

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-nez v13, :cond_d

    goto/16 :goto_f

    .line 4617
    :cond_d
    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v12, v9, v12

    int-to-float v10, v10

    mul-float/2addr v12, v10

    float-to-int v10, v12

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4618
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v12, v9, v12

    mul-float/2addr v12, v11

    float-to-int v11, v12

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setAlpha(I)V

    const/high16 v10, 0x40000000    # 2.0f

    mul-float v11, v8, v10

    cmpl-float v12, v11, v9

    if-lez v12, :cond_e

    move v12, v9

    goto :goto_7

    :cond_e
    move v12, v11

    :goto_7
    int-to-float v3, v3

    mul-float/2addr v3, v12

    move/from16 v13, p5

    int-to-float v13, v13

    sub-float v18, v9, v12

    mul-float v13, v13, v18

    add-float/2addr v3, v13

    .line 4626
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    sub-float v13, v3, v13

    .line 4627
    iget-object v15, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    int-to-float v10, v2

    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    int-to-float v9, v9

    mul-float/2addr v9, v12

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

    const/high16 v9, 0x3f000000    # 0.5f

    cmpg-float v13, v8, v9

    const v14, 0x3dcccccd    # 0.1f

    if-gtz v13, :cond_f

    .line 4631
    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v8, v11}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v8

    mul-float/2addr v8, v14

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_f
    const/high16 v11, 0x3f800000    # 1.0f

    .line 4633
    sget-object v13, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    sub-float v9, v11, v8

    invoke-virtual {v13, v9}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v8

    mul-float/2addr v8, v14

    :goto_8
    add-float/2addr v8, v11

    .line 4636
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    mul-float/2addr v8, v4

    .line 4637
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual {v1, v8, v8, v4, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    if-eqz v5, :cond_14

    .line 4639
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    if-eqz v4, :cond_10

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    if-eqz v4, :cond_10

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 4640
    :cond_10
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    if-nez v4, :cond_11

    .line 4641
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    goto :goto_9

    .line 4643
    :cond_11
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 4645
    :goto_9
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    if-nez v4, :cond_12

    .line 4646
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    .line 4648
    :cond_12
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v4, v5, v8}, Lorg/telegram/ui/Components/BubbleCounterPath;->addBubbleRect(Landroid/graphics/Path;Landroid/graphics/RectF;F)V

    .line 4650
    :cond_13
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz p7, :cond_15

    .line 4652
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_a

    .line 4655
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

    .line 4657
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4660
    :cond_15
    :goto_a
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationStableLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_16

    .line 4661
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4662
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4663
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationStableLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4664
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4667
    :cond_16
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getAlpha()I

    move-result v2

    .line 4668
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    int-to-float v5, v2

    mul-float v6, v5, v12

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 4669
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationInLayout:Landroid/text/StaticLayout;

    const/16 v6, 0xd

    if-eqz v4, :cond_18

    .line 4670
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4671
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

    .line 4672
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationInLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4673
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_d

    .line 4674
    :cond_18
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_1a

    .line 4675
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4676
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

    .line 4677
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4678
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4681
    :cond_1a
    :goto_d
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_1c

    .line 4682
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    mul-float v5, v5, v18

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 4683
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4684
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

    mul-float/2addr v4, v12

    add-float/2addr v4, v10

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4685
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4686
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4688
    :cond_1c
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 4689
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_13

    .line 4563
    :cond_1d
    :goto_f
    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-nez v9, :cond_1e

    goto :goto_10

    :cond_1e
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    .line 4564
    :goto_10
    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v9, v13, v9

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4565
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v10, v13, v10

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 4567
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int v9, v3, v9

    .line 4568
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

    .line 4570
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v13, v4, v10

    if-eqz v13, :cond_1f

    .line 4572
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

    .line 4575
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 4576
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v13, v10, v13

    mul-float/2addr v13, v11

    float-to-int v11, v13

    invoke-virtual {v4, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4577
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    invoke-static {v4, v11, v13}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 4578
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    sub-float v4, v10, v8

    .line 4579
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

    .line 4580
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4581
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4583
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

    .line 4587
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    if-eqz v4, :cond_22

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    if-eqz v4, :cond_22

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 4588
    :cond_22
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    if-nez v4, :cond_23

    .line 4589
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    goto :goto_11

    .line 4591
    :cond_23
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 4593
    :goto_11
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    if-nez v4, :cond_24

    .line 4594
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    .line 4596
    :cond_24
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v4, v5, v8}, Lorg/telegram/ui/Components/BubbleCounterPath;->addBubbleRect(Landroid/graphics/Path;Landroid/graphics/RectF;F)V

    .line 4598
    :cond_25
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz p7, :cond_27

    .line 4600
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_12

    .line 4603
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

    .line 4605
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

    .line 4609
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, v3

    .line 4610
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4611
    invoke-virtual {v12, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4612
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4615
    :cond_28
    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_13
    if-eqz v7, :cond_29

    .line 4692
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounterText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    :cond_29
    return-void
.end method

.method private findFolderTopMessage()Lorg/telegram/messenger/MessageObject;
    .locals 10

    .line 2802
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2806
    :cond_0
    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    iget v4, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/telegram/ui/DialogsActivity;->getDialogsArray(IIIZ)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2807
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2809
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2810
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsAlbumsOnly:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2812
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move-object v4, v1

    move v3, v5

    :goto_0
    if-ge v3, v0, :cond_5

    .line 2813
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 2814
    iget v7, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->dialogMessage:Landroidx/collection/LongSparseArray;

    if-eqz v7, :cond_4

    .line 2816
    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v7, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    .line 2817
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

    .line 2818
    iget-object v8, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v9, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-le v8, v9, :cond_3

    :cond_2
    move-object v4, v7

    .line 2821
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
    .locals 15

    .line 944
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 945
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getDialogs(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 947
    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 948
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 950
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 951
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsAlbumsOnly:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v1, v2

    .line 954
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderDialogsCount:I

    .line 955
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 956
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    const-string v7, ", "

    if-ge v6, v4, :cond_a

    .line 957
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 960
    iget-wide v9, v8, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v0, v9, v10}, Lorg/telegram/messenger/MessagesController;->isHiddenByUndo(J)Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_4

    .line 963
    :cond_1
    iget-wide v9, v8, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v9, v10}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_3

    .line 964
    iget-wide v11, v8, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 966
    iget-wide v11, v9, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    goto :goto_2

    :cond_2
    move-object v9, v10

    goto :goto_2

    .line 969
    :cond_3
    iget-wide v11, v8, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 970
    iget-wide v11, v8, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    goto :goto_2

    .line 972
    :cond_4
    iget-wide v11, v8, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    move-object v14, v10

    move-object v10, v9

    move-object v9, v14

    :goto_2
    const/16 v11, 0x20

    const/16 v12, 0xa

    if-eqz v10, :cond_5

    .line 977
    iget-object v9, v10, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v9, v12, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_5
    if-eqz v9, :cond_9

    .line 979
    invoke-static {v9}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 980
    sget v9, Lorg/telegram/messenger/R$string;->HiddenName:I

    const-string v10, "HiddenName"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 982
    :cond_6
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v10, v9}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v12, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    .line 987
    :goto_3
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_7

    .line 988
    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 990
    :cond_7
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    .line 991
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v10

    .line 992
    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 993
    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    if-lez v8, :cond_8

    .line 994
    new-instance v8, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string v9, "fonts/rmedium.ttf"

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameArchived:I

    iget-object v13, p0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v12, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    invoke-direct {v8, v9, v5, v12}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;II)V

    const/16 v9, 0x21

    invoke-virtual {v2, v8, v10, v11, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 996
    :cond_8
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/16 v9, 0x96

    if-le v8, v9, :cond_9

    goto :goto_5

    :cond_9
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1000
    :cond_a
    :goto_5
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    if-eq v0, v3, :cond_c

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/StoriesController;->getTotalStoriesCount(Z)I

    move-result v0

    if-lez v0, :cond_c

    .line 1002
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/StoriesController;->getTotalStoriesCount(Z)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1003
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 1004
    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_b
    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "Stories"

    .line 1006
    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1008
    :cond_c
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    const/16 v1, 0x11

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v2, v0, v1, v5}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 3

    .line 2586
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v1, 0x1

    const-string v2, "\u2069"

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 p3, 0x4

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 2602
    :cond_0
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 2598
    :cond_1
    invoke-virtual {v0, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const-string p3, ": "

    invoke-virtual {p1, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_2
    const-string p1, "\u2068"

    .line 2594
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 2590
    :cond_3
    invoke-virtual {v0, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const-string p3, ": \u2068"

    invoke-virtual {p1, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_0
    return-object v0
.end method

.method private formatTopicsNames()Ljava/lang/CharSequence;
    .locals 4

    .line 2666
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;-><init>(Lorg/telegram/ui/Cells/DialogCell$1;)V

    .line 2671
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->access$300(Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;ILorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 2672
    iget v1, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->topMessageTopicStartIndex:I

    iput v1, p0, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicStartIndex:I

    .line 2673
    iget v1, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->topMessageTopicEndIndex:I

    iput v1, p0, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicEndIndex:I

    .line 2674
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->lastTopicMessageUnread:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->lastTopicMessageUnread:Z

    .line 2675
    iget-object v0, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->formattedNames:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private getCaptionMessage()Lorg/telegram/messenger/MessageObject;
    .locals 6

    .line 4929
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 4930
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    .line 4938
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 4939
    iget-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_3

    .line 4940
    iget-object v5, v4, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    .line 4942
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

    .line 865
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

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

    .line 3264
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    :goto_0
    return v0
.end method

.method private isContentHidden()Z
    .locals 4

    .line 172
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 173
    sget-object v0, Lcom/iMe/fork/enums/LockedSection;->ARCHIVE:Lcom/iMe/fork/enums/LockedSection;

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    sget-object v0, Lcom/iMe/fork/enums/LockedSection;->CLOUD:Lcom/iMe/fork/enums/LockedSection;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_2

    return v2

    .line 180
    :cond_2
    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v3}, Lcom/iMe/fork/controller/LockedSectionsController;->getInstance(I)Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/iMe/fork/controller/LockedSectionsController;->getSectionsPasscodeData(Lcom/iMe/fork/enums/LockedSection;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 181
    invoke-virtual {v0}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method private isOnline()Z
    .locals 5

    .line 703
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 706
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_3

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 709
    :cond_1
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gtz v0, :cond_2

    .line 710
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

    .line 714
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

.method private synthetic lambda$createStatusDrawableAnimator$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 4706
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableProgress:F

    .line 4707
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onDraw$2()V
    .locals 1

    .line 3795
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->delegate:Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;

    if-eqz v0, :cond_0

    .line 3796
    invoke-interface {v0, p0}, Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;->onButtonClicked(Lorg/telegram/ui/Cells/DialogCell;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onDraw$3()V
    .locals 1

    .line 3800
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->delegate:Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;

    if-eqz v0, :cond_0

    .line 3801
    invoke-interface {v0, p0}, Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;->onButtonLongPress(Lorg/telegram/ui/Cells/DialogCell;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$update$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 3146
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->countChangeProgress:F

    .line 3147
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method

.method private synthetic lambda$update$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 3208
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    .line 3209
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method

.method private setThumb(ILorg/telegram/messenger/MessageObject;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v11, p2

    .line 4984
    iget-object v1, v11, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    .line 4985
    iget-object v2, v11, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    .line 4986
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isStoryMedia()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4987
    iget-object v3, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v3, :cond_1

    .line 4988
    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v3, :cond_1

    .line 4989
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_0

    .line 4990
    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    move-object v2, v4

    goto :goto_0

    .line 4992
    :cond_0
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v3, :cond_2

    .line 4993
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    move-object v2, v3

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/16 v3, 0x28

    .line 5001
    invoke-static {v1, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 5002
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v4

    invoke-static {v1, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    if-ne v3, v1, :cond_3

    const/4 v1, 0x0

    :cond_3
    if-eqz v1, :cond_4

    .line 5007
    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v4

    iget-object v5, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DownloadController;->canDownloadMedia(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    move-object v1, v3

    :cond_5
    if-eqz v3, :cond_d

    .line 5012
    iget-boolean v4, v0, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    const/4 v12, 0x0

    const/4 v5, 0x1

    if-nez v4, :cond_7

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    move v4, v12

    goto :goto_2

    :cond_7
    :goto_1
    move v4, v5

    :goto_2
    iput-boolean v4, v0, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    .line 5013
    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    const/4 v6, 0x3

    if-ge v4, v6, :cond_d

    add-int/2addr v4, v5

    .line 5014
    iput v4, v0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    .line 5015
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPlay:[Z

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result v6

    if-nez v6, :cond_9

    move v6, v5

    goto :goto_3

    :cond_9
    move v6, v12

    :goto_3
    aput-boolean v6, v4, p1

    .line 5016
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->drawSpoiler:[Z

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result v6

    aput-boolean v6, v4, p1

    .line 5017
    iget v4, v11, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v4, v5, :cond_a

    if-eqz v1, :cond_a

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    goto :goto_4

    :cond_a
    move v4, v12

    .line 5018
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "5_5_b"

    goto :goto_5

    :cond_b
    const-string v5, "20_20"

    .line 5019
    :goto_5
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v6, v6, p1

    invoke-static {v1, v2}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    invoke-static {v3, v2}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    int-to-long v9, v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v5

    move-object v4, v8

    move-wide v6, v9

    move-object v8, v13

    move-object/from16 v9, p2

    move v10, v14

    invoke-virtual/range {v1 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 5020
    iget-object v1, v0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v1, v1, p1

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0x12

    goto :goto_6

    :cond_c
    const/4 v2, 0x2

    :goto_6
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 5021
    iput-boolean v12, v0, Lorg/telegram/ui/Cells/DialogCell;->needEmoji:Z

    :cond_d
    return-void
.end method

.method private updateThumbsPosition()V
    .locals 7

    .line 2609
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v0, :cond_6

    .line 2610
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    .line 2611
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

    .line 2616
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2617
    instance-of v3, v2, Landroid/text/Spanned;

    if-eqz v3, :cond_6

    .line 2618
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

    .line 2619
    array-length v5, v3

    if-lez v5, :cond_5

    .line 2620
    check-cast v2, Landroid/text/Spanned;

    aget-object v3, v3, v6

    invoke-interface {v2, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3

    move v2, v6

    .line 2625
    :cond_3
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v3

    const/4 v5, 0x1

    add-int/2addr v2, v5

    .line 2626
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 2627
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    if-eqz v0, :cond_4

    .line 2628
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->drawForwardIcon:Z

    if-nez v2, :cond_4

    .line 2629
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 2631
    :cond_4
    :goto_2
    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-ge v6, v2, :cond_6

    .line 2632
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v2, v2, v6

    add-int v3, v1, v0

    iget v4, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    add-int/lit8 v4, v4, 0x2

    mul-int/2addr v4, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageX(F)V

    .line 2633
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImageSeen:[Z

    aput-boolean v5, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    move v0, v6

    :goto_3
    if-ge v0, v4, :cond_6

    .line 2637
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImageSeen:[Z

    aput-boolean v6, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    .line 2642
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public animateArchiveAvatar()V
    .locals 2

    .line 2770
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarDrawable;->getAvatarType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2773
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatar:Z

    const/4 v0, 0x0

    .line 2774
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatarProgress:F

    .line 2775
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 2776
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 2777
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method

.method public buildLayout()V
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout(Z)V

    return-void
.end method

.method public buildLayout(Z)V
    .locals 50

    move-object/from16 v7, p0

    .line 1014
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->isTransitionSupport:Z

    if-eqz v0, :cond_0

    return-void

    .line 1017
    :cond_0
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 1018
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->update()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1019
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_1

    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v0, :cond_1

    return-void

    .line 1024
    :cond_1
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    const/16 v1, 0x10

    const/16 v2, 0x11

    const/16 v3, 0x12

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v0, :cond_3

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1034
    :cond_2
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v9

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1035
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameEncryptedPaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v9

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1036
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1037
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1039
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    aget-object v4, v0, v9

    aget-object v0, v0, v9

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message:I

    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    iput v5, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 1040
    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    const/16 v0, 0x13

    .line 1041
    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    goto :goto_1

    .line 1025
    :cond_3
    :goto_0
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1026
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameEncryptedPaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1027
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v8

    const/16 v4, 0xf

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1028
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v8

    const/16 v4, 0xf

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1030
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    aget-object v4, v0, v8

    aget-object v0, v0, v8

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message_threeLines:I

    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    iput v5, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 1031
    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    .line 1032
    iput v3, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    .line 1044
    :goto_1
    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderDialogsCount:I

    .line 1054
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_5

    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-nez v0, :cond_4

    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_5

    .line 1055
    :cond_4
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v4, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result v6

    invoke-virtual {v0, v4, v5, v6, v8}, Lorg/telegram/messenger/MessagesController;->getPrintingString(JIZ)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v10

    .line 1057
    :goto_2
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v4, v4, v5

    iput-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1060
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    .line 1061
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    .line 1062
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    .line 1063
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumStatusEnabled:Z

    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumBadgeEnabled:Z

    .line 1064
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawForwardIcon:Z

    .line 1065
    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    .line 1066
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawPinBackground:Z

    .line 1067
    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    .line 1068
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    .line 1069
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 1071
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->useMeForMyMessages:Z

    if-nez v4, :cond_6

    move v4, v8

    goto :goto_3

    :cond_6
    move v4, v9

    :goto_3
    const/4 v5, -0x1

    .line 1073
    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    .line 1075
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1076
    iput-object v10, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    .line 1080
    :cond_7
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v12, 0x4

    const/4 v13, 0x2

    if-lt v6, v3, :cond_b

    .line 1081
    iget-boolean v6, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v6, :cond_8

    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v6, :cond_a

    :cond_8
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v6, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_4

    .line 1088
    :cond_9
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    move v6, v13

    goto :goto_6

    .line 1084
    :cond_a
    :goto_4
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    move v6, v8

    goto :goto_6

    .line 1091
    :cond_b
    iget-boolean v6, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v6, :cond_c

    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v6, :cond_e

    :cond_c
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v6, :cond_e

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_5

    .line 1098
    :cond_d
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    move v6, v12

    goto :goto_6

    .line 1094
    :cond_e
    :goto_5
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    const/4 v6, 0x3

    .line 1102
    :goto_6
    iget-object v14, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v14, :cond_f

    .line 1103
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->updateTranslation()Z

    .line 1105
    :cond_f
    iget-object v14, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v14, :cond_10

    iget-object v14, v14, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_7

    :cond_10
    move-object v14, v10

    .line 1106
    :goto_7
    instance-of v15, v14, Landroid/text/Spannable;

    if-eqz v15, :cond_13

    .line 1107
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15, v14}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1108
    invoke-interface {v15}, Landroid/text/Spannable;->length()I

    move-result v14

    const-class v5, Lorg/telegram/ui/Components/URLSpanNoUnderlineBold;

    invoke-interface {v15, v9, v14, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/telegram/ui/Components/URLSpanNoUnderlineBold;

    array-length v14, v5

    move v1, v9

    :goto_8
    if-ge v1, v14, :cond_11

    aget-object v2, v5, v1

    .line 1109
    invoke-interface {v15, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x11

    goto :goto_8

    .line 1110
    :cond_11
    invoke-interface {v15}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    invoke-interface {v15, v9, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/URLSpanNoUnderline;

    array-length v2, v1

    move v5, v9

    :goto_9
    if-ge v5, v2, :cond_12

    aget-object v14, v1, v5

    .line 1111
    invoke-interface {v15, v14}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_12
    move-object v14, v15

    .line 1114
    :cond_13
    iput-object v14, v7, Lorg/telegram/ui/Cells/DialogCell;->lastMessageString:Ljava/lang/CharSequence;

    .line 1116
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    const/high16 v2, 0x41480000    # 12.5f

    const/16 v15, 0xa

    const/16 v18, 0x16

    const/16 v11, 0x21

    const/16 v19, 0x8

    const-string v20, ""

    const/16 v21, 0x14

    const/16 v22, 0x6

    if-eqz v1, :cond_2a

    .line 1117
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    if-ne v0, v13, :cond_19

    .line 1118
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    .line 1120
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v0, :cond_14

    const/high16 v0, 0x418c0000    # 17.5f

    .line 1121
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1122
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1123
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_d

    .line 1125
    :cond_14
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_17

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_15

    goto :goto_a

    :cond_15
    const/high16 v0, 0x41840000    # 16.5f

    .line 1135
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1136
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_16

    .line 1137
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/2addr v0, v12

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1138
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_d

    .line 1140
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/2addr v1, v12

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1141
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_d

    .line 1126
    :cond_17
    :goto_a
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1127
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_18

    .line 1128
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1129
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/2addr v0, v15

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_d

    .line 1131
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v1, v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1132
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_d

    .line 1145
    :cond_19
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->forbidVerified:Z

    if-nez v0, :cond_1a

    iget-boolean v0, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    if-eqz v0, :cond_1a

    move v0, v8

    goto :goto_b

    :cond_1a
    move v0, v9

    :goto_b
    iput-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    .line 1147
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v0, :cond_1b

    .line 1148
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/2addr v0, v13

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_d

    .line 1150
    :cond_1b
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_1e

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_1c

    goto :goto_c

    .line 1157
    :cond_1c
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_1d

    .line 1158
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/2addr v0, v12

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_d

    .line 1160
    :cond_1d
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_d

    .line 1151
    :cond_1e
    :goto_c
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_1f

    .line 1152
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_d

    .line 1154
    :cond_1f
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 1165
    :goto_d
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    if-ne v1, v8, :cond_24

    .line 1166
    sget v0, Lorg/telegram/messenger/R$string;->FromYou:I

    const-string v1, "FromYou"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1169
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    if-eqz v4, :cond_20

    .line 1170
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v4, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v1, v1, v4

    iput-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1171
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-direct {v7, v6, v1, v10}, Lorg/telegram/ui/Cells/DialogCell;->formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 1172
    new-instance v4, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chats_attachMessage:I

    iget-object v14, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v6, v14}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v4, v9, v6, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_f

    .line 1174
    :cond_20
    iget-object v1, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 1175
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v11, 0x96

    if-le v4, v11, :cond_21

    .line 1176
    invoke-virtual {v1, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1178
    :cond_21
    iget-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v4, :cond_23

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v4, :cond_22

    goto :goto_e

    :cond_22
    const/16 v4, 0x20

    .line 1181
    invoke-virtual {v1, v15, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v6, v1, v0}, Lorg/telegram/ui/Cells/DialogCell;->formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    goto :goto_f

    .line 1179
    :cond_23
    :goto_e
    invoke-direct {v7, v6, v1, v0}, Lorg/telegram/ui/Cells/DialogCell;->formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 1184
    :goto_f
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v1, v4, v6, v9}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    move v4, v9

    goto :goto_10

    .line 1186
    :cond_24
    iget-object v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 1187
    iget-boolean v0, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    if-eqz v0, :cond_25

    .line 1188
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v4, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v0, v0, v4

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    :cond_25
    move v4, v8

    move-object v0, v10

    .line 1192
    :goto_10
    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v6, v6, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    int-to-long v5, v6

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v5

    .line 1194
    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v6, v6, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    if-eqz v6, :cond_26

    .line 1195
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    new-array v11, v8, [Ljava/lang/Object;

    .line 1196
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v9

    const-string v6, "%d"

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_11

    .line 1198
    :cond_26
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    move-object v6, v10

    .line 1201
    :goto_11
    iget-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v14, v11, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:I

    if-nez v14, :cond_27

    .line 1202
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1203
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1204
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    goto :goto_12

    :cond_27
    if-ne v14, v13, :cond_28

    .line 1206
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1207
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1208
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    goto :goto_12

    :cond_28
    if-ne v14, v8, :cond_29

    .line 1210
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1211
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1212
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    goto :goto_12

    .line 1214
    :cond_29
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1215
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1216
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1219
    :goto_12
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    .line 1220
    iget-object v11, v11, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    move-object v2, v1

    move-object v9, v5

    move-object v5, v6

    move-object v14, v10

    move-object v15, v14

    move-object/from16 v3, v20

    const/4 v6, -0x1

    move-object v1, v0

    :goto_13
    move-object v0, v11

    goto/16 :goto_63

    .line 1223
    :cond_2a
    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v1, :cond_2b

    .line 1224
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/2addr v1, v13

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_15

    .line 1226
    :cond_2b
    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v1, :cond_2e

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v1, :cond_2c

    goto :goto_14

    .line 1233
    :cond_2c
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_2d

    .line 1234
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/2addr v1, v12

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_15

    .line 1236
    :cond_2d
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_15

    .line 1227
    :cond_2e
    :goto_14
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_2f

    .line 1228
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v1, v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_15

    .line 1230
    :cond_2f
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 1240
    :goto_15
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v1, :cond_35

    .line 1241
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v1, :cond_41

    .line 1242
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    .line 1244
    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v1, :cond_30

    const/high16 v1, 0x418c0000    # 17.5f

    .line 1245
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1246
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1247
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v1, v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v1, v5

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_1b

    .line 1249
    :cond_30
    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v1, :cond_33

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v1, :cond_31

    goto :goto_16

    :cond_31
    const/high16 v1, 0x41840000    # 16.5f

    .line 1259
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1260
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_32

    .line 1261
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/2addr v1, v12

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1262
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v1, v5

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_1b

    .line 1264
    :cond_32
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/2addr v5, v12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v1, v5

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v1, v5

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1265
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_1b

    .line 1250
    :cond_33
    :goto_16
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1251
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_34

    .line 1252
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v1, v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1253
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/2addr v1, v15

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v1, v5

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_1b

    .line 1255
    :cond_34
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v5, v5, 0x6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v1, v5

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v1, v5

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1256
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_1b

    .line 1270
    :cond_35
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v1, :cond_41

    .line 1271
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_39

    .line 1272
    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->scam:Z

    if-eqz v5, :cond_36

    .line 1273
    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    .line 1274
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ScamDrawable;->checkText()V

    goto/16 :goto_1b

    .line 1275
    :cond_36
    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->fake:Z

    if-eqz v5, :cond_37

    .line 1276
    iput v13, v7, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    .line 1277
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ScamDrawable;->checkText()V

    goto/16 :goto_1b

    .line 1279
    :cond_37
    iget-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->forbidVerified:Z

    if-nez v5, :cond_38

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    if-eqz v1, :cond_38

    move v1, v8

    goto :goto_17

    :cond_38
    move v1, v9

    :goto_17
    iput-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    goto/16 :goto_1b

    .line 1281
    :cond_39
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_41

    .line 1282
    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$User;->scam:Z

    if-eqz v5, :cond_3a

    .line 1283
    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    .line 1284
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ScamDrawable;->checkText()V

    goto :goto_19

    .line 1285
    :cond_3a
    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$User;->fake:Z

    if-eqz v5, :cond_3b

    .line 1286
    iput v13, v7, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    .line 1287
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ScamDrawable;->checkText()V

    goto :goto_19

    .line 1289
    :cond_3b
    iget-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->forbidVerified:Z

    if-nez v5, :cond_3c

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-eqz v1, :cond_3c

    move v1, v8

    goto :goto_18

    :cond_3c
    move v1, v9

    :goto_18
    iput-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    .line 1292
    :goto_19
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v1}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled()Z

    move-result v1

    iput-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumBadgeEnabled:Z

    .line 1293
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v1}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled()Z

    move-result v1

    iput-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumStatusEnabled:Z

    .line 1295
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MessagesController;->isPremiumUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v2, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v1, v2, v12

    if-eqz v1, :cond_3e

    const-wide/16 v1, 0x0

    cmp-long v1, v12, v1

    if-eqz v1, :cond_3e

    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumBadgeEnabled:Z

    if-nez v1, :cond_3d

    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumStatusEnabled:Z

    if-eqz v1, :cond_3e

    :cond_3d
    move v1, v8

    goto :goto_1a

    :cond_3e
    move v1, v9

    :goto_1a
    iput-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-eqz v1, :cond_41

    .line 1297
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/Long;

    move-result-object v1

    .line 1298
    iget-object v2, v7, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    iput-boolean v3, v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->center:Z

    .line 1299
    iget-boolean v3, v7, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumStatusEnabled:Z

    if-eqz v3, :cond_3f

    if-eqz v1, :cond_3f

    .line 1300
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 1301
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v2, v12, v13, v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    goto :goto_1b

    .line 1303
    :cond_3f
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 1305
    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumBadgeEnabled:Z

    if-nez v1, :cond_40

    .line 1306
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 1307
    invoke-virtual {v2, v10, v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_1b

    .line 1309
    :cond_40
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarDrawableMini:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1, v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 1316
    :cond_41
    :goto_1b
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    if-nez v1, :cond_42

    .line 1317
    iget-object v2, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_42

    .line 1318
    iget-object v1, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 1321
    :cond_42
    iget-boolean v2, v7, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v2, :cond_43

    .line 1322
    iget v2, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-wide v12, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result v3

    invoke-virtual {v2, v12, v13, v3}, Lorg/telegram/messenger/MediaDataController;->getDraft(JI)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v2

    iput-object v2, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v2, :cond_45

    .line 1323
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1324
    iput-object v10, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    goto :goto_1c

    .line 1326
    :cond_43
    iget-boolean v2, v7, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v2, :cond_44

    .line 1327
    iget v2, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-wide v12, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v2, v12, v13, v9}, Lorg/telegram/messenger/MediaDataController;->getDraft(JI)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v2

    iput-object v2, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    goto :goto_1c

    .line 1329
    :cond_44
    iput-object v10, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    .line 1332
    :cond_45
    :goto_1c
    iget-object v2, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v2, :cond_47

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    if-eqz v2, :cond_4a

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->reply_to_msg_id:I

    if-eqz v2, :cond_4a

    :cond_46
    iget-object v2, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    if-le v1, v2, :cond_47

    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-nez v1, :cond_4a

    :cond_47
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1333
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_48

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_48

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz v1, :cond_4a

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-eqz v1, :cond_4a

    :cond_48
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_49

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v2, :cond_4a

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-nez v2, :cond_4a

    :cond_49
    iget-boolean v2, v7, Lorg/telegram/ui/Cells/DialogCell;->forbidDraft:Z

    if-nez v2, :cond_4a

    .line 1334
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v1, :cond_4b

    .line 1335
    :cond_4a
    iput-object v10, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    .line 1338
    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 1339
    iput-object v10, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    .line 1340
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->needEmoji:Z

    .line 1341
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->updateMessageThumbs()V

    .line 1342
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMessageNameString()Ljava/lang/String;

    move-result-object v0

    .line 1343
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->formatTopicsNames()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1344
    iget-object v2, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_4c

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1d

    :cond_4c
    move-object v2, v10

    .line 1345
    :goto_1d
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_4d

    invoke-virtual {v7, v6, v2, v0, v8}, Lorg/telegram/ui/Cells/DialogCell;->getMessageStringFormatted(ILjava/lang/String;Ljava/lang/CharSequence;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto :goto_1e

    :cond_4d
    move-object/from16 v2, v20

    .line 1346
    :goto_1e
    iget-boolean v3, v7, Lorg/telegram/ui/Cells/DialogCell;->applyName:Z

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ltz v3, :cond_4e

    if-eqz v0, :cond_4e

    .line 1347
    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 1348
    new-instance v3, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chats_name:I

    iget-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v6, v11}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v11

    add-int/2addr v11, v8

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v2, v3, v9, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1351
    :cond_4e
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v3, v3, v6

    iput-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    move v9, v8

    move-object/from16 v3, v20

    const/4 v5, -0x1

    goto/16 :goto_4a

    :cond_4f
    if-eqz v0, :cond_53

    .line 1354
    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    .line 1355
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result v12

    invoke-virtual {v1, v2, v3, v12}, Lorg/telegram/messenger/MessagesController;->getPrintingStringType(JI)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    .line 1356
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getChatStatusDrawable(I)Lorg/telegram/ui/Components/StatusDrawable;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 1359
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1f

    :cond_50
    move v1, v9

    .line 1361
    :goto_1f
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v3, "..."

    .line 1363
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array/range {v20 .. v20}, [Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v3, v12}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1364
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    const/4 v12, 0x5

    if-ne v3, v12, :cond_51

    .line 1365
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v12, "**oo**"

    invoke-virtual {v3, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_20

    :cond_51
    const/4 v3, -0x1

    :goto_20
    if-ltz v3, :cond_52

    .line 1368
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    iget v12, v7, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getChatStatusDrawable(I)Lorg/telegram/ui/Components/StatusDrawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    invoke-direct {v1, v12}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    add-int/lit8 v12, v3, 0x6

    invoke-virtual {v0, v1, v3, v12, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_21

    :cond_52
    const-string v12, " "

    .line 1370
    invoke-virtual {v2, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    new-instance v12, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    invoke-direct {v12, v1}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    invoke-virtual {v0, v12, v9, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_21
    move v0, v9

    goto :goto_22

    .line 1376
    :cond_53
    iput-object v10, v7, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    const/4 v0, -0x1

    .line 1377
    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    move v0, v8

    move-object/from16 v2, v20

    const/4 v3, -0x1

    .line 1379
    :goto_22
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v1, :cond_5b

    .line 1381
    sget v0, Lorg/telegram/messenger/R$string;->Draft:I

    const-string v1, "Draft"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1382
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1383
    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v1, :cond_55

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v1, :cond_54

    goto :goto_24

    .line 1386
    :cond_54
    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 1387
    new-instance v6, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chats_draft:I

    iget-object v13, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v12, v13}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-virtual {v1, v6, v9, v12, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_23
    move v5, v3

    goto :goto_25

    :cond_55
    :goto_24
    move v5, v3

    move-object/from16 v1, v20

    :goto_25
    move-object v3, v2

    move-object v2, v10

    goto/16 :goto_4a

    .line 1391
    :cond_56
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    .line 1392
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x96

    if-le v12, v13, :cond_57

    .line 1393
    invoke-virtual {v1, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1395
    :cond_57
    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1396
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    const/16 v13, 0x108

    invoke-static {v1, v12, v13}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Lorg/telegram/tgnet/TLRPC$DraftMessage;Landroid/text/Spannable;I)V

    .line 1397
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v1, :cond_59

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$DraftMessage;->entities:Ljava/util/ArrayList;

    if-eqz v1, :cond_59

    .line 1398
    iget-object v13, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    if-nez v13, :cond_58

    move-object v13, v10

    goto :goto_26

    :cond_58
    invoke-virtual {v13}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v13

    :goto_26
    invoke-static {v1, v12, v13}, Lorg/telegram/messenger/MediaDataController;->addAnimatedEmojiSpans(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 1401
    :cond_59
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v7, v6, v1, v0}, Lorg/telegram/ui/Cells/DialogCell;->formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 1402
    iget-boolean v6, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v6, :cond_5a

    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-nez v6, :cond_5a

    .line 1403
    new-instance v6, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chats_draft:I

    iget-object v13, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v12, v13}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v12

    add-int/2addr v12, v8

    invoke-virtual {v1, v6, v9, v12, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1405
    :cond_5a
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v11, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v6, v6, v11

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static {v1, v6, v11, v9}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_23

    .line 1408
    :cond_5b
    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->clearingDialog:Z

    if-eqz v1, :cond_5c

    .line 1409
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v1, v1, v6

    iput-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1410
    sget v1, Lorg/telegram/messenger/R$string;->HistoryCleared:I

    const-string v6, "HistoryCleared"

    invoke-static {v6, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_27
    move v9, v0

    move v5, v3

    move-object v0, v10

    :goto_28
    move-object v3, v2

    :goto_29
    move-object v2, v0

    goto/16 :goto_4a

    .line 1411
    :cond_5c
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_65

    .line 1412
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v1, :cond_5d

    .line 1413
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->formatArchivedDialogNames()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_27

    .line 1414
    :cond_5d
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v1, :cond_62

    .line 1415
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v11, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v6, v6, v11

    iput-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1416
    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;

    if-eqz v6, :cond_5e

    .line 1417
    sget v1, Lorg/telegram/messenger/R$string;->EncryptionProcessing:I

    const-string v6, "EncryptionProcessing"

    invoke-static {v6, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_27

    .line 1418
    :cond_5e
    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;

    if-eqz v6, :cond_5f

    .line 1419
    sget v1, Lorg/telegram/messenger/R$string;->AwaitingEncryption:I

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v11}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v9

    const-string v11, "AwaitingEncryption"

    invoke-static {v11, v1, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_27

    .line 1420
    :cond_5f
    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;

    if-eqz v6, :cond_60

    .line 1421
    sget v1, Lorg/telegram/messenger/R$string;->EncryptionRejected:I

    const-string v6, "EncryptionRejected"

    invoke-static {v6, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_27

    .line 1422
    :cond_60
    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v6, :cond_64

    .line 1423
    iget-wide v11, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:J

    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v13

    cmp-long v1, v11, v13

    if-nez v1, :cond_61

    .line 1424
    sget v1, Lorg/telegram/messenger/R$string;->EncryptedChatStartedOutgoing:I

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v11}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v9

    const-string v11, "EncryptedChatStartedOutgoing"

    invoke-static {v11, v1, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_27

    .line 1426
    :cond_61
    sget v1, Lorg/telegram/messenger/R$string;->EncryptedChatStartedIncoming:I

    const-string v6, "EncryptedChatStartedIncoming"

    invoke-static {v6, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_27

    .line 1430
    :cond_62
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v6, 0x3

    if-ne v1, v6, :cond_64

    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 1431
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    if-eqz v1, :cond_63

    iget-boolean v1, v1, Lorg/telegram/ui/DialogsActivity;->isQuote:Z

    if-eqz v1, :cond_63

    sget v1, Lorg/telegram/messenger/R$string;->SavedMessagesInfoQuote:I

    goto :goto_2a

    :cond_63
    sget v1, Lorg/telegram/messenger/R$string;->SavedMessagesInfo:I

    :goto_2a
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v5, v3

    move v4, v9

    move v8, v4

    move v9, v0

    move-object v3, v2

    move-object v0, v10

    goto/16 :goto_29

    :cond_64
    move v9, v0

    move v5, v3

    move-object v0, v10

    move-object/from16 v1, v20

    goto/16 :goto_28

    .line 1439
    :cond_65
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 1442
    iget-object v12, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v12

    .line 1443
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v23

    if-eqz v23, :cond_66

    .line 1444
    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-object v5, v10

    goto :goto_2b

    .line 1446
    :cond_66
    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    neg-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v12}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    .line 1448
    :goto_2b
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount2:Z

    .line 1450
    iget v12, v7, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    if-nez v12, :cond_69

    iget-wide v12, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const-wide/16 v23, 0x0

    cmp-long v12, v12, v23

    if-lez v12, :cond_69

    iget-object v12, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v12

    if-eqz v12, :cond_69

    iget-object v12, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v12, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    if-eqz v12, :cond_69

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    if-eqz v12, :cond_69

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_69

    iget v12, v7, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-lez v12, :cond_69

    .line 1451
    iget-object v12, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v12, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    .line 1452
    iget-boolean v13, v12, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->unread:Z

    if-eqz v13, :cond_69

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v10, v13, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const-wide/16 v25, 0x0

    cmp-long v13, v10, v25

    if-eqz v13, :cond_69

    iget v13, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v13

    iget-wide v8, v13, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v8, v10, v8

    if-eqz v8, :cond_69

    .line 1454
    iget-object v8, v12, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v8}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v8

    .line 1455
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v9, v9, v10

    iput-object v9, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1456
    iget-object v9, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v9, :cond_67

    .line 1457
    sget v8, Lorg/telegram/messenger/R$string;->ReactionInDialog:I

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const-string v9, "ReactionInDialog"

    invoke-static {v9, v8, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2d

    :cond_67
    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 1459
    sget v9, Lorg/telegram/messenger/R$string;->ReactionInDialog:I

    new-array v11, v10, [Ljava/lang/Object;

    const-string v10, "**reaction**"

    aput-object v10, v11, v12

    const-string v10, "ReactionInDialog"

    invoke-static {v10, v9, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "**reaction**"

    .line 1460
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const-string v11, "**reaction**"

    const-string v12, "d"

    .line 1461
    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 1463
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1464
    new-instance v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v12, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    iget-object v8, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    if-nez v8, :cond_68

    const/4 v8, 0x0

    goto :goto_2c

    :cond_68
    invoke-virtual {v8}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    :goto_2c
    invoke-direct {v9, v12, v13, v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    add-int/lit8 v8, v10, 0x1

    const/4 v12, 0x0

    invoke-virtual {v11, v9, v10, v8, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v8, v11

    const/4 v10, 0x1

    goto :goto_2d

    :cond_69
    move-object/from16 v8, v20

    const/4 v10, 0x0

    :goto_2d
    if-eqz v10, :cond_6b

    move-object v1, v8

    :cond_6a
    :goto_2e
    const/4 v5, 0x1

    :goto_2f
    const/4 v9, 0x0

    goto/16 :goto_48

    .line 1472
    :cond_6b
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_73

    .line 1473
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_72

    .line 1474
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_6e

    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v4, :cond_6e

    .line 1475
    iget v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v4, :cond_6c

    const-string v1, "Subscribers"

    .line 1476
    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_30

    .line 1478
    :cond_6c
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 1479
    sget v1, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    const-string v4, "ChannelPrivate"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_30

    .line 1481
    :cond_6d
    sget v1, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    const-string v4, "ChannelPublic"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_30

    .line 1485
    :cond_6e
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v4, :cond_6f

    const-string v1, "Members"

    .line 1486
    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_30

    .line 1488
    :cond_6f
    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    if-eqz v4, :cond_70

    .line 1489
    sget v1, Lorg/telegram/messenger/R$string;->MegaLocation:I

    const-string v4, "MegaLocation"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_30

    .line 1490
    :cond_70
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_71

    .line 1491
    sget v1, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    const-string v4, "MegaPrivate"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_30

    .line 1493
    :cond_71
    sget v1, Lorg/telegram/messenger/R$string;->MegaPublic:I

    const-string v4, "MegaPublic"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_30

    :cond_72
    move-object/from16 v1, v20

    :goto_30
    const/4 v4, 0x0

    .line 1500
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount2:Z

    :goto_31
    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_2f

    :cond_73
    const/4 v9, 0x3

    if-ne v8, v9, :cond_75

    .line 1503
    iget-object v8, v7, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-eqz v8, :cond_75

    .line 1504
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    if-eqz v1, :cond_74

    iget-boolean v1, v1, Lorg/telegram/ui/DialogsActivity;->isQuote:Z

    if-eqz v1, :cond_74

    sget v1, Lorg/telegram/messenger/R$string;->SavedMessagesInfoQuote:I

    goto :goto_32

    :cond_74
    sget v1, Lorg/telegram/messenger/R$string;->SavedMessagesInfo:I

    :goto_32
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_31

    .line 1507
    :cond_75
    iget-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v8, :cond_77

    sget-boolean v8, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-nez v8, :cond_77

    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v8, :cond_77

    .line 1509
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isContentHidden()Z

    move-result v0

    if-eqz v0, :cond_76

    sget v0, Lorg/telegram/messenger/R$string;->archive_content_is_hidden:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    :cond_76
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->formatArchivedDialogNames()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_33
    move-object v1, v0

    const/4 v0, 0x0

    goto/16 :goto_2e

    .line 1510
    :cond_77
    iget-object v8, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v9, :cond_7b

    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->isTopicActionMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v8

    if-eqz v8, :cond_78

    iget-object v8, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    if-eqz v8, :cond_7b

    .line 1511
    :cond_78
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_79

    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom;

    if-eqz v1, :cond_79

    move-object/from16 v14, v20

    const/4 v4, 0x0

    .line 1517
    :cond_79
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v1, v1, v5

    iput-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1518
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v5, 0x15

    if-ne v1, v5, :cond_7a

    .line 1519
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->updateMessageThumbs()V

    .line 1520
    invoke-direct {v7, v14}, Lorg/telegram/ui/Cells/DialogCell;->applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_2e

    :cond_7a
    move-object v1, v14

    goto/16 :goto_2e

    :cond_7b
    const/4 v8, 0x1

    .line 1523
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->needEmoji:Z

    .line 1524
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->updateMessageThumbs()V

    .line 1525
    iget-object v8, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v8, :cond_87

    iget-wide v9, v8, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_87

    if-nez v5, :cond_87

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_7c

    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_87

    :cond_7c
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-static {v5}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->isTopicCreateMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v5

    if-nez v5, :cond_87

    .line 1526
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMessageNameString()Ljava/lang/String;

    move-result-object v0

    .line 1527
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v5, :cond_7f

    iget-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v5, :cond_7f

    iget-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->useFromUserAsAvatar:Z

    if-nez v5, :cond_7f

    .line 1528
    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v5

    iget-object v8, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v9, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v10, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v8, v9, v10}, Lorg/telegram/messenger/TopicsController;->getTopicIconName(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/MessageObject;Landroid/text/TextPaint;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1529
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7f

    .line 1530
    new-instance v8, Landroid/text/SpannableStringBuilder;

    const-string v9, "-"

    invoke-direct {v8, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1531
    new-instance v9, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v11, Lorg/telegram/messenger/R$drawable;->msg_mini_forumarrow:I

    invoke-static {v10, v11}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 1532
    iget-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v10, :cond_7e

    sget-boolean v10, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v10, :cond_7d

    goto :goto_34

    :cond_7d
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessage:I

    goto :goto_35

    :cond_7e
    :goto_34
    const/4 v10, -0x1

    :goto_35
    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/ColoredImageSpan;->setColorKey(I)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1533
    invoke-virtual {v8, v9, v11, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1534
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1535
    invoke-virtual {v9, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_36

    :cond_7f
    move-object v9, v0

    :goto_36
    const/4 v5, 0x0

    .line 1540
    invoke-virtual {v7, v6, v1, v9, v5}, Lorg/telegram/ui/Cells/DialogCell;->getMessageStringFormatted(ILjava/lang/String;Ljava/lang/CharSequence;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 1543
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->useFromUserAsAvatar:Z

    if-nez v0, :cond_82

    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_80

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_81

    :cond_80
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_82

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_82

    .line 1545
    :cond_81
    :try_start_0
    new-instance v0, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessage:I

    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v5, v6}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x1

    add-int/2addr v5, v6

    const/16 v6, 0x21

    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v1, v0, v8, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_38

    :catch_0
    move-exception v0

    goto :goto_37

    :catch_1
    move-exception v0

    const/4 v5, 0x0

    .line 1548
    :goto_37
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_38

    :cond_82
    const/4 v5, 0x0

    .line 1551
    :goto_38
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const/4 v8, 0x0

    invoke-static {v1, v0, v6, v8}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1552
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 1553
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1, v6}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_83

    move-object v0, v1

    .line 1558
    :cond_83
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v1, :cond_86

    .line 1559
    instance-of v1, v0, Landroid/text/SpannableStringBuilder;

    if-nez v1, :cond_84

    .line 1560
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 1563
    :cond_84
    move-object v1, v0

    check-cast v1, Landroid/text/SpannableStringBuilder;

    .line 1564
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-lt v5, v6, :cond_85

    const-string v5, " "

    .line 1565
    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1566
    new-instance v5, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v10, 0x2

    add-int/2addr v8, v10

    mul-int/2addr v6, v8

    sub-int/2addr v6, v10

    const/4 v8, 0x5

    add-int/2addr v6, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/16 v10, 0x21

    invoke-virtual {v1, v5, v6, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_39

    :cond_85
    const-string v6, " "

    .line 1568
    invoke-virtual {v1, v5, v6}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1569
    new-instance v6, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v11, 0x2

    add-int/2addr v10, v11

    mul-int/2addr v8, v10

    sub-int/2addr v8, v11

    const/4 v10, 0x5

    add-int/2addr v8, v10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-direct {v6, v8}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    add-int/lit8 v8, v5, 0x1

    const/16 v10, 0x21

    invoke-virtual {v1, v6, v5, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_86
    :goto_39
    move-object v1, v0

    const/4 v0, 0x0

    const/4 v5, 0x1

    goto/16 :goto_48

    .line 1573
    :cond_87
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_88

    goto/16 :goto_45

    .line 1575
    :cond_88
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isTopicActionMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 1576
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v1, Lorg/telegram/messenger/MessageObject;->messageTextShort:Ljava/lang/CharSequence;

    if-eqz v5, :cond_89

    iget-object v6, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    if-eqz v6, :cond_8a

    iget-boolean v6, v7, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v6, :cond_89

    goto :goto_3a

    .line 1579
    :cond_89
    iget-object v5, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 1581
    :cond_8a
    :goto_3a
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->topicIconDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    aget-object v1, v1, v6

    instance-of v1, v1, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    if-eqz v1, :cond_8b

    .line 1582
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v1

    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    neg-long v8, v8

    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v10, 0x1

    invoke-static {v6, v10}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v6

    invoke-virtual {v1, v8, v9, v6}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v1

    if-eqz v1, :cond_8b

    .line 1584
    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->topicIconDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    aget-object v6, v6, v8

    check-cast v6, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_color:I

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;->setColor(I)V

    :cond_8b
    move-object v1, v5

    goto/16 :goto_45

    .line 1587
    :cond_8c
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v5, :cond_8d

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-eqz v5, :cond_8d

    iget v5, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v5, :cond_8d

    .line 1588
    sget v1, Lorg/telegram/messenger/R$string;->AttachPhotoExpired:I

    const-string v5, "AttachPhotoExpired"

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_45

    .line 1589
    :cond_8d
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v5, :cond_8f

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    if-nez v6, :cond_8e

    if-nez v5, :cond_8f

    :cond_8e
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v1, :cond_8f

    .line 1590
    sget v1, Lorg/telegram/messenger/R$string;->AttachVideoExpired:I

    const-string v5, "AttachVideoExpired"

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_45

    .line 1591
    :cond_8f
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getCaptionMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_9b

    .line 1592
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getCaptionMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 1594
    iget-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->needEmoji:Z

    if-nez v5, :cond_90

    move-object/from16 v5, v20

    goto :goto_3b

    .line 1596
    :cond_90
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_91

    const-string v5, "\ud83d\udcf9 "

    goto :goto_3b

    .line 1598
    :cond_91
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v5

    if-eqz v5, :cond_92

    const-string v5, "\ud83c\udfa4 "

    goto :goto_3b

    .line 1600
    :cond_92
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v5

    if-eqz v5, :cond_93

    const-string v5, "\ud83c\udfa7 "

    goto :goto_3b

    .line 1602
    :cond_93
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v5

    if-eqz v5, :cond_94

    const-string v5, "\ud83d\uddbc "

    goto :goto_3b

    :cond_94
    const-string v5, "\ud83d\udcce "

    .line 1607
    :goto_3b
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v6

    if-eqz v6, :cond_98

    iget-object v6, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_98

    .line 1608
    iget-object v6, v1, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlight:Ljava/lang/CharSequence;

    .line 1609
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v9, v9, 0x17

    add-int/lit8 v9, v9, 0x18

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v8, v9

    .line 1610
    iget-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    if-eqz v9, :cond_96

    const/4 v9, 0x0

    .line 1611
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_95

    int-to-float v8, v8

    .line 1614
    iget-object v10, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    const-string v11, ": "

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    sub-float/2addr v8, v10

    float-to-int v8, v8

    goto :goto_3c

    .line 1612
    :cond_95
    throw v9

    :cond_96
    :goto_3c
    if-lez v8, :cond_97

    .line 1617
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v9, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    const/16 v10, 0x82

    invoke-static {v6, v1, v8, v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->ellipsizeCenterEnd(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1619
    :cond_97
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    goto/16 :goto_45

    .line 1621
    :cond_98
    new-instance v6, Landroid/text/SpannableStringBuilder;

    iget-object v8, v1, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-direct {v6, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1622
    iget-object v8, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v8, :cond_9a

    .line 1624
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->spoilLoginCode()V

    .line 1626
    iget-object v8, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iget-object v9, v1, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    const/16 v10, 0x108

    invoke-static {v8, v9, v6, v10}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/text/Spannable;I)V

    .line 1627
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iget-object v8, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    if-nez v8, :cond_99

    const/4 v8, 0x0

    goto :goto_3d

    :cond_99
    invoke-virtual {v8}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    :goto_3d
    invoke-static {v1, v6, v8}, Lorg/telegram/messenger/MediaDataController;->addAnimatedEmojiSpans(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 1629
    :cond_9a
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    goto/16 :goto_45

    .line 1631
    :cond_9b
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    const/4 v5, 0x1

    if-le v1, v5, :cond_9f

    .line 1632
    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    if-eqz v1, :cond_9d

    .line 1633
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    if-nez v1, :cond_9c

    const/4 v1, 0x0

    goto :goto_3e

    :cond_9c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3e
    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    const-string v8, "Media"

    invoke-static {v8, v1, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_40

    :cond_9d
    const/4 v5, 0x0

    .line 1635
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    if-nez v1, :cond_9e

    move v1, v5

    goto :goto_3f

    :cond_9e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v1, v26

    :goto_3f
    new-array v6, v5, [Ljava/lang/Object;

    const-string v5, "Photos"

    invoke-static {v5, v1, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1637
    :goto_40
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v5, v5, v6

    iput-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    goto/16 :goto_45

    .line 1639
    :cond_9f
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;

    if-eqz v6, :cond_a0

    .line 1640
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;

    .line 1641
    sget v1, Lorg/telegram/messenger/R$string;->BoostingGiveaway:I

    const-string v5, "BoostingGiveaway"

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_44

    .line 1642
    :cond_a0
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v6, :cond_a1

    .line 1643
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 1644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\ud83d\udcca "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_44

    .line 1645
    :cond_a1
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v6, :cond_a2

    .line 1646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\ud83c\udfae "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_44

    .line 1647
    :cond_a2
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v6, :cond_a3

    .line 1648
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    goto/16 :goto_44

    .line 1649
    :cond_a3
    iget v6, v1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v8, 0xe

    if-ne v6, v8, :cond_a4

    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/Object;

    .line 1650
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v5, v6

    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const-string v1, "\ud83c\udfa7 %s - %s"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_44

    .line 1651
    :cond_a4
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaStory;

    if-eqz v6, :cond_a8

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->via_mention:Z

    if-eqz v5, :cond_a8

    .line 1652
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 1653
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    .line 1655
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_a5

    .line 1657
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x20

    .line 1659
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v5, 0x0

    if-ltz v6, :cond_a6

    .line 1660
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_41

    :cond_a5
    const/4 v5, 0x0

    move-object/from16 v1, v20

    .line 1663
    :cond_a6
    :goto_41
    sget v6, Lorg/telegram/messenger/R$string;->StoryYouMentionInDialog:I

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v1, v9, v5

    const-string v1, "StoryYouMentionInDialog"

    invoke-static {v1, v6, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_44

    .line 1665
    :cond_a7
    sget v1, Lorg/telegram/messenger/R$string;->StoryMentionInDialog:I

    const-string v5, "StoryMentionInDialog"

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_44

    .line 1668
    :cond_a8
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v1

    if-eqz v1, :cond_a9

    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a9

    .line 1669
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlight:Ljava/lang/CharSequence;

    .line 1673
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v6, v6, 0x17

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v5, v6

    .line 1674
    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v8, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    const/16 v9, 0x82

    invoke-static {v1, v6, v5, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->ellipsizeCenterEnd(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_43

    .line 1676
    :cond_a9
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v14}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1677
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_aa

    .line 1678
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->spoilLoginCode()V

    .line 1680
    :cond_aa
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    const/16 v6, 0x108

    invoke-static {v5, v1, v6}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Lorg/telegram/messenger/MessageObject;Landroid/text/Spannable;I)V

    .line 1681
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_ac

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v5, :cond_ac

    .line 1682
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    if-nez v6, :cond_ab

    const/4 v6, 0x0

    goto :goto_42

    :cond_ab
    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    :goto_42
    invoke-static {v5, v1, v6}, Lorg/telegram/messenger/MediaDataController;->addAnimatedEmojiSpans(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 1686
    :cond_ac
    :goto_43
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    .line 1688
    :goto_44
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v6, :cond_ad

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v5

    if-nez v5, :cond_ad

    .line 1689
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v5, v5, v6

    iput-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1692
    :cond_ad
    :goto_45
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isReplyToStory()Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 1693
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "d "

    const/4 v6, 0x0

    .line 1694
    invoke-virtual {v5, v6, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1695
    new-instance v1, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_mini_replystory:I

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v8, 0x1

    invoke-virtual {v5, v1, v6, v8, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v1, v5

    .line 1698
    :cond_ae
    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v5, :cond_b3

    .line 1699
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_af

    .line 1700
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlight:Ljava/lang/CharSequence;

    .line 1704
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v5, v5, 0x17

    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v8, 0x2

    add-int/2addr v6, v8

    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    mul-int/2addr v6, v9

    add-int/2addr v5, v6

    sub-int/2addr v5, v8

    const/4 v6, 0x5

    add-int/2addr v5, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v1, v5

    .line 1705
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v8, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    const/16 v9, 0x82

    invoke-static {v0, v5, v1, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->ellipsizeCenterEnd(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    :cond_af
    const/4 v6, 0x0

    .line 1707
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v5, 0x96

    if-le v0, v5, :cond_b0

    .line 1708
    invoke-interface {v1, v6, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1710
    :cond_b0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1712
    :goto_46
    instance-of v1, v0, Landroid/text/SpannableStringBuilder;

    if-nez v1, :cond_b1

    .line 1713
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_47

    :cond_b1
    move-object v1, v0

    .line 1716
    :goto_47
    move-object v0, v1

    check-cast v0, Landroid/text/SpannableStringBuilder;

    const-string v5, " "

    const/4 v6, 0x0

    .line 1717
    invoke-virtual {v0, v6, v5}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1718
    new-instance v5, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v9, 0x2

    add-int/2addr v8, v9

    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    mul-int/2addr v8, v10

    sub-int/2addr v8, v9

    const/4 v9, 0x5

    add-int/2addr v8, v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-direct {v5, v8}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    const/16 v8, 0x21

    const/4 v9, 0x1

    invoke-virtual {v0, v5, v6, v9, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1719
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    const/16 v8, 0x11

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v0, v5, v9, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    .line 1720
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 1721
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_b2

    move-object v1, v0

    :cond_b2
    const/4 v0, 0x0

    .line 1727
    :cond_b3
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v5

    if-eqz v5, :cond_6a

    const/4 v5, 0x1

    .line 1728
    iput-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->drawForwardIcon:Z

    .line 1729
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "d "

    const/4 v6, 0x0

    .line 1730
    invoke-virtual {v5, v6, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1731
    new-instance v1, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->mini_forwarded:I

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const v8, 0x3f666666    # 0.9f

    .line 1732
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/ColoredImageSpan;->setAlpha(F)V

    const/4 v8, 0x1

    .line 1733
    invoke-virtual {v5, v1, v6, v8, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v1, v5

    goto/16 :goto_2e

    .line 1738
    :goto_48
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v6, :cond_b6

    .line 1739
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isContentHidden()Z

    move-result v6

    if-eqz v6, :cond_b4

    sget v6, Lorg/telegram/messenger/R$string;->archive_content_is_hidden:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_49

    :cond_b4
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->formatArchivedDialogNames()Ljava/lang/CharSequence;

    move-result-object v6

    .line 1740
    :goto_49
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isContentHidden()Z

    move-result v8

    if-eqz v8, :cond_b5

    sget v1, Lorg/telegram/messenger/R$string;->archive_content_is_hidden:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    :cond_b5
    move v9, v0

    move v8, v5

    move-object v0, v6

    move v5, v3

    move-object v3, v2

    const/4 v2, 0x0

    goto :goto_4a

    :cond_b6
    move v8, v5

    move v5, v3

    move-object v3, v2

    const/4 v2, 0x0

    move-object/from16 v49, v9

    move v9, v0

    move-object/from16 v0, v49

    .line 1746
    :goto_4a
    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v6, :cond_b7

    .line 1747
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    int-to-long v10, v6

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_4b

    .line 1748
    :cond_b7
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    if-eqz v6, :cond_b8

    int-to-long v10, v6

    .line 1749
    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_4b

    .line 1750
    :cond_b8
    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_b9

    .line 1751
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v10, v6

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_4b

    :cond_b9
    move-object/from16 v6, v20

    .line 1754
    :goto_4b
    iget-object v10, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v10, :cond_ba

    const/4 v11, 0x0

    .line 1755
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1756
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1757
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1758
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 1759
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    .line 1760
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    .line 1761
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    move v4, v11

    const/4 v10, 0x0

    const/4 v12, 0x0

    goto/16 :goto_5c

    :cond_ba
    const/4 v11, 0x0

    .line 1763
    iget v12, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v12, :cond_be

    .line 1765
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isContentHidden()Z

    move-result v10

    if-eqz v10, :cond_bb

    .line 1766
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    goto :goto_4c

    .line 1768
    :cond_bb
    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    iget v12, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    add-int v13, v10, v12

    if-lez v13, :cond_bd

    if-le v10, v12, :cond_bc

    const/4 v13, 0x1

    .line 1770
    iput-boolean v13, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 1771
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    new-array v14, v13, [Ljava/lang/Object;

    add-int/2addr v10, v12

    .line 1772
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v14, v11

    const-string v10, "%d"

    invoke-static {v10, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_4d

    :cond_bc
    const/4 v13, 0x1

    .line 1774
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 1775
    iput-boolean v13, v7, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    new-array v14, v13, [Ljava/lang/Object;

    add-int/2addr v10, v12

    .line 1776
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v14, v11

    const-string v10, "%d"

    invoke-static {v10, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v12, v10

    const/4 v10, 0x0

    goto :goto_4e

    .line 1779
    :cond_bd
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 1780
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    :goto_4c
    const/4 v10, 0x0

    :goto_4d
    const/4 v12, 0x0

    .line 1782
    :goto_4e
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    goto/16 :goto_54

    .line 1784
    :cond_be
    iget-boolean v12, v7, Lorg/telegram/ui/Cells/DialogCell;->clearingDialog:Z

    if-eqz v12, :cond_bf

    .line 1785
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    :goto_4f
    const/4 v13, 0x0

    goto :goto_51

    .line 1787
    :cond_bf
    iget v11, v7, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-eqz v11, :cond_c3

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c1

    iget v12, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    if-ne v11, v12, :cond_c0

    if-eqz v10, :cond_c0

    iget-object v10, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    if-nez v10, :cond_c3

    :cond_c0
    const/4 v10, 0x1

    goto :goto_50

    :cond_c1
    move v10, v12

    .line 1788
    :goto_50
    iput-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 1790
    iget-boolean v12, v7, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v12, :cond_c2

    const/16 v12, 0x63

    if-le v11, v12, :cond_c2

    const-string v11, "99+"

    goto :goto_4f

    :cond_c2
    new-array v12, v10, [Ljava/lang/Object;

    .line 1793
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v12, v13

    const-string v11, "%d"

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_51

    :cond_c3
    const/4 v10, 0x1

    const/4 v13, 0x0

    .line 1794
    iget-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-eqz v11, :cond_c4

    .line 1795
    iput-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    move-object/from16 v11, v20

    goto :goto_51

    .line 1798
    :cond_c4
    iput-boolean v13, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    const/4 v11, 0x0

    .line 1800
    :goto_51
    iget v12, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    if-eqz v12, :cond_c5

    .line 1801
    iput-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    const-string v12, "@"

    goto :goto_52

    .line 1804
    :cond_c5
    iput-boolean v13, v7, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    const/4 v12, 0x0

    .line 1806
    :goto_52
    iget v14, v7, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-lez v14, :cond_c6

    .line 1807
    iput-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    goto :goto_53

    .line 1809
    :cond_c6
    iput-boolean v13, v7, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    :goto_53
    move-object v10, v11

    .line 1813
    :goto_54
    iget-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v11

    if-eqz v11, :cond_d3

    iget-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-nez v11, :cond_d3

    if-eqz v4, :cond_d3

    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v11, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v11, v11, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;

    if-nez v11, :cond_d3

    iget-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v11, :cond_c7

    iget-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    if-nez v11, :cond_d3

    .line 1814
    :cond_c7
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v4

    if-eqz v4, :cond_c8

    const/4 v4, 0x0

    .line 1815
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1816
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    const/4 v11, 0x1

    .line 1817
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1818
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    goto/16 :goto_5c

    :cond_c8
    const/4 v4, 0x0

    const/4 v11, 0x1

    .line 1819
    iget-object v13, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->isSendError()Z

    move-result v13

    if-eqz v13, :cond_c9

    .line 1820
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1821
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1822
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1823
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    .line 1824
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 1825
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    goto/16 :goto_5c

    .line 1826
    :cond_c9
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isSent()Z

    move-result v4

    if-eqz v4, :cond_d2

    .line 1827
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v4, :cond_cb

    .line 1828
    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_outbox_max_id:I

    iget-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    if-lt v4, v11, :cond_ca

    const/4 v4, 0x1

    goto :goto_55

    :cond_ca
    const/4 v4, 0x0

    :goto_55
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    :goto_56
    const/4 v4, 0x1

    goto :goto_5b

    .line 1829
    :cond_cb
    iget-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v4, :cond_cf

    .line 1830
    iget v4, v7, Lorg/telegram/ui/Cells/DialogCell;->readOutboxMaxId:I

    if-lez v4, :cond_cc

    iget-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    if-ge v4, v11, :cond_ce

    :cond_cc
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v4

    if-eqz v4, :cond_ce

    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_cd

    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v4, :cond_cd

    goto :goto_57

    :cond_cd
    const/4 v4, 0x0

    goto :goto_58

    :cond_ce
    :goto_57
    const/4 v4, 0x1

    :goto_58
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    goto :goto_56

    .line 1832
    :cond_cf
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v4

    if-eqz v4, :cond_d1

    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_d0

    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v4, :cond_d0

    goto :goto_59

    :cond_d0
    const/4 v4, 0x0

    goto :goto_5a

    :cond_d1
    :goto_59
    const/4 v4, 0x1

    :goto_5a
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    goto :goto_56

    .line 1834
    :goto_5b
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    const/4 v4, 0x0

    .line 1835
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1836
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    goto :goto_5c

    :cond_d2
    const/4 v4, 0x0

    goto :goto_5c

    :cond_d3
    const/4 v4, 0x0

    .line 1839
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1840
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1841
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1842
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    .line 1846
    :goto_5c
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->promoDialog:Z

    .line 1847
    iget v4, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    .line 1848
    iget v11, v7, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    if-nez v11, :cond_d6

    iget-wide v13, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const/4 v11, 0x1

    invoke-virtual {v4, v13, v14, v11}, Lorg/telegram/messenger/MessagesController;->isPromoDialog(JZ)Z

    move-result v13

    if-eqz v13, :cond_d6

    .line 1849
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawPinBackground:Z

    .line 1850
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->promoDialog:Z

    .line 1851
    iget v11, v4, Lorg/telegram/messenger/MessagesController;->promoDialogType:I

    sget v13, Lorg/telegram/messenger/MessagesController;->PROMO_TYPE_PROXY:I

    if-ne v11, v13, :cond_d4

    .line 1852
    sget v4, Lorg/telegram/messenger/R$string;->UseProxySponsor:I

    const-string v6, "UseProxySponsor"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    goto :goto_5d

    .line 1853
    :cond_d4
    sget v13, Lorg/telegram/messenger/MessagesController;->PROMO_TYPE_PSA:I

    if-ne v11, v13, :cond_d6

    .line 1854
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PsaType_"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v4, Lorg/telegram/messenger/MessagesController;->promoPsaType:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1855
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_d5

    .line 1856
    sget v6, Lorg/telegram/messenger/R$string;->PsaTypeDefault:I

    const-string v11, "PsaTypeDefault"

    invoke-static {v11, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 1858
    :cond_d5
    iget-object v11, v4, Lorg/telegram/messenger/MessagesController;->promoPsaMessage:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_d6

    .line 1859
    iget-object v1, v4, Lorg/telegram/messenger/MessagesController;->promoPsaMessage:Ljava/lang/String;

    const/4 v4, 0x0

    .line 1860
    iput v4, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    .line 1865
    :cond_d6
    :goto_5d
    iget v4, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v4, :cond_d8

    const/4 v11, 0x2

    if-ne v4, v11, :cond_d7

    .line 1866
    sget v4, Lorg/telegram/messenger/R$string;->hidden_chats_title:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5e

    :cond_d7
    sget v4, Lorg/telegram/messenger/R$string;->ArchivedChats:I

    const-string v11, "ArchivedChats"

    invoke-static {v11, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_5e
    move-object v11, v4

    goto/16 :goto_62

    .line 1868
    :cond_d8
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_de

    .line 1869
    iget-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->useFromUserAsAvatar:Z

    if-eqz v11, :cond_da

    .line 1870
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_d9

    const/4 v4, 0x1

    new-array v11, v4, [Landroid/graphics/drawable/Drawable;

    .line 1871
    iput-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    .line 1873
    :cond_d9
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    const/4 v13, 0x0

    aput-object v11, v4, v13

    .line 1874
    iget v4, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v4

    iget-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v13, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v14, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    iget-object v15, v7, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v11, v13, v14, v15}, Lorg/telegram/messenger/TopicsController;->getTopicIconName(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/MessageObject;Landroid/text/TextPaint;[Landroid/graphics/drawable/Drawable;)Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_df

    goto/16 :goto_60

    .line 1878
    :cond_da
    iget-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v11, :cond_dd

    .line 1879
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_db

    const/4 v4, 0x1

    new-array v11, v4, [Landroid/graphics/drawable/Drawable;

    .line 1880
    iput-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    .line 1882
    :cond_db
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    const/4 v13, 0x0

    aput-object v11, v4, v13

    .line 1883
    iget-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->showTopicIconInName:Z

    if-eqz v11, :cond_dc

    iget-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v15, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v14, v14, v15

    invoke-static {v11, v14, v4, v13}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Z)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_5f

    :cond_dc
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    goto :goto_5f

    .line 1885
    :cond_dd
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_5f

    .line 1887
    :cond_de
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_e4

    .line 1888
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v4

    if-eqz v4, :cond_e0

    .line 1889
    sget v4, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    const-string v11, "RepliesTitle"

    invoke-static {v11, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :cond_df
    :goto_5f
    move-object v11, v4

    goto :goto_61

    .line 1890
    :cond_e0
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v4

    if-eqz v4, :cond_e3

    .line 1891
    iget-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->useMeForMyMessages:Z

    if-eqz v4, :cond_e1

    .line 1892
    sget v4, Lorg/telegram/messenger/R$string;->FromYou:I

    const-string v11, "FromYou"

    invoke-static {v11, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5f

    .line 1894
    :cond_e1
    iget v4, v7, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v11, 0x3

    if-ne v4, v11, :cond_e2

    const/4 v4, 0x1

    .line 1895
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawPinBackground:Z

    .line 1897
    :cond_e2
    sget v4, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v11, "SavedMessages"

    invoke-static {v11, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1899
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isContentHidden()Z

    move-result v11

    if-eqz v11, :cond_df

    .line 1900
    sget v1, Lorg/telegram/messenger/R$string;->archive_content_is_hidden:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5f

    .line 1905
    :cond_e3
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5f

    :cond_e4
    :goto_60
    move-object/from16 v11, v20

    :goto_61
    if-eqz v11, :cond_e5

    .line 1908
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_e5

    .line 1909
    sget v4, Lorg/telegram/messenger/R$string;->HiddenName:I

    const-string v11, "HiddenName"

    invoke-static {v11, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    :cond_e5
    :goto_62
    move-object v14, v2

    move v4, v9

    move-object v15, v12

    move-object v2, v1

    move-object v9, v6

    move-object v1, v0

    move v6, v5

    move-object v5, v10

    goto/16 :goto_13

    :goto_63
    if-eqz v8, :cond_e7

    .line 1916
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_timePaint:Landroid/text/TextPaint;

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v13, v10

    .line 1917
    new-instance v12, Landroid/text/StaticLayout;

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_timePaint:Landroid/text/TextPaint;

    sget-object v27, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object v8, v12

    move v11, v13

    move-object/from16 v37, v12

    move-object/from16 v12, v27

    move/from16 v27, v13

    move/from16 v13, v28

    move-object/from16 v35, v14

    move/from16 v14, v29

    move/from16 v38, v6

    move-object v6, v15

    move/from16 v15, v30

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v8, v37

    iput-object v8, v7, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    .line 1918
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v8, :cond_e6

    .line 1919
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    const/16 v9, 0xf

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v8, v9

    sub-int v8, v8, v27

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    goto :goto_64

    :cond_e6
    const/16 v8, 0xf

    .line 1921
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    goto :goto_64

    :cond_e7
    move/from16 v38, v6

    move-object/from16 v35, v14

    move-object v6, v15

    const/4 v8, 0x0

    .line 1925
    iput-object v8, v7, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    const/4 v8, 0x0

    .line 1926
    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    const/16 v27, 0x0

    .line 1930
    :goto_64
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->drawLock2()Z

    move-result v8

    if-eqz v8, :cond_e9

    .line 1931
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_e8

    .line 1932
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int v8, v8, v27

    const/4 v9, 0x4

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v8, v10

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->lock2Left:I

    goto :goto_65

    :cond_e8
    const/4 v9, 0x4

    .line 1934
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lock2Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    sub-int/2addr v8, v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v8, v10

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->lock2Left:I

    .line 1936
    :goto_65
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lock2Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v8, v10

    const/4 v9, 0x0

    add-int/2addr v8, v9

    add-int v27, v27, v8

    move/from16 v9, v27

    goto :goto_66

    :cond_e9
    move/from16 v9, v27

    const/4 v8, 0x0

    .line 1940
    :goto_66
    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v10, :cond_ea

    .line 1941
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v10

    iget v11, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    sub-int/2addr v10, v11

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v10, v11

    sub-int/2addr v10, v9

    iput v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    goto :goto_67

    .line 1943
    :cond_ea
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v10

    iget v11, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    sub-int/2addr v10, v11

    iget v11, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    const/4 v12, 0x5

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x8

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v10, v11

    sub-int/2addr v10, v9

    iput v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 1944
    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v10, v9

    iput v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 1947
    :goto_67
    iget-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    const/16 v11, 0x1f

    const/16 v12, 0xc

    if-eqz v10, :cond_ef

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v10

    if-nez v10, :cond_ef

    .line 1948
    iget-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    if-eqz v10, :cond_eb

    .line 1949
    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    sub-int/2addr v10, v13

    iput v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    goto :goto_6a

    :cond_eb
    if-nez v5, :cond_ed

    if-eqz v6, :cond_ec

    goto :goto_68

    .line 1957
    :cond_ec
    iget-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    if-eqz v10, :cond_ef

    .line 1958
    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    sub-int/2addr v10, v13

    iput v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    goto :goto_6a

    :cond_ed
    :goto_68
    if-eqz v5, :cond_ee

    .line 1952
    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v14, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/16 v14, 0x12

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    move-object v14, v5

    add-int/2addr v13, v15

    sub-int/2addr v10, v13

    iput v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    goto :goto_69

    :cond_ee
    move-object v14, v5

    :goto_69
    if-eqz v6, :cond_f0

    .line 1955
    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    const/16 v13, 0x1e

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    sub-int/2addr v10, v13

    iput v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    goto :goto_6b

    :cond_ef
    :goto_6a
    move-object v14, v5

    .line 1962
    :cond_f0
    :goto_6b
    iget-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    if-eqz v10, :cond_f2

    .line 1963
    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_f1

    move/from16 v13, v19

    goto :goto_6c

    :cond_f1
    const/4 v13, 0x4

    :goto_6c
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    sget-object v15, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    add-int/2addr v13, v15

    sub-int/2addr v10, v13

    iput v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 1965
    :cond_f2
    iget-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    if-eqz v10, :cond_f4

    .line 1966
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    const/4 v13, 0x5

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v10, v15

    .line 1967
    iget v13, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v13, v10

    iput v13, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 1968
    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v13, :cond_f3

    .line 1969
    iget v13, v7, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sub-int/2addr v13, v8

    sub-int/2addr v13, v10

    iput v13, v7, Lorg/telegram/ui/Cells/DialogCell;->clockDrawLeft:I

    goto/16 :goto_6d

    .line 1971
    :cond_f3
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int/2addr v8, v9

    const/4 v13, 0x5

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v8, v15

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->clockDrawLeft:I

    .line 1972
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v8, v10

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_6d

    .line 1974
    :cond_f4
    iget-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v10, :cond_f8

    .line 1975
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    const/4 v13, 0x5

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v10, v15

    .line 1976
    iget v13, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v13, v10

    iput v13, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 1977
    iget-boolean v15, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v15, :cond_f6

    .line 1978
    sget-object v15, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v27

    sub-int v15, v15, v27

    sub-int/2addr v13, v15

    iput v13, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 1979
    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v13, :cond_f5

    .line 1980
    iget v13, v7, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sub-int/2addr v13, v8

    sub-int/2addr v13, v10

    iput v13, v7, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawLeft:I

    const/high16 v8, 0x40b00000    # 5.5f

    .line 1981
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v13, v8

    iput v13, v7, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    goto :goto_6d

    .line 1983
    :cond_f5
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int/2addr v8, v9

    const/4 v13, 0x5

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v8, v15

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    const/high16 v13, 0x40b00000    # 5.5f

    .line 1984
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v8, v13

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawLeft:I

    .line 1985
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    add-int/2addr v10, v13

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    sub-int/2addr v10, v13

    add-int/2addr v8, v10

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_6d

    .line 1988
    :cond_f6
    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v13, :cond_f7

    .line 1989
    iget v13, v7, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sub-int/2addr v13, v8

    sub-int/2addr v13, v10

    iput v13, v7, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft1:I

    goto :goto_6d

    .line 1991
    :cond_f7
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int/2addr v8, v9

    const/4 v13, 0x5

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v8, v15

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft1:I

    .line 1992
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v8, v10

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 1997
    :cond_f8
    :goto_6d
    iget-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-eqz v8, :cond_f9

    iget-object v8, v7, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_f9

    const/16 v8, 0x24

    .line 1998
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    .line 1999
    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v10, v8

    iput v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 2000
    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_ff

    .line 2001
    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v10, v8

    iput v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_6f

    .line 2003
    :cond_f9
    iget-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-nez v8, :cond_fa

    iget-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-eqz v8, :cond_fb

    :cond_fa
    iget-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-nez v8, :cond_fb

    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-nez v8, :cond_fb

    .line 2004
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    add-int/2addr v8, v10

    .line 2005
    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v10, v8

    iput v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 2006
    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_ff

    .line 2007
    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v10, v8

    iput v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_6f

    .line 2009
    :cond_fb
    iget-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v8, :cond_fc

    .line 2010
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    add-int/2addr v8, v10

    .line 2011
    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v10, v8

    iput v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 2012
    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_ff

    .line 2013
    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v10, v8

    iput v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_6f

    .line 2015
    :cond_fc
    iget-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-eqz v8, :cond_fd

    const/16 v8, 0x24

    .line 2016
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    .line 2017
    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v10, v8

    iput v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 2018
    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_ff

    .line 2019
    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v10, v8

    iput v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_6f

    .line 2021
    :cond_fd
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-eqz v8, :cond_ff

    .line 2022
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    const/4 v13, 0x1

    if-ne v10, v13, :cond_fe

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    goto :goto_6e

    :cond_fe
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    :goto_6e
    invoke-virtual {v10}, Lorg/telegram/ui/Components/ScamDrawable;->getIntrinsicWidth()I

    move-result v10

    add-int/2addr v8, v10

    .line 2023
    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v10, v8

    iput v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 2024
    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_ff

    .line 2025
    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v10, v8

    iput v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 2029
    :cond_ff
    :goto_6f
    :try_start_2
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v8, v10

    if-gez v8, :cond_100

    const/4 v8, 0x0

    .line 2033
    :cond_100
    instance-of v10, v0, Ljava/lang/String;

    if-eqz v10, :cond_101

    .line 2034
    check-cast v0, Ljava/lang/String;

    const/16 v10, 0x20

    const/16 v13, 0xa

    invoke-virtual {v0, v13, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 2037
    :cond_101
    iget-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v10, :cond_103

    .line 2038
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v15, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v13, v13, v15

    int-to-float v15, v8

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v13, v15, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v10, v5, :cond_102

    const/4 v5, 0x1

    goto :goto_70

    :cond_102
    const/4 v5, 0x0

    :goto_70
    iput-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutFits:Z

    const/16 v5, 0x30

    .line 2039
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v8, v5

    .line 2041
    :cond_103
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v5, v5, v10

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    int-to-float v10, v8

    cmpl-float v5, v5, v10

    if-lez v5, :cond_104

    const/4 v5, 0x1

    goto :goto_71

    :cond_104
    const/4 v5, 0x0

    :goto_71
    iput-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->nameIsEllipsized:Z

    .line 2042
    iget-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-nez v5, :cond_105

    .line 2043
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v13, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v5, v5, v13

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v5, v10, v13}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2045
    :cond_105
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v5, v5, v10

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    const/4 v13, 0x0

    invoke-static {v0, v5, v10, v13}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2046
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_106

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v5

    if-eqz v5, :cond_106

    .line 2047
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v10, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v5, v10}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_106

    move-object/from16 v28, v5

    goto :goto_72

    :cond_106
    move-object/from16 v28, v0

    .line 2052
    :goto_72
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-eqz v0, :cond_107

    .line 2053
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v40, v0, v5

    sget-object v42, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v43, 0x3f800000    # 1.0f

    const/16 v44, 0x0

    const/16 v45, 0x0

    sget-object v46, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/16 v48, 0x2

    move-object/from16 v39, v28

    move/from16 v41, v8

    move/from16 v47, v8

    invoke-static/range {v39 .. v48}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    goto :goto_73

    .line 2055
    :cond_107
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v29, v5, v10

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v30

    sget-object v31, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v32, 0x3f800000    # 1.0f

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v27, v0

    invoke-direct/range {v27 .. v34}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    .line 2057
    :goto_73
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v0, :cond_108

    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->isRtlCharAt(I)Z

    move-result v0

    if-eqz v0, :cond_108

    const/16 v0, 0x24

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_74

    :cond_108
    const/4 v0, 0x0

    :goto_74
    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutTranslateX:F

    .line 2058
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->isRtlCharAt(I)Z

    move-result v0

    iput-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeLeft:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_75

    :catch_2
    move-exception v0

    .line 2060
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2063
    :goto_75
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v5, 0x1

    new-array v8, v5, [Landroid/text/Layout;

    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v10, 0x0

    aput-object v5, v8, v10

    invoke-static {v10, v7, v0, v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 2071
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v0, :cond_10b

    const/4 v0, 0x7

    .line 2072
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v5, 0x11

    .line 2073
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    const/high16 v5, 0x41480000    # 12.5f

    .line 2074
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    .line 2075
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    .line 2076
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    const/16 v5, 0x13

    .line 2077
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    .line 2078
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v8, v8, 0x15

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v5, v8

    .line 2079
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    if-nez v8, :cond_109

    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    :cond_109
    const/4 v10, 0x2

    div-int/2addr v8, v10

    const/16 v10, 0x11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    sub-int/2addr v8, v13

    .line 2080
    iget-object v10, v7, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v10, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    int-to-float v13, v8

    int-to-float v15, v0

    const/16 v16, 0x22

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v16

    add-int v8, v8, v16

    int-to-float v8, v8

    const/16 v16, 0x22

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v16

    add-int v12, v0, v16

    int-to-float v12, v12

    invoke-virtual {v10, v13, v15, v8, v12}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_10a
    move/from16 v16, v0

    move v0, v5

    goto/16 :goto_7f

    .line 2082
    :cond_10b
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_111

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_10c

    goto/16 :goto_7b

    :cond_10c
    const/16 v0, 0x9

    .line 2106
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 2107
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameTop:I

    const/16 v5, 0x10

    .line 2108
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    const/16 v5, 0x27

    .line 2109
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    const/16 v5, 0x27

    .line 2110
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    .line 2111
    iget-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v5, :cond_10d

    const/16 v5, 0x24

    goto :goto_76

    :cond_10d
    const/16 v5, 0x27

    :goto_76
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    const/16 v5, 0x11

    .line 2112
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    .line 2113
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v8, v8, 0x17

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_10e

    const/4 v10, 0x0

    goto :goto_77

    :cond_10e
    const/16 v10, 0xc

    :goto_77
    sub-int/2addr v8, v10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v5, v8

    .line 2115
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_10f

    .line 2116
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 2117
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    const/16 v10, 0x40

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v8, v10

    .line 2118
    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    iget v12, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v13, 0x2

    add-int/2addr v12, v13

    mul-int/2addr v10, v12

    sub-int/2addr v10, v13

    add-int/lit8 v10, v10, 0xb

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int v10, v8, v10

    goto :goto_78

    .line 2120
    :cond_10f
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    const/4 v10, 0x4

    add-int/2addr v8, v10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    const/16 v8, 0xa

    .line 2121
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    const/16 v10, 0x43

    .line 2122
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v8

    .line 2124
    :goto_78
    iget-object v12, v7, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v12, v12, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    int-to-float v13, v8

    int-to-float v15, v0

    const/16 v16, 0x36

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v16

    add-int v8, v8, v16

    int-to-float v8, v8

    const/16 v16, 0x36

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v16

    add-int v11, v0, v16

    int-to-float v11, v11

    invoke-virtual {v12, v13, v15, v8, v11}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v8, 0x0

    .line 2125
    :goto_79
    iget-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v12, v11

    if-ge v8, v12, :cond_10a

    .line 2126
    aget-object v11, v11, v8

    iget v12, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v13, 0x2

    add-int/2addr v12, v13

    mul-int/2addr v12, v8

    add-int/2addr v12, v10

    int-to-float v12, v12

    const/16 v13, 0x1e

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    add-int/2addr v13, v0

    iget-boolean v15, v7, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-eqz v15, :cond_110

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    goto :goto_7a

    :cond_110
    const/4 v15, 0x0

    :goto_7a
    add-int/2addr v13, v15

    int-to-float v13, v13

    iget v15, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    move/from16 v16, v0

    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v11, v12, v13, v15, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v16

    goto :goto_79

    :cond_111
    :goto_7b
    const/16 v0, 0xb

    .line 2083
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v5, 0x20

    .line 2084
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameTop:I

    const/16 v5, 0xd

    .line 2085
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    const/16 v5, 0x2b

    .line 2086
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    const/16 v5, 0x2b

    .line 2087
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    const/16 v5, 0x2b

    .line 2088
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    const/16 v5, 0xd

    .line 2089
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    .line 2090
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v8, v8, 0x15

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int v8, v5, v8

    .line 2092
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_112

    const/16 v5, 0x10

    .line 2093
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 2094
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    const/16 v10, 0x42

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v5, v10

    const/16 v10, 0x1f

    .line 2095
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int v10, v5, v11

    goto :goto_7c

    .line 2097
    :cond_112
    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v5, v5, 0x6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    const/16 v5, 0xa

    .line 2098
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/16 v10, 0x45

    .line 2099
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v5

    .line 2101
    :goto_7c
    iget-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v11, v11, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    int-to-float v12, v5

    int-to-float v13, v0

    const/16 v15, 0x38

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v5, v15

    int-to-float v5, v5

    const/16 v15, 0x38

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v15, v0

    int-to-float v15, v15

    invoke-virtual {v11, v12, v13, v5, v15}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v11, 0x0

    .line 2102
    :goto_7d
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v12, v5

    if-ge v11, v12, :cond_114

    .line 2103
    aget-object v12, v5, v11

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v13, 0x2

    add-int/2addr v5, v13

    mul-int/2addr v5, v11

    add-int/2addr v5, v10

    int-to-float v13, v5

    const/16 v5, 0x1f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v15, v0

    iget-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-eqz v5, :cond_113

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    goto :goto_7e

    :cond_113
    const/4 v5, 0x0

    :goto_7e
    add-int/2addr v15, v5

    int-to-float v15, v15

    move/from16 p1, v0

    const/16 v5, 0x12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    move/from16 v16, v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v12, v13, v15, v0, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p1

    move/from16 v8, v16

    goto :goto_7d

    :cond_114
    move/from16 p1, v0

    move/from16 v16, v8

    move/from16 v0, v16

    move/from16 v16, p1

    .line 2129
    :goto_7f
    iget-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-eqz v8, :cond_115

    .line 2130
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameTop:I

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v8, v10

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameTop:I

    .line 2132
    :cond_115
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v8

    if-eqz v8, :cond_118

    .line 2133
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v8, :cond_117

    .line 2134
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    sub-int/2addr v8, v10

    const/16 v10, 0xe

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v8, v10

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    .line 2136
    iget-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v8, :cond_118

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v8

    if-nez v8, :cond_118

    .line 2137
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    const/high16 v10, 0x40f00000    # 7.5f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v10, v9

    sub-int/2addr v8, v10

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    .line 2138
    iget-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    if-eqz v10, :cond_116

    .line 2139
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    const/4 v11, 0x5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v10, v12

    sub-int/2addr v8, v10

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    goto :goto_80

    :cond_116
    const/4 v11, 0x5

    .line 2140
    iget-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v10, :cond_118

    .line 2141
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v10, v12

    sub-int/2addr v8, v10

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    .line 2142
    iget-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v10, :cond_118

    .line 2143
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v10, v11

    sub-int/2addr v8, v10

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    goto :goto_80

    :cond_117
    const/16 v8, 0xe

    .line 2149
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    .line 2152
    :cond_118
    :goto_80
    iget-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    if-eqz v8, :cond_11b

    const/16 v8, 0x1f

    .line 2153
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v0, v5

    .line 2155
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v6, :cond_11a

    .line 2156
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    const/16 v6, 0x22

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    .line 2158
    iget-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v5, :cond_132

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v5

    if-nez v5, :cond_132

    .line 2159
    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    const/16 v6, 0xb

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v9, v6

    sub-int/2addr v5, v9

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    .line 2160
    iget-boolean v6, v7, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    if-eqz v6, :cond_119

    .line 2161
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    const/4 v8, 0x5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v6, v9

    sub-int/2addr v5, v6

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    goto/16 :goto_8d

    :cond_119
    const/4 v8, 0x5

    .line 2162
    iget-boolean v6, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v6, :cond_132

    .line 2163
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v6, v9

    sub-int/2addr v5, v6

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    .line 2164
    iget-boolean v6, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v6, :cond_132

    .line 2165
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v6, v8

    sub-int/2addr v5, v6

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    goto/16 :goto_8d

    :cond_11a
    const/16 v6, 0xb

    .line 2171
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    .line 2172
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v6, v5

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2173
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v6, v5

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2174
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    add-int/2addr v6, v5

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 2175
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    add-int/2addr v6, v5

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    goto/16 :goto_8d

    :cond_11b
    if-nez v14, :cond_11e

    if-nez v6, :cond_11e

    .line 2177
    iget-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    if-eqz v8, :cond_11c

    goto :goto_81

    .line 2267
    :cond_11c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v5

    if-eqz v5, :cond_11d

    .line 2268
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v0, v5

    .line 2270
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_11d

    .line 2271
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v6, v5

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2272
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v6, v5

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2273
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    add-int/2addr v6, v5

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 2274
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    add-int/2addr v6, v5

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    :cond_11d
    const/4 v5, 0x0

    .line 2277
    iput-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 2278
    iput-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    goto/16 :goto_8d

    :cond_11e
    :goto_81
    if-eqz v14, :cond_122

    const/16 v8, 0xc

    .line 2179
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    float-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v8, v11

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    .line 2180
    new-instance v8, Landroid/text/StaticLayout;

    sget-object v29, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    sget-object v31, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v32, 0x3f800000    # 1.0f

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v27, v8

    move-object/from16 v28, v14

    move/from16 v30, v10

    invoke-direct/range {v27 .. v34}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v8, v7, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    .line 2181
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    const/16 v5, 0x12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v8, v10

    sub-int/2addr v0, v8

    .line 2183
    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v10, :cond_120

    .line 2184
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    sub-int/2addr v8, v10

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v8, v10

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    .line 2186
    iget-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v8, :cond_121

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v8

    if-nez v8, :cond_121

    .line 2187
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    const/high16 v10, 0x40f00000    # 7.5f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v10, v9

    sub-int/2addr v8, v10

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    .line 2188
    iget-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    if-eqz v10, :cond_11f

    .line 2189
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    const/4 v11, 0x5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v10, v12

    sub-int/2addr v8, v10

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    goto :goto_82

    :cond_11f
    const/4 v11, 0x5

    .line 2190
    iget-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v10, :cond_121

    .line 2191
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v10, v12

    sub-int/2addr v8, v10

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    .line 2192
    iget-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v10, :cond_121

    .line 2193
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v10, v11

    sub-int/2addr v8, v10

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    goto :goto_82

    .line 2199
    :cond_120
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    iput v10, v7, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    .line 2200
    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v10, v8

    iput v10, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2201
    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v10, v8

    iput v10, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2202
    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    add-int/2addr v10, v8

    iput v10, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 2203
    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    add-int/2addr v10, v8

    iput v10, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    :cond_121
    :goto_82
    const/4 v8, 0x1

    .line 2205
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    goto :goto_83

    :cond_122
    const/4 v8, 0x0

    .line 2207
    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    :goto_83
    if-eqz v6, :cond_128

    .line 2210
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v8, :cond_123

    const/16 v8, 0xc

    .line 2211
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    float-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v8, v11

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    .line 2212
    new-instance v8, Landroid/text/StaticLayout;

    sget-object v29, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    sget-object v31, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v32, 0x3f800000    # 1.0f

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v27, v8

    move-object/from16 v28, v6

    move/from16 v30, v10

    invoke-direct/range {v27 .. v34}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v8, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionLayout:Landroid/text/StaticLayout;

    goto :goto_84

    :cond_123
    const/16 v6, 0xc

    .line 2214
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    .line 2216
    :goto_84
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    const/16 v5, 0x12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v6, v8

    sub-int/2addr v0, v6

    .line 2218
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v8, :cond_125

    .line 2219
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    sub-int/2addr v6, v8

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v6, v8

    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    if-eqz v8, :cond_124

    const/16 v5, 0x12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v8, v10

    goto :goto_85

    :cond_124
    const/4 v8, 0x0

    :goto_85
    sub-int/2addr v6, v8

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    .line 2221
    iget-boolean v6, v7, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v6, :cond_127

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v6

    if-nez v6, :cond_127

    .line 2222
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    const/high16 v8, 0x40f00000    # 7.5f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v8, v9

    sub-int/2addr v6, v8

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    goto :goto_87

    .line 2226
    :cond_125
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    if-eqz v10, :cond_126

    const/16 v5, 0x12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v10, v11

    goto :goto_86

    :cond_126
    const/4 v10, 0x0

    :goto_86
    add-int/2addr v8, v10

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    .line 2227
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v8, v6

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2228
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v8, v6

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2229
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    add-int/2addr v8, v6

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 2230
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    add-int/2addr v8, v6

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    :cond_127
    :goto_87
    const/4 v6, 0x1

    .line 2232
    iput-boolean v6, v7, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    goto :goto_88

    :cond_128
    const/4 v6, 0x0

    .line 2234
    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    .line 2236
    :goto_88
    iget-boolean v6, v7, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    if-eqz v6, :cond_132

    const/16 v6, 0x18

    .line 2237
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v0, v6

    .line 2239
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v8, :cond_12d

    .line 2240
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    const/16 v8, 0x20

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v6, v10

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    .line 2241
    iget-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    if-eqz v8, :cond_12a

    .line 2242
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    if-eqz v8, :cond_129

    const/16 v5, 0x12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v8, v10

    goto :goto_89

    :cond_129
    const/4 v8, 0x0

    :goto_89
    sub-int/2addr v6, v8

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    .line 2244
    :cond_12a
    iget-boolean v6, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    if-eqz v6, :cond_12c

    .line 2245
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    if-eqz v8, :cond_12b

    const/16 v5, 0x12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v8

    goto :goto_8a

    :cond_12b
    const/4 v5, 0x0

    :goto_8a
    sub-int/2addr v6, v5

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    .line 2248
    :cond_12c
    iget-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v5, :cond_132

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v5

    if-nez v5, :cond_132

    .line 2249
    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    const/high16 v6, 0x40f00000    # 7.5f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v9, v6

    sub-int/2addr v5, v9

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    goto :goto_8d

    .line 2253
    :cond_12d
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    .line 2254
    iget-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    if-eqz v9, :cond_12f

    .line 2255
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    if-eqz v9, :cond_12e

    const/16 v5, 0x12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_8b

    :cond_12e
    const/4 v9, 0x0

    :goto_8b
    add-int/2addr v8, v9

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    .line 2257
    :cond_12f
    iget-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    if-eqz v8, :cond_131

    .line 2258
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    if-eqz v9, :cond_130

    const/16 v5, 0x12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v9

    goto :goto_8c

    :cond_130
    const/4 v5, 0x0

    :goto_8c
    add-int/2addr v8, v5

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    .line 2260
    :cond_131
    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v5, v6

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2261
    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v5, v6

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2262
    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    add-int/2addr v5, v6

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 2263
    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    add-int/2addr v5, v6

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    :cond_132
    :goto_8d
    if-eqz v4, :cond_138

    if-nez v2, :cond_133

    move-object/from16 v2, v20

    .line 2286
    :cond_133
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v5, 0x96

    if-le v4, v5, :cond_134

    const/4 v4, 0x0

    .line 2287
    invoke-interface {v2, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2289
    :cond_134
    iget-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v4, :cond_135

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v4, :cond_136

    :cond_135
    if-eqz v1, :cond_137

    .line 2290
    :cond_136
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_8e

    .line 2292
    :cond_137
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTwoNewLinesToOne(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2294
    :goto_8e
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    const/16 v5, 0x11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const/4 v5, 0x0

    invoke-static {v2, v4, v6, v5}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2295
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_138

    .line 2296
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_138

    move-object v2, v4

    :cond_138
    const/16 v4, 0xc

    .line 2302
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2303
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_13a

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_139

    goto :goto_8f

    :cond_139
    const/16 v0, 0x3e

    goto :goto_90

    :cond_13a
    :goto_8f
    const/16 v0, 0x3a

    :goto_90
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonTop:I

    .line 2304
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 2305
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_13c

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_13b

    goto :goto_91

    :cond_13b
    const/16 v0, 0x27

    .line 2308
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    goto :goto_92

    :cond_13c
    :goto_91
    const/16 v0, 0x22

    .line 2306
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    :goto_92
    const/4 v0, 0x0

    .line 2310
    :goto_93
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v6, v5

    if-ge v0, v6, :cond_146

    .line 2311
    aget-object v5, v5, v0

    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonTop:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_93

    .line 2313
    :cond_13d
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_13e

    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v5, :cond_142

    :cond_13e
    if-eqz v1, :cond_142

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v5, :cond_13f

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderDialogsCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_142

    .line 2315
    :cond_13f
    :try_start_3
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_140

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v0

    if-eqz v0, :cond_140

    .line 2316
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v0, v5}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_140

    move-object v1, v0

    .line 2321
    :cond_140
    sget-object v40, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messageNamePaint:Landroid/text/TextPaint;

    sget-object v42, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v43, 0x3f800000    # 1.0f

    const/16 v44, 0x0

    const/16 v45, 0x0

    sget-object v46, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/16 v48, 0x1

    move-object/from16 v39, v1

    move/from16 v41, v4

    move/from16 v47, v4

    invoke-static/range {v39 .. v48}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_94

    :catch_3
    move-exception v0

    .line 2323
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_94
    const/16 v0, 0x33

    .line 2325
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    .line 2326
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameIsEllipsized:Z

    if-eqz v0, :cond_141

    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_141

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_95

    :cond_141
    const/4 v0, 0x0

    :goto_95
    const/4 v5, 0x0

    .line 2327
    :goto_96
    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v8, v6

    if-ge v5, v8, :cond_146

    .line 2328
    aget-object v6, v6, v5

    add-int v8, v16, v0

    const/16 v9, 0x28

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_96

    :cond_142
    const/4 v5, 0x0

    .line 2331
    iput-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_144

    .line 2332
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_143

    goto :goto_97

    :cond_143
    const/16 v0, 0x27

    .line 2339
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    goto :goto_9a

    :cond_144
    :goto_97
    const/16 v5, 0x20

    .line 2333
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    .line 2334
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameIsEllipsized:Z

    if-eqz v0, :cond_145

    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_145

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_98

    :cond_145
    const/4 v0, 0x0

    :goto_98
    const/4 v5, 0x0

    .line 2335
    :goto_99
    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v8, v6

    if-ge v5, v8, :cond_146

    .line 2336
    aget-object v6, v6, v5

    add-int v8, v16, v0

    const/16 v9, 0x15

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_99

    .line 2343
    :cond_146
    :goto_9a
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-eqz v0, :cond_147

    .line 2344
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v0, v5

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    .line 2346
    :cond_147
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v5, 0x1

    new-array v6, v5, [Landroid/text/Layout;

    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    const/4 v8, 0x0

    aput-object v5, v6, v8

    invoke-static {v8, v7, v0, v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 2350
    :try_start_4
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonCreated:Z

    .line 2351
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_148

    .line 2352
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    const/16 v5, 0x11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    move-object/from16 v10, v35

    invoke-static {v10, v0, v5, v8}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2353
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    const/16 v6, 0x1a

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int v6, v4, v6

    int-to-float v6, v6

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v5, v6, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 2354
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int v12, v4, v5

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    .line 2355
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool2:Ljava/util/Stack;

    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-virtual {v0, v5}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 2356
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2357
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool2:Ljava/util/Stack;

    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-static {v7, v0, v5, v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;Ljava/util/Stack;Ljava/util/List;)V

    goto :goto_9b

    :cond_148
    const/4 v5, 0x0

    .line 2359
    iput-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 2364
    :catch_4
    :goto_9b
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v5, 0x1

    new-array v6, v5, [Landroid/text/Layout;

    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    const/4 v8, 0x0

    aput-object v5, v6, v8

    invoke-static {v8, v7, v0, v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 2367
    :try_start_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14b

    .line 2368
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_14a

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_149

    goto :goto_9c

    .line 2371
    :cond_149
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    const/16 v5, 0xc

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int v5, v4, v6

    int-to-float v5, v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v0, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 2372
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v10, v3, v5

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v0

    move v11, v4

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    goto :goto_9d

    .line 2369
    :cond_14a
    :goto_9c
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v28, v0, v5

    sget-object v30, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v31, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    const/16 v33, 0x0

    sget-object v34, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/16 v36, 0x1

    move-object/from16 v27, v3

    move/from16 v29, v4

    move/from16 v32, v0

    move/from16 v35, v4

    invoke-static/range {v27 .. v36}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_9d

    :catch_5
    move-exception v0

    .line 2376
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2382
    :cond_14b
    :goto_9d
    :try_start_6
    instance-of v0, v2, Landroid/text/Spannable;

    if-eqz v0, :cond_14e

    .line 2383
    move-object v0, v2

    check-cast v0, Landroid/text/Spannable;

    .line 2384
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0, v6, v3, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    :goto_9e
    if-ge v6, v5, :cond_14e

    aget-object v8, v3, v6

    .line 2385
    instance-of v9, v8, Landroid/text/style/ClickableSpan;

    if-nez v9, :cond_14c

    instance-of v9, v8, Lorg/telegram/messenger/CodeHighlighting$Span;

    if-nez v9, :cond_14c

    instance-of v9, v8, Lorg/telegram/messenger/CodeHighlighting$ColorSpan;

    if-nez v9, :cond_14c

    instance-of v9, v8, Lorg/telegram/ui/Components/QuoteSpan;

    if-nez v9, :cond_14c

    instance-of v9, v8, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    if-nez v9, :cond_14c

    instance-of v9, v8, Landroid/text/style/StyleSpan;

    if-eqz v9, :cond_14d

    move-object v9, v8

    check-cast v9, Landroid/text/style/StyleSpan;

    invoke-virtual {v9}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_14d

    .line 2386
    :cond_14c
    invoke-interface {v0, v8}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_14d
    add-int/lit8 v6, v6, 0x1

    goto :goto_9e

    .line 2390
    :cond_14e
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_14f

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v3, :cond_150

    :cond_14f
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v3, :cond_150

    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderDialogsCount:I

    const/4 v5, 0x1

    if-le v3, v5, :cond_150

    .line 2393
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v2, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v0, v0, v2

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    move-object v2, v1

    const/4 v9, 0x0

    goto :goto_a0

    :cond_150
    if-nez v0, :cond_151

    .line 2394
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_152

    :cond_151
    if-eqz v1, :cond_154

    .line 2395
    :cond_152
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-nez v0, :cond_153

    instance-of v0, v2, Landroid/text/Spanned;

    if-eqz v0, :cond_153

    move-object v0, v2

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v5, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/4 v6, 0x0

    invoke-interface {v0, v6, v3, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    array-length v0, v0

    if-gtz v0, :cond_153

    .line 2396
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v6, 0x2

    add-int/2addr v5, v6

    mul-int/2addr v3, v5

    sub-int/2addr v3, v6

    const/16 v5, 0xc

    add-int/2addr v3, v5

    const/4 v5, 0x5

    add-int/2addr v3, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int v3, v4, v3

    int-to-float v3, v3

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v0, v3, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_9f

    .line 2398
    :cond_153
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    const/16 v3, 0xc

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int v3, v4, v5

    int-to-float v3, v3

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v0, v3, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_154
    :goto_9f
    move-object v9, v1

    .line 2404
    :goto_a0
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->isForum:Z

    if-eqz v0, :cond_155

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_155

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_a1

    :cond_155
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 2405
    :goto_a1
    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v1, :cond_158

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v1, :cond_156

    goto :goto_a3

    .line 2411
    :cond_156
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v1, :cond_157

    .line 2412
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v5, 0x2

    add-int/2addr v3, v5

    mul-int/2addr v1, v3

    sub-int/2addr v1, v5

    const/4 v3, 0x5

    add-int/2addr v1, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v4, v1

    .line 2413
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_157

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v1

    if-nez v1, :cond_157

    .line 2414
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v6, 0x2

    add-int/2addr v5, v6

    mul-int/2addr v3, v5

    sub-int/2addr v3, v6

    const/4 v5, 0x5

    add-int/2addr v3, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2417
    :cond_157
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v10, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v1

    move-object v9, v2

    move v11, v4

    move-object v12, v0

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    :goto_a2
    move v8, v4

    goto :goto_a5

    :cond_158
    :goto_a3
    const/4 v6, 0x2

    .line 2406
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v1, :cond_159

    if-eqz v9, :cond_159

    const/4 v1, 0x5

    .line 2407
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v4, v1

    .line 2409
    :cond_159
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v13, v5

    const/4 v14, 0x0

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eqz v9, :cond_15a

    const/16 v17, 0x1

    goto :goto_a4

    :cond_15a
    move/from16 v17, v6

    :goto_a4
    move-object v8, v2

    move-object v9, v1

    move v10, v4

    move-object v11, v0

    move/from16 v16, v4

    invoke-static/range {v8 .. v17}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_a2

    .line 2419
    :goto_a5
    :try_start_7
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool:Ljava/util/Stack;

    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 2420
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2421
    iget-object v2, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    const/4 v3, -0x2

    const/4 v4, -0x2

    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool:Ljava/util/Stack;

    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-object/from16 v1, p0

    move/from16 v9, v38

    :try_start_8
    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;IILjava/util/Stack;Ljava/util/List;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_a8

    :catch_6
    move-exception v0

    goto :goto_a6

    :catch_7
    move-exception v0

    move/from16 v9, v38

    :goto_a6
    move v4, v8

    goto :goto_a7

    :catch_8
    move-exception v0

    move/from16 v9, v38

    :goto_a7
    const/4 v1, 0x0

    .line 2423
    iput-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    .line 2424
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v8, v4

    .line 2426
    :goto_a8
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/Layout;

    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v3, v7, v0, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 2430
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_16b

    .line 2431
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_162

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_162

    .line 2432
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v3}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    .line 2433
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v3}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    .line 2434
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    const/16 v4, 0xc

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 2435
    iget-boolean v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v3, :cond_15b

    .line 2436
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v3, v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 2438
    :cond_15b
    iget-boolean v3, v7, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-nez v3, :cond_15c

    iget-boolean v3, v7, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-eqz v3, :cond_15d

    :cond_15c
    iget-boolean v3, v7, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-nez v3, :cond_15d

    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-nez v3, :cond_15d

    .line 2439
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v3, v3

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v5, v5

    sub-double/2addr v5, v1

    add-double/2addr v3, v5

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-double v5, v5

    sub-double/2addr v3, v5

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-double v5, v5

    sub-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    goto/16 :goto_aa

    .line 2440
    :cond_15d
    iget-boolean v3, v7, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v3, :cond_15e

    .line 2441
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v3, v3

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v5, v5

    sub-double/2addr v5, v1

    add-double/2addr v3, v5

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-double v5, v5

    sub-double/2addr v3, v5

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-double v5, v5

    sub-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    goto :goto_aa

    .line 2442
    :cond_15e
    iget-boolean v3, v7, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-eqz v3, :cond_15f

    .line 2443
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v3, v3

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v5, v5

    sub-double/2addr v5, v1

    float-to-double v10, v0

    sub-double/2addr v5, v10

    add-double/2addr v3, v5

    const/16 v5, 0x18

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-double v5, v5

    sub-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    goto :goto_aa

    .line 2444
    :cond_15f
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-eqz v3, :cond_161

    .line 2445
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v3, v3

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v5, v5

    sub-double/2addr v5, v1

    add-double/2addr v3, v5

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-double v5, v5

    sub-double/2addr v3, v5

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_160

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    goto :goto_a9

    :cond_160
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    :goto_a9
    invoke-virtual {v5}, Lorg/telegram/ui/Components/ScamDrawable;->getIntrinsicWidth()I

    move-result v5

    int-to-double v5, v5

    sub-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    goto :goto_aa

    .line 2447
    :cond_161
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v3, v3

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v5, v5

    sub-double/2addr v5, v1

    add-double/2addr v3, v5

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-double v5, v5

    sub-double/2addr v3, v5

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-double v5, v5

    sub-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    :goto_aa
    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_162

    .line 2450
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v3, v0

    cmpg-double v3, v1, v3

    if-gez v3, :cond_162

    .line 2451
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v3, v3

    int-to-double v5, v0

    sub-double/2addr v5, v1

    add-double/2addr v3, v5

    double-to-int v0, v3

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 2455
    :cond_162
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_165

    .line 2456
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_165

    const v1, 0x7fffffff

    move v2, v1

    const/4 v1, 0x0

    :goto_ab
    if-ge v1, v0, :cond_164

    .line 2460
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_163

    .line 2462
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    int-to-double v5, v8

    sub-double/2addr v5, v3

    double-to-int v3, v5

    .line 2463
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_ab

    :cond_163
    const/4 v2, 0x0

    :cond_164
    const v0, 0x7fffffff

    if-eq v2, v0, :cond_165

    .line 2470
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v0, v2

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2474
    :cond_165
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_168

    .line 2475
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_168

    const v1, 0x7fffffff

    move v2, v1

    const/4 v1, 0x0

    :goto_ac
    if-ge v1, v0, :cond_167

    .line 2479
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_166

    .line 2481
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    int-to-double v5, v8

    sub-double/2addr v5, v3

    double-to-int v3, v5

    .line 2482
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_ac

    :cond_166
    const/4 v2, 0x0

    :cond_167
    const v0, 0x7fffffff

    if-eq v2, v0, :cond_168

    .line 2489
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v0, v2

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2493
    :cond_168
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_169

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_169

    .line 2494
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_169

    .line 2496
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    int-to-double v2, v8

    cmpg-double v4, v0, v2

    if-gez v4, :cond_169

    .line 2498
    iget v4, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    int-to-double v4, v4

    sub-double/2addr v2, v0

    add-double/2addr v4, v2

    double-to-int v0, v4

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    .line 2502
    :cond_169
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_176

    .line 2503
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_176

    const v1, 0x7fffffff

    const/4 v2, 0x0

    :goto_ad
    if-ge v2, v0, :cond_16a

    int-to-float v1, v1

    .line 2507
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v2}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_ad

    .line 2509
    :cond_16a
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    add-int/2addr v0, v1

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    goto/16 :goto_b1

    .line 2513
    :cond_16b
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_16f

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_16f

    .line 2514
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v0

    .line 2515
    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v1, :cond_16c

    .line 2516
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-float v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2518
    :cond_16c
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_16e

    .line 2519
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    .line 2520
    iget-boolean v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v3, :cond_16d

    .line 2521
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v3, v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 2525
    :cond_16d
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v4, v3

    cmpg-double v4, v1, v4

    if-gez v4, :cond_16e

    .line 2526
    iget v4, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v4, v4

    int-to-double v10, v3

    sub-double/2addr v10, v1

    sub-double/2addr v4, v10

    double-to-int v1, v4

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 2530
    :cond_16e
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    .line 2533
    :cond_16f
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_171

    .line 2534
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_171

    const/high16 v1, 0x4f000000

    const/4 v2, 0x0

    :goto_ae
    if-ge v2, v0, :cond_170

    .line 2538
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_ae

    .line 2540
    :cond_170
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2543
    :cond_171
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_173

    .line 2544
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_173

    const/high16 v1, 0x4f000000

    const/4 v2, 0x0

    :goto_af
    if-ge v2, v0, :cond_172

    .line 2548
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_af

    .line 2550
    :cond_172
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 2553
    :cond_173
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_175

    .line 2554
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_175

    const/high16 v1, 0x4f000000

    const/4 v2, 0x0

    :goto_b0
    if-ge v2, v0, :cond_174

    .line 2558
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_b0

    .line 2560
    :cond_174
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2563
    :cond_175
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_176

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_176

    .line 2564
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    int-to-float v0, v0

    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    .line 2567
    :cond_176
    :goto_b1
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_179

    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    if-ltz v1, :cond_179

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_179

    if-ltz v9, :cond_177

    add-int/lit8 v6, v9, 0x1

    .line 2569
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v6, v0, :cond_177

    .line 2570
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 2571
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v6}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v1

    goto :goto_b2

    .line 2573
    :cond_177
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 2574
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v1

    :goto_b2
    cmpg-float v2, v0, v1

    if-gez v2, :cond_178

    .line 2577
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableLeft:I

    goto :goto_b3

    .line 2579
    :cond_178
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableLeft:I

    .line 2582
    :cond_179
    :goto_b3
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

    .line 325
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->computeHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 326
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 5239
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 5240
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->checkOnTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 5242
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawAvatarOverlays(Landroid/graphics/Canvas;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4299
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3e

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v2, :cond_3e

    .line 4300
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    const/4 v4, 0x1

    if-lez v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isOnline()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->hasCall:Z

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->showTtl:Z

    .line 4301
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    const/16 v7, 0x9

    const/4 v8, 0x0

    if-eqz v5, :cond_c

    if-nez v2, :cond_1

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    cmpl-float v2, v2, v8

    if-lez v2, :cond_c

    .line 4302
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TimerDrawable;->getTime()I

    move-result v2

    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    if-eq v2, v5, :cond_3

    if-lez v5, :cond_3

    .line 4303
    :cond_2
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    invoke-static {v2}, Lorg/telegram/ui/Components/TimerDrawable;->getTtlIconForDialogs(I)Lorg/telegram/ui/Components/TimerDrawable;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    .line 4305
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_4

    .line 4306
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    .line 4307
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint2:Landroid/graphics/Paint;

    const/high16 v5, 0x32000000

    .line 4308
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 4310
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    float-to-int v2, v2

    .line 4312
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_5

    .line 4313
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v5, v9

    goto :goto_1

    .line 4315
    :cond_5
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v5, v9

    :goto_1
    float-to-int v5, v5

    .line 4317
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    const/16 v10, 0x16

    .line 4318
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    .line 4317
    invoke-virtual {v9, v3, v3, v11, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4321
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/TimerDrawable;->setTime(I)V

    .line 4322
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->updateThumbShaderMatrix()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 4323
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v10, v9, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    if-eqz v10, :cond_6

    .line 4324
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    .line 4325
    :cond_6
    iget-object v9, v9, Lorg/telegram/messenger/ImageReceiver;->staticThumbShader:Landroid/graphics/BitmapShader;

    if-eqz v9, :cond_a

    .line 4326
    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    .line 4329
    :cond_7
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 4330
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_8

    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_8

    .line 4331
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->getDominantColor(Landroid/graphics/Bitmap;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 4332
    :cond_8
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    instance-of v9, v9, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    if-eqz v9, :cond_9

    .line 4333
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    .line 4334
    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    iget-object v9, v9, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/GradientTools;->getAverageColor()I

    move-result v9

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 4336
    :cond_9
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor2()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 4339
    :cond_a
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4340
    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v10, v6, v10

    mul-float/2addr v9, v10

    .line 4341
    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v10, :cond_b

    .line 4342
    invoke-virtual {v10}, Lorg/telegram/ui/Components/CheckBox2;->getProgress()F

    move-result v10

    sub-float v10, v6, v10

    mul-float/2addr v9, v10

    :cond_b
    int-to-float v5, v5

    int-to-float v2, v2

    .line 4344
    invoke-virtual {v1, v9, v9, v5, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/high16 v9, 0x41300000    # 11.0f

    .line 4345
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v2, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4346
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v2, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4347
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4348
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    sub-float/2addr v5, v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    sub-float/2addr v2, v9

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4349
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/TimerDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4350
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4351
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4353
    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    const v10, 0x3dda740e

    const/4 v11, 0x6

    const/4 v12, 0x3

    const/4 v13, 0x5

    const/4 v14, 0x4

    if-eqz v2, :cond_1a

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->isSupportUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v2, :cond_1a

    .line 4354
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isOnline()Z

    move-result v2

    .line 4355
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->wasDrawnOnline:Z

    if-nez v2, :cond_d

    .line 4356
    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_19

    .line 4357
    :cond_d
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v7, v7, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-boolean v15, v0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v15, :cond_f

    sget-boolean v15, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v15, :cond_e

    goto :goto_3

    :cond_e
    const/16 v5, 0x8

    goto :goto_4

    :cond_f
    :goto_3
    move v5, v11

    :goto_4
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v7, v5

    float-to-int v5, v7

    .line 4359
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_12

    .line 4360
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v7, v7, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-boolean v15, v0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v15, :cond_11

    sget-boolean v15, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v15, :cond_10

    goto :goto_5

    :cond_10
    move v9, v11

    goto :goto_6

    :cond_11
    :goto_5
    const/16 v9, 0xa

    :goto_6
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v7, v9

    goto :goto_9

    .line 4362
    :cond_12
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v7, v7, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-boolean v15, v0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v15, :cond_14

    sget-boolean v15, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v15, :cond_13

    goto :goto_7

    :cond_13
    move v9, v11

    goto :goto_8

    :cond_14
    :goto_7
    const/16 v9, 0xa

    :goto_8
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v7, v9

    :goto_9
    float-to-int v7, v7

    .line 4365
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v15, v0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v11, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 4367
    iget-boolean v9, v0, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v9, :cond_15

    .line 4368
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v9, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v9, v11

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v11, v11, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v11, v15

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    iget v3, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    mul-float/2addr v15, v3

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v11, v15, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_a

    :cond_15
    int-to-float v3, v7

    int-to-float v9, v5

    const/4 v11, 0x7

    .line 4370
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    iget v15, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    mul-float/2addr v11, v15

    sget-object v15, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v9, v11, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4371
    :goto_a
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chats_onlineCircle:I

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v9, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 4373
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v3, :cond_16

    .line 4374
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    mul-float/2addr v7, v9

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v7, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_b

    :cond_16
    int-to-float v3, v7

    int-to-float v5, v5

    .line 4376
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    mul-float/2addr v7, v9

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v7, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_b
    if-eqz v2, :cond_17

    .line 4378
    iget v1, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    cmpg-float v2, v1, v6

    if-gez v2, :cond_19

    add-float/2addr v1, v10

    .line 4379
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_18

    .line 4381
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    goto :goto_c

    .line 4386
    :cond_17
    iget v1, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    cmpl-float v2, v1, v8

    if-lez v2, :cond_19

    sub-float/2addr v1, v10

    .line 4387
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    cmpg-float v1, v1, v8

    if-gez v1, :cond_18

    .line 4389
    iput v8, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    :cond_18
    :goto_c
    move v3, v4

    goto/16 :goto_1e

    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_1e

    .line 4395
    :cond_1a
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_39

    .line 4396
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->call_active:Z

    if-eqz v3, :cond_1b

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->call_not_empty:Z

    if-eqz v2, :cond_1b

    move v2, v4

    goto :goto_d

    :cond_1b
    const/4 v2, 0x0

    :goto_d
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->hasCall:Z

    if-nez v2, :cond_1c

    .line 4397
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_39

    :cond_1c
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_39

    .line 4398
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CheckBox2;->getProgress()F

    move-result v2

    sub-float v2, v6, v2

    goto :goto_e

    :cond_1d
    move v2, v6

    .line 4399
    :goto_e
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-boolean v15, v0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v15, :cond_1f

    sget-boolean v15, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v15, :cond_1e

    goto :goto_f

    :cond_1e
    const/16 v15, 0x8

    goto :goto_10

    :cond_1f
    :goto_f
    move v15, v11

    :goto_10
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v3, v15

    float-to-int v3, v3

    .line 4401
    sget-boolean v15, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v15, :cond_22

    .line 4402
    iget-object v15, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v15, v15, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->left:F

    iget-boolean v9, v0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v9, :cond_21

    sget-boolean v9, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v9, :cond_20

    goto :goto_11

    :cond_20
    move v9, v11

    goto :goto_12

    :cond_21
    :goto_11
    const/16 v9, 0xa

    :goto_12
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v15, v9

    float-to-int v9, v15

    goto :goto_15

    .line 4404
    :cond_22
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v9, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-boolean v15, v0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v15, :cond_24

    sget-boolean v15, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v15, :cond_23

    goto :goto_13

    :cond_23
    move/from16 v16, v11

    goto :goto_14

    :cond_24
    :goto_13
    const/16 v16, 0xa

    :goto_14
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v9, v15

    float-to-int v9, v9

    .line 4407
    :goto_15
    iget-boolean v15, v0, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v15, :cond_26

    .line 4408
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v3, v9

    float-to-int v3, v3

    .line 4409
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_25

    .line 4410
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v9, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v9, v15

    goto :goto_16

    .line 4412
    :cond_25
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v9, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v9, v15

    :goto_16
    float-to-int v9, v9

    .line 4417
    :cond_26
    iget v15, v0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v15, v15, v8

    if-eqz v15, :cond_27

    .line 4418
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4419
    iget v15, v0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v15, v6, v15

    int-to-float v10, v9

    int-to-float v5, v3

    .line 4420
    invoke-virtual {v1, v15, v15, v10, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4422
    :cond_27
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v15, v0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v15

    invoke-virtual {v5, v15}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v5, v9

    int-to-float v3, v3

    const/16 v15, 0xb

    .line 4423
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    mul-float/2addr v15, v8

    mul-float/2addr v15, v2

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v3, v15, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4424
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_chats_onlineCircle:I

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v15, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 4425
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    mul-float/2addr v6, v7

    mul-float/2addr v6, v2

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v3, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4426
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    const v6, 0x81e0

    .line 4430
    invoke-static {v6}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_28

    const v7, 0x3f266666    # 0.65f

    .line 4431
    iput v7, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    .line 4433
    :cond_28
    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->progressStage:I

    const/4 v8, 0x2

    if-nez v7, :cond_29

    .line 4434
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float/2addr v10, v11

    add-float/2addr v7, v10

    .line 4435
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    :goto_17
    mul-float/2addr v8, v11

    sub-float/2addr v10, v8

    goto/16 :goto_1b

    :cond_29
    if-ne v7, v4, :cond_2a

    .line 4437
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float/2addr v8, v10

    sub-float/2addr v7, v8

    .line 4438
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    :goto_18
    mul-float/2addr v10, v11

    add-float/2addr v10, v8

    goto/16 :goto_1b

    :cond_2a
    if-ne v7, v8, :cond_2b

    .line 4440
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float/2addr v8, v10

    add-float/2addr v7, v8

    .line 4441
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    :goto_19
    mul-float/2addr v10, v11

    sub-float v10, v8, v10

    goto/16 :goto_1b

    :cond_2b
    if-ne v7, v12, :cond_2c

    .line 4443
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float/2addr v10, v11

    sub-float/2addr v7, v10

    .line 4444
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    :goto_1a
    mul-float/2addr v8, v11

    add-float/2addr v10, v8

    goto/16 :goto_1b

    :cond_2c
    if-ne v7, v14, :cond_2d

    .line 4446
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float/2addr v10, v11

    add-float/2addr v7, v10

    .line 4447
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    goto/16 :goto_17

    :cond_2d
    if-ne v7, v13, :cond_2e

    .line 4449
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float/2addr v8, v10

    sub-float/2addr v7, v8

    .line 4450
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    goto :goto_18

    :cond_2e
    if-ne v7, v11, :cond_2f

    .line 4452
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float/2addr v8, v10

    add-float/2addr v7, v8

    .line 4453
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    goto :goto_19

    .line 4455
    :cond_2f
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float/2addr v10, v11

    sub-float/2addr v7, v10

    .line 4456
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    goto :goto_1a

    .line 4459
    :goto_1b
    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v8, v8, v11

    if-ltz v8, :cond_30

    cmpg-float v8, v2, v11

    if-gez v8, :cond_31

    .line 4460
    :cond_30
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4461
    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    mul-float v11, v8, v2

    mul-float/2addr v8, v2

    invoke-virtual {v1, v11, v8, v5, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4463
    :cond_31
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int v8, v9, v8

    int-to-float v8, v8

    sub-float v11, v3, v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v9

    int-to-float v14, v14

    add-float/2addr v7, v3

    invoke-virtual {v5, v8, v11, v14, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4464
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v7, v8, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4466
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int v7, v9, v7

    int-to-float v7, v7

    sub-float v8, v3, v10

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int v11, v9, v11

    int-to-float v11, v11

    add-float/2addr v3, v10

    invoke-virtual {v5, v7, v8, v11, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4467
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v7, v10, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4469
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v7, v9

    int-to-float v7, v7

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v5, v7, v8, v9, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4470
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4471
    iget v3, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_32

    cmpg-float v2, v2, v5

    if-gez v2, :cond_33

    .line 4472
    :cond_32
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4475
    :cond_33
    invoke-static {v6}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 4476
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    const v3, 0x3d23d70a    # 0.04f

    add-float/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_34

    const/4 v2, 0x0

    .line 4478
    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    .line 4479
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->progressStage:I

    add-int/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->progressStage:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_34

    const/4 v2, 0x0

    .line 4481
    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->progressStage:I

    :cond_34
    move v3, v4

    goto :goto_1c

    :cond_35
    const/4 v2, 0x0

    move v3, v2

    .line 4487
    :goto_1c
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->hasCall:Z

    if-eqz v2, :cond_37

    .line 4488
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v2, v5

    if-gez v6, :cond_36

    const v6, 0x3dda740e

    add-float/2addr v2, v6

    .line 4489
    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_36

    .line 4491
    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    :cond_36
    const/4 v5, 0x0

    goto :goto_1d

    :cond_37
    const v6, 0x3dda740e

    .line 4495
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    const/4 v5, 0x0

    cmpl-float v7, v2, v5

    if-lez v7, :cond_38

    sub-float/2addr v2, v6

    .line 4496
    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_38

    .line 4498
    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    .line 4504
    :cond_38
    :goto_1d
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_3a

    .line 4505
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1e

    :cond_39
    const/4 v2, 0x0

    move v3, v2

    .line 4510
    :cond_3a
    :goto_1e
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell;->showTtl:Z

    if-eqz v1, :cond_3c

    .line 4511
    iget v1, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v5, v1, v2

    if-gez v5, :cond_3b

    const v2, 0x3dda740e

    add-float/2addr v1, v2

    .line 4512
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    move v3, v4

    :cond_3b
    const/4 v5, 0x0

    goto :goto_1f

    :cond_3c
    const v2, 0x3dda740e

    .line 4516
    iget v1, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    const/4 v5, 0x0

    cmpl-float v6, v1, v5

    if-lez v6, :cond_3d

    sub-float/2addr v1, v2

    .line 4517
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    move v3, v4

    .line 4521
    :cond_3d
    :goto_1f
    iget v1, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    goto :goto_20

    :cond_3e
    move v2, v3

    move v3, v2

    :goto_20
    return v3
.end method

.method protected drawLock2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClipProgress()F
    .locals 1

    .line 5265
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    return v0
.end method

.method public getCurrentDialogFolderId()I
    .locals 1

    .line 5281
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    return v0
.end method

.method public getDialogId()J
    .locals 2

    .line 761
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    return-wide v0
.end method

.method public getHasUnread()Z
    .locals 1

    .line 924
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

    .line 928
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    return v0
.end method

.method public getIsPinned()Z
    .locals 1

    .line 932
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

    .line 5289
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .line 765
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->messageId:I

    return v0
.end method

.method public getMessageNameString()Ljava/lang/String;
    .locals 8

    .line 5027
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 5033
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v2

    .line 5034
    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5035
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

    .line 5037
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 5040
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5041
    sget v0, Lorg/telegram/messenger/R$string;->FromYou:I

    const-string v1, "FromYou"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5042
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

    .line 5043
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5044
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

    .line 5047
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_5

    goto :goto_1

    .line 5054
    :cond_5
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5048
    :cond_6
    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5049
    sget v0, Lorg/telegram/messenger/R$string;->HiddenName:I

    const-string v1, "HiddenName"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5051
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

    .line 5056
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 5057
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, "DELETED"

    return-object v0
.end method

.method public getMessageStringFormatted(ILjava/lang/String;Ljava/lang/CharSequence;Z)Landroid/text/SpannableStringBuilder;
    .locals 11

    .line 5065
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->getCaptionMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 5066
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x1

    .line 5067
    iput-boolean v3, p0, Lorg/telegram/ui/Cells/DialogCell;->applyName:Z

    .line 5068
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5069
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/DialogCell;->formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    goto/16 :goto_b

    .line 5070
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    .line 5072
    iget-object v0, p2, Lorg/telegram/messenger/MessageObject;->messageTextShort:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v1, :cond_2

    goto :goto_1

    .line 5075
    :cond_2
    iget-object v0, p2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 5077
    :cond_3
    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->isTopicActionMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 5078
    invoke-direct {p0, p1, v0, p3}, Lorg/telegram/ui/Cells/DialogCell;->formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 5079
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->topicIconDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object p2, p2, v6

    instance-of p2, p2, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    if-eqz p2, :cond_5

    .line 5080
    iget p2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    neg-long v0, v0

    iget-object p3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object p3, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {p3, v3}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result p3

    invoke-virtual {p2, v0, v1, p3}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 5082
    iget-object p3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object p3, p3, Lorg/telegram/messenger/MessageObject;->topicIconDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object p3, p3, v6

    check-cast p3, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_color:I

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;->setColor(I)V

    goto :goto_2

    .line 5086
    :cond_4
    iput-boolean v6, p0, Lorg/telegram/ui/Cells/DialogCell;->applyName:Z

    .line 5087
    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    :cond_5
    :goto_2
    if-eqz p4, :cond_2e

    .line 5090
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DialogCell;->applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto/16 :goto_b

    :cond_6
    const-string v5, ": "

    const/16 v7, 0x82

    const/16 v8, 0x108

    const/16 v9, 0x96

    if-eqz v0, :cond_14

    .line 5092
    iget-object v10, v0, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v10, :cond_14

    .line 5094
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5096
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->needEmoji:Z

    if-nez v1, :cond_7

    const-string v1, ""

    goto :goto_3

    .line 5098
    :cond_7
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "\ud83d\udcf9 "

    goto :goto_3

    .line 5100
    :cond_8
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "\ud83c\udfa4 "

    goto :goto_3

    .line 5102
    :cond_9
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "\ud83c\udfa7 "

    goto :goto_3

    .line 5104
    :cond_a
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "\ud83d\uddbc "

    goto :goto_3

    :cond_b
    const-string v1, "\ud83d\udcce "

    .line 5109
    :goto_3
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 5110
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlight:Ljava/lang/CharSequence;

    .line 5111
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    iget p4, p0, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 p4, p4, 0x17

    add-int/lit8 p4, p4, 0x18

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    sub-int/2addr p2, p4

    .line 5112
    iget-boolean p4, p0, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    if-eqz p4, :cond_d

    .line 5113
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_c

    int-to-float p2, p2

    .line 5114
    iget-object p4, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p3

    sub-float/2addr p2, p3

    float-to-int p2, p2

    :cond_c
    int-to-float p2, p2

    .line 5116
    iget-object p3, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p3, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p3

    sub-float/2addr p2, p3

    float-to-int p2, p2

    :cond_d
    if-lez p2, :cond_e

    .line 5119
    iget-object p3, v0, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object p4, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-static {p1, p3, p2, p4, v7}, Lorg/telegram/messenger/AndroidUtilities;->ellipsizeCenterEnd(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5121
    :cond_e
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    goto/16 :goto_b

    .line 5123
    :cond_f
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v9, :cond_10

    .line 5124
    invoke-interface {p2, v6, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 5126
    :cond_10
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5128
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->spoilLoginCode()V

    .line 5130
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-static {v4, p2, v3, v8}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/text/Spannable;I)V

    .line 5131
    iget-object p2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p2, :cond_12

    .line 5132
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    if-nez v0, :cond_11

    goto :goto_4

    :cond_11
    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    :goto_4
    invoke-static {p2, v3, v2}, Lorg/telegram/messenger/MediaDataController;->addAnimatedEmojiSpans(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 5134
    :cond_12
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    if-eqz p4, :cond_13

    .line 5136
    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/DialogCell;->applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 5138
    :cond_13
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/DialogCell;->formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    goto/16 :goto_b

    .line 5140
    :cond_14
    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/16 v4, 0xa

    if-eqz v0, :cond_22

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result p2

    if-nez p2, :cond_22

    .line 5141
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object p2, p2, v0

    iput-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 5143
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_attachMessage:I

    .line 5144
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    const/4 v7, 0x2

    const/16 v8, 0x12

    if-eqz v5, :cond_16

    .line 5145
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 5146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_15

    new-array v0, v3, [Ljava/lang/Object;

    .line 5147
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    aput-object v1, v0, v6

    const-string v1, "\ud83d\udcca \u2068%s\u2069"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_15
    new-array v0, v3, [Ljava/lang/Object;

    .line 5149
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    aput-object v1, v0, v6

    const-string v1, "\ud83d\udcca %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 5151
    :cond_16
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v5, :cond_18

    .line 5152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_17

    new-array v0, v3, [Ljava/lang/Object;

    .line 5153
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    aput-object v1, v0, v6

    const-string v1, "\ud83c\udfae \u2068%s\u2069"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_17
    new-array v0, v3, [Ljava/lang/Object;

    .line 5155
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    aput-object v1, v0, v6

    const-string v1, "\ud83c\udfae %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 5157
    :cond_18
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v5, :cond_19

    .line 5158
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    goto/16 :goto_8

    .line 5159
    :cond_19
    iget v2, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v5, 0xe

    if-ne v2, v5, :cond_1b

    .line 5160
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v8, :cond_1a

    new-array v1, v7, [Ljava/lang/Object;

    .line 5161
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "\ud83c\udfa7 \u2068%s - %s\u2069"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_1a
    new-array v1, v7, [Ljava/lang/Object;

    .line 5163
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "\ud83c\udfa7 %s - %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 5165
    :cond_1b
    iget p2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-le p2, v3, :cond_1f

    .line 5166
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    if-eqz p2, :cond_1d

    .line 5167
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    if-nez p2, :cond_1c

    move p2, v6

    goto :goto_5

    :cond_1c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_5
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "Media"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_7

    .line 5169
    :cond_1d
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    if-nez p2, :cond_1e

    move p2, v6

    goto :goto_6

    :cond_1e
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_6
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "Photos"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_7
    move-object v0, p2

    .line 5171
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionMessage:I

    goto :goto_8

    .line 5173
    :cond_1f
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5174
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionMessage:I

    :goto_8
    const/16 v1, 0x20

    .line 5176
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_20

    .line 5179
    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/DialogCell;->applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5181
    :cond_20
    invoke-direct {p0, p1, v0, p3}, Lorg/telegram/ui/Cells/DialogCell;->formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 5182
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result p4

    if-nez p4, :cond_2e

    .line 5184
    :try_start_0
    new-instance p4, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p4, p2, v0}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    if-eqz p2, :cond_21

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    add-int/lit8 v6, p2, 0x2

    :cond_21
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    const/16 p3, 0x21

    invoke-virtual {p1, p4, v6, p2, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_b

    :catch_0
    move-exception p2

    .line 5186
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 5189
    :cond_22
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 5191
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result p2

    if-eqz p2, :cond_26

    .line 5192
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlight:Ljava/lang/CharSequence;

    if-eqz p2, :cond_23

    move-object v0, p2

    .line 5195
    :cond_23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v1, v1, 0x17

    add-int/2addr v1, v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr p2, v1

    .line 5196
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    if-eqz v1, :cond_25

    .line 5197
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    int-to-float p2, p2

    .line 5198
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr p2, v1

    float-to-int p2, p2

    :cond_24
    int-to-float p2, p2

    .line 5200
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr p2, v1

    float-to-int p2, p2

    :cond_25
    if-lez p2, :cond_28

    .line 5203
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-static {v0, v1, p2, v3, v7}, Lorg/telegram/messenger/AndroidUtilities;->ellipsizeCenterEnd(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 5206
    :cond_26
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-le p2, v9, :cond_27

    .line 5207
    invoke-interface {v0, v6, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5209
    :cond_27
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5211
    :cond_28
    :goto_9
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5212
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_29

    .line 5213
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->spoilLoginCode()V

    .line 5215
    :cond_29
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-static {v0, p2, v8}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Lorg/telegram/messenger/MessageObject;Landroid/text/Spannable;I)V

    .line 5216
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_2b

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_2b

    .line 5217
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    if-nez v1, :cond_2a

    goto :goto_a

    :cond_2a
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    :goto_a
    invoke-static {v0, p2, v2}, Lorg/telegram/messenger/MediaDataController;->addAnimatedEmojiSpans(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)V

    :cond_2b
    if-eqz p4, :cond_2c

    .line 5220
    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/DialogCell;->applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 5222
    :cond_2c
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/DialogCell;->formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    goto :goto_b

    .line 5224
    :cond_2d
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    :cond_2e
    :goto_b
    return-object p1
.end method

.method public getTranslationX()F
    .locals 1

    .line 3269
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 5441
    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->animationInProgress:Z

    if-eqz v0, :cond_0

    return-void

    .line 5444
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 1

    .line 5449
    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->animationInProgress:Z

    if-eqz v0, :cond_0

    return-void

    .line 5452
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 4768
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4771
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 4769
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

    .line 5285
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

    .line 2831
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

    .line 2679
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

    .line 270
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->moving:Z

    return v0
.end method

.method public isPointInsideAvatar(FF)Z
    .locals 3

    .line 2751
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x3c

    if-nez p2, :cond_1

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    .line 2752
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 2754
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
    move v0, v1

    :goto_1
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 807
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 808
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    const/4 v0, 0x0

    move v1, v0

    .line 809
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 810
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 812
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->resetPinnedArchiveState()V

    .line 813
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/text/Layout;

    iget-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    aput-object v4, v3, v0

    invoke-static {v0, p0, v1, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 814
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v3, v2, [Landroid/text/Layout;

    iget-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    aput-object v4, v3, v0

    invoke-static {v0, p0, v1, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 815
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v3, v2, [Landroid/text/Layout;

    iget-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    aput-object v4, v3, v0

    invoke-static {v0, p0, v1, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 816
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v2, v2, [Landroid/text/Layout;

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    aput-object v3, v2, v0

    invoke-static {v0, p0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 817
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    .line 818
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .line 774
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 775
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    .line 776
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawRevealBackground:Z

    const/4 v1, 0x0

    .line 777
    iput v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    .line 778
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->attachedToWindow:Z

    .line 779
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    .line 780
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    move v2, v0

    .line 781
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 782
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 784
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 785
    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 786
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 787
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 788
    iput-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 789
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->translationAnimationStarted:Z

    .line 791
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    if-eqz v0, :cond_3

    .line 792
    iget-wide v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->remove(J)V

    .line 794
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_4

    .line 795
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    .line 797
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 798
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 799
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 800
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 801
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->onDetachFromWindow()V

    .line 802
    iput-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 41

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    .line 3307
    iget-wide v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    if-nez v0, :cond_0

    return-void

    .line 3310
    :cond_0
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->visibleOnScreen:Z

    if-nez v0, :cond_1

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawingForBlur:Z

    if-nez v0, :cond_1

    return-void

    .line 3316
    :cond_1
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawArchive:Z

    const/4 v15, 0x0

    const/4 v14, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_4

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_2

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_4

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v0, :cond_4

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v0, v14, :cond_4

    :cond_2
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz v0, :cond_4

    iget v0, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outProgress:F

    cmpl-float v0, v0, v13

    if-nez v0, :cond_4

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, v0, v13

    if-nez v0, :cond_4

    .line 3317
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawingForBlur:Z

    if-nez v0, :cond_3

    .line 3318
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3319
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOffset:F

    sub-float/2addr v0, v1

    invoke-virtual {v8, v13, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3320
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v8, v15, v15, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3321
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/PullForegroundDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 3322
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void

    .line 3327
    :cond_4
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    cmpl-float v0, v0, v13

    const/16 v12, 0x18

    if-eqz v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v0, v12, :cond_5

    .line 3328
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3329
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->topClip:I

    int-to-float v0, v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    mul-float/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->bottomClip:I

    int-to-float v3, v3

    iget v4, v9, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v8, v13, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 3333
    :cond_5
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, v0, v13

    const/high16 v19, 0x40000000    # 2.0f

    const/4 v11, 0x3

    const/16 v20, 0xa

    const/16 v21, 0x10

    const/16 v22, 0x8

    const/4 v10, 0x4

    const/4 v7, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v0, :cond_8

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_6

    goto :goto_0

    .line 3509
    :cond_6
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_7

    .line 3510
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 3511
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 3512
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x0

    .line 3513
    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3514
    iput-boolean v15, v9, Lorg/telegram/ui/Cells/DialogCell;->translationAnimationStarted:Z

    :cond_7
    move v15, v6

    goto/16 :goto_c

    .line 3334
    :cond_8
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3335
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v8, v13, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3339
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeAction:Z

    if-eqz v0, :cond_9

    .line 3340
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionBackgroundColorKey:I

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3341
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionRevealBackgroundColorKey:I

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 3342
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionStringKey:Ljava/lang/String;

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionStringId:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3343
    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    :goto_1
    move v5, v1

    move-object v4, v2

    goto/16 :goto_4

    .line 3344
    :cond_9
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_b

    .line 3345
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    if-eqz v0, :cond_a

    .line 3346
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3347
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 3348
    sget v3, Lorg/telegram/messenger/R$string;->UnhideFromTop:I

    const-string v2, "UnhideFromTop"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3349
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unpinArchiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto :goto_1

    .line 3351
    :cond_a
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3352
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 3353
    sget v3, Lorg/telegram/messenger/R$string;->HideOnTop:I

    const-string v2, "HideOnTop"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3354
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinArchiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto :goto_1

    .line 3357
    :cond_b
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->promoDialog:Z

    if-eqz v0, :cond_c

    .line 3358
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3359
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 3360
    sget v3, Lorg/telegram/messenger/R$string;->PsaHide:I

    const-string v2, "PsaHide"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3361
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto :goto_1

    .line 3362
    :cond_c
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    if-nez v0, :cond_15

    .line 3363
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3364
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 3365
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v2

    if-ne v2, v11, :cond_e

    .line 3366
    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-eqz v2, :cond_d

    .line 3367
    sget v3, Lorg/telegram/messenger/R$string;->SwipeUnmute:I

    const-string v2, "SwipeUnmute"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3368
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeUnmuteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3370
    :cond_d
    sget v3, Lorg/telegram/messenger/R$string;->SwipeMute:I

    const-string v2, "SwipeMute"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3371
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeMuteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3373
    :cond_e
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v2

    if-ne v2, v10, :cond_f

    .line 3374
    sget v3, Lorg/telegram/messenger/R$string;->SwipeDeleteChat:I

    const-string v0, "SwipeDeleteChat"

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3375
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSwipeRemove:I

    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3376
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeDeleteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3377
    :cond_f
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v2

    if-ne v2, v14, :cond_12

    .line 3378
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-gtz v2, :cond_11

    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-eqz v2, :cond_10

    goto :goto_2

    .line 3382
    :cond_10
    sget v3, Lorg/telegram/messenger/R$string;->SwipeMarkAsUnread:I

    const-string v2, "SwipeMarkAsUnread"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3383
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeUnreadDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3379
    :cond_11
    :goto_2
    sget v3, Lorg/telegram/messenger/R$string;->SwipeMarkAsRead:I

    const-string v2, "SwipeMarkAsRead"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3380
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeReadDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3385
    :cond_12
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v2

    if-nez v2, :cond_14

    .line 3386
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3387
    sget v3, Lorg/telegram/messenger/R$string;->SwipeUnpin:I

    const-string v2, "SwipeUnpin"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3388
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeUnpinDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3390
    :cond_13
    sget v3, Lorg/telegram/messenger/R$string;->SwipePin:I

    const-string v2, "SwipePin"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3391
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipePinDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3394
    :cond_14
    sget v3, Lorg/telegram/messenger/R$string;->Archive:I

    const-string v2, "Archive"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3395
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3398
    :cond_15
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3399
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 3400
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    if-ne v2, v7, :cond_16

    sget v2, Lorg/telegram/messenger/R$string;->hidden_chats_unhide_chats:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    move v3, v15

    goto :goto_3

    :cond_16
    sget v2, Lorg/telegram/messenger/R$string;->Unarchive:I

    const-string v3, "Unarchive"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v40, v3

    move v3, v2

    move-object/from16 v2, v40

    .line 3401
    :goto_3
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unarchiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3405
    :goto_4
    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeCanceled:Z

    if-eqz v1, :cond_17

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->lastDrawTranslationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_17

    .line 3406
    iput-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3407
    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->lastDrawSwipeMessageStringId:I

    goto :goto_5

    .line 3409
    :cond_17
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->lastDrawTranslationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3410
    iput v3, v9, Lorg/telegram/ui/Cells/DialogCell;->lastDrawSwipeMessageStringId:I

    .line 3413
    :goto_5
    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->translationAnimationStarted:Z

    const/16 v16, 0x2b

    if-nez v1, :cond_18

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_18

    .line 3414
    iput-boolean v14, v9, Lorg/telegram/ui/Cells/DialogCell;->translationAnimationStarted:Z

    .line 3415
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v13}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 3416
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3417
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 3420
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    add-float/2addr v2, v1

    .line 3421
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpg-float v1, v1, v6

    if-gez v1, :cond_1a

    .line 3422
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3423
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v2, v0

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    sget-object v23, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    move/from16 v24, v1

    move-object/from16 v1, p1

    move v11, v2

    move v2, v0

    move v0, v3

    move/from16 v3, v17

    move-object v12, v4

    move/from16 v4, v24

    move v10, v5

    move v5, v6

    move-object/from16 v6, v23

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3424
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpl-float v1, v1, v13

    if-nez v1, :cond_1b

    .line 3425
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawableRecolored:Z

    if-eqz v1, :cond_19

    .line 3426
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v2

    const-string v3, "Arrow.**"

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3427
    sput-boolean v15, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawableRecolored:Z

    .line 3429
    :cond_19
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawableRecolored:Z

    if-eqz v1, :cond_1b

    .line 3430
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 3431
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v3

    const-string v4, "Line 1.**"

    invoke-virtual {v1, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3432
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v3

    const-string v4, "Line 2.**"

    invoke-virtual {v1, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3433
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v2

    const-string v3, "Line 3.**"

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3434
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    .line 3435
    sput-boolean v15, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawableRecolored:Z

    goto :goto_6

    :cond_1a
    move v11, v2

    move v0, v3

    move-object v12, v4

    move v10, v5

    .line 3439
    :cond_1b
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result v2

    div-int/2addr v2, v7

    sub-int/2addr v1, v2

    .line 3440
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    const/16 v3, 0x36

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/2addr v2, v7

    .line 3442
    iget-boolean v3, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v3, :cond_1c

    .line 3443
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 3444
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v9, v2}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result v2

    .line 3447
    :cond_1c
    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result v3

    div-int/2addr v3, v7

    add-int/2addr v3, v1

    .line 3448
    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicHeight()I

    move-result v4

    div-int/2addr v4, v7

    add-int/2addr v4, v2

    .line 3450
    iget v5, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpl-float v5, v5, v13

    if-lez v5, :cond_1e

    .line 3451
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3452
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v11, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v8, v5, v13, v6, v15}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 3453
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    mul-int v5, v3, v3

    .line 3455
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v10

    sub-int v10, v4, v10

    mul-int/2addr v6, v10

    add-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    int-to-float v3, v3

    int-to-float v4, v4

    .line 3456
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    iget v10, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    invoke-virtual {v6, v10}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v6

    mul-float/2addr v5, v6

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3457
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3459
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawableRecolored:Z

    if-nez v3, :cond_1d

    .line 3460
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v4

    const-string v5, "Arrow.**"

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3461
    sput-boolean v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawableRecolored:Z

    .line 3463
    :cond_1d
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawableRecolored:Z

    if-nez v3, :cond_1e

    .line 3464
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 3465
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v5

    const-string v6, "Line 1.**"

    invoke-virtual {v3, v6, v5}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3466
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v5

    const-string v6, "Line 2.**"

    invoke-virtual {v3, v6, v5}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3467
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v4

    const-string v5, "Line 3.**"

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3468
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    .line 3469
    sput-boolean v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawableRecolored:Z

    .line 3473
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, v1

    int-to-float v4, v2

    .line 3474
    invoke-virtual {v8, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3475
    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    cmpl-float v4, v3, v13

    const/high16 v15, 0x3f800000    # 1.0f

    if-eqz v4, :cond_1f

    cmpl-float v4, v3, v15

    if-eqz v4, :cond_1f

    .line 3476
    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->interpolator:Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;->getInterpolation(F)F

    move-result v3

    add-float/2addr v3, v15

    .line 3477
    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result v4

    div-int/2addr v4, v7

    int-to-float v4, v4

    iget-object v5, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicHeight()I

    move-result v5

    div-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v8, v3, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3479
    :cond_1f
    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v4, 0x0

    invoke-static {v3, v4, v4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3480
    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 3481
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3483
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v8, v11, v13, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 3485
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 3487
    iget v4, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextId:I

    if-ne v4, v0, :cond_20

    iget v4, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    if-eq v4, v5, :cond_23

    .line 3488
    :cond_20
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextId:I

    .line 3489
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageWidth:I

    .line 3490
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v25, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveTextPaint:Landroid/text/TextPaint;

    iget-boolean v4, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v4, :cond_21

    move/from16 v26, v3

    goto :goto_7

    :cond_21
    const/16 v4, 0x50

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    move/from16 v26, v4

    :goto_7
    sget-object v27, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v23, v0

    move-object/from16 v24, v12

    invoke-direct/range {v23 .. v30}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextLayout:Landroid/text/StaticLayout;

    .line 3492
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-le v0, v14, :cond_23

    .line 3493
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v25, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveTextPaintSmall:Landroid/text/TextPaint;

    iget-boolean v4, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v4, :cond_22

    goto :goto_8

    :cond_22
    const/16 v4, 0x52

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_8
    move/from16 v26, v3

    sget-object v27, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v23, v0

    move-object/from16 v24, v12

    invoke-direct/range {v23 .. v30}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextLayout:Landroid/text/StaticLayout;

    .line 3497
    :cond_23
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_26

    .line 3498
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3499
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    const/4 v10, 0x4

    if-le v0, v14, :cond_24

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_9

    :cond_24
    move v0, v13

    .line 3501
    :goto_9
    iget-boolean v3, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v3, :cond_25

    .line 3502
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    invoke-direct {v9, v1}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_a

    .line 3504
    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v19

    sub-float/2addr v1, v3

    const/16 v3, 0x26

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3505
    :goto_a
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3506
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_b

    :cond_26
    const/4 v10, 0x4

    .line 3508
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3517
    :goto_c
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_27

    .line 3518
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3519
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    invoke-virtual {v8, v0, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3522
    :cond_27
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    mul-float/2addr v0, v1

    .line 3523
    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    if-eqz v1, :cond_28

    .line 3524
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

    .line 3525
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v13, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 3526
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_tabletSeletedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3529
    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3530
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOffset:F

    neg-float v1, v1

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    mul-float/2addr v1, v2

    invoke-virtual {v8, v13, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3531
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v1, :cond_2c

    if-ne v1, v7, :cond_29

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v1}, Lcom/iMe/fork/controller/HiddenChatsController;->getInstance(I)Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/HiddenChatsController;->isHiddenChatsHidden()Z

    move-result v1

    if-nez v1, :cond_2a

    goto :goto_d

    :cond_29
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    if-eqz v1, :cond_2b

    :cond_2a
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_2c

    .line 3532
    :cond_2b
    :goto_d
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedOverlay:I

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    const/4 v4, 0x0

    invoke-static {v4, v2, v3, v15}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3533
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v6, v15, v3

    mul-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3534
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

    goto :goto_e

    .line 3535
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v1

    if-nez v1, :cond_2d

    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawPinBackground:Z

    if-eqz v1, :cond_2e

    .line 3536
    :cond_2d
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedOverlay:I

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3537
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v6, v15, v3

    mul-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3538
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

    .line 3540
    :cond_2e
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3542
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->updateAnimationValues()V

    .line 3544
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_2f

    .line 3545
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3546
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    invoke-virtual {v8, v13, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3549
    :cond_2f
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v2, v1, v15

    if-eqz v2, :cond_c7

    cmpl-float v2, v1, v13

    const/high16 v23, 0x437f0000    # 255.0f

    if-eqz v2, :cond_31

    const v2, 0x3ecccccd    # 0.4f

    div-float/2addr v1, v2

    .line 3552
    invoke-static {v1, v15, v13}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    .line 3553
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v2

    if-lt v2, v7, :cond_30

    .line 3554
    invoke-static {}, Lorg/telegram/ui/RightSlidingDialogContainer;->getRightPaddingSize()I

    move-result v2

    add-int/2addr v2, v14

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float v6, v15, v1

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v6, v15, v1

    mul-float v6, v6, v23

    float-to-int v6, v6

    const/16 v11, 0x1f

    move-object/from16 v1, p1

    move v12, v7

    move v7, v11

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v1

    goto :goto_f

    :cond_30
    move v12, v7

    .line 3556
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3557
    invoke-static {}, Lorg/telegram/ui/RightSlidingDialogContainer;->getRightPaddingSize()I

    move-result v3

    add-int/2addr v3, v14

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float v6, v15, v1

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v8, v3, v13, v1, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    move v1, v2

    .line 3559
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    const/16 v3, 0x4a

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    neg-int v2, v2

    int-to-float v2, v2

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v2, v3

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    mul-float/2addr v2, v3

    invoke-virtual {v8, v2, v13}, Landroid/graphics/Canvas;->translate(FF)V

    move v11, v1

    goto :goto_10

    :cond_31
    move v12, v7

    const/4 v11, -0x1

    .line 3562
    :goto_10
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v1, v1, v13

    if-nez v1, :cond_32

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_3a

    .line 3563
    :cond_32
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3565
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3566
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

    .line 3567
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v13, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 3568
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3570
    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    if-eqz v1, :cond_33

    .line 3571
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_tabletSeletedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3574
    :cond_33
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v1, :cond_37

    if-ne v1, v12, :cond_34

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v1}, Lcom/iMe/fork/controller/HiddenChatsController;->getInstance(I)Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/HiddenChatsController;->isHiddenChatsHidden()Z

    move-result v1

    if-nez v1, :cond_35

    goto :goto_11

    :cond_34
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    if-eqz v1, :cond_36

    :cond_35
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_37

    .line 3575
    :cond_36
    :goto_11
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedOverlay:I

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    const/4 v4, 0x0

    invoke-static {v4, v2, v3, v15}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3576
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v6, v15, v3

    mul-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3577
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_12

    .line 3578
    :cond_37
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v1

    if-nez v1, :cond_38

    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawPinBackground:Z

    if-eqz v1, :cond_39

    .line 3579
    :cond_38
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedOverlay:I

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3580
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v6, v15, v3

    mul-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3581
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3583
    :cond_39
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3586
    :cond_3a
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, v0, v13

    const v24, 0x3dda740e

    if-eqz v0, :cond_3b

    .line 3587
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    cmpg-float v1, v0, v15

    if-gez v1, :cond_3d

    add-float v0, v0, v24

    .line 3588
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    cmpl-float v0, v0, v15

    if-lez v0, :cond_3c

    .line 3590
    iput v15, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    goto :goto_13

    .line 3594
    :cond_3b
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    cmpl-float v1, v0, v13

    if-lez v1, :cond_3d

    sub-float v0, v0, v24

    .line 3595
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    cmpg-float v0, v0, v13

    if-gez v0, :cond_3c

    .line 3597
    iput v13, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    :cond_3c
    :goto_13
    move/from16 v25, v14

    goto :goto_14

    :cond_3d
    const/16 v25, 0x0

    .line 3604
    :goto_14
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    const/4 v7, -0x1

    if-eq v0, v7, :cond_3e

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-nez v0, :cond_3f

    .line 3605
    :cond_3e
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    if-eqz v0, :cond_3f

    .line 3606
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3607
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3610
    :cond_3f
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_4c

    .line 3611
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v0, :cond_42

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutFits:Z

    if-nez v0, :cond_42

    .line 3612
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeLeft:Z

    if-eqz v0, :cond_40

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_40

    .line 3613
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaint:Landroid/graphics/Paint;

    .line 3614
    new-instance v1, Landroid/graphics/LinearGradient;

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v2, 0x18

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v2, v3

    const/16 v35, 0x0

    new-array v3, v12, [I

    fill-array-data v3, :array_0

    new-array v4, v12, [F

    fill-array-data v4, :array_1

    sget-object v38, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v31, v1

    move/from16 v34, v2

    move-object/from16 v36, v3

    move-object/from16 v37, v4

    invoke-direct/range {v31 .. v38}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3615
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_15

    .line 3616
    :cond_40
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaintBack:Landroid/graphics/Paint;

    if-nez v0, :cond_41

    .line 3617
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaintBack:Landroid/graphics/Paint;

    .line 3618
    new-instance v1, Landroid/graphics/LinearGradient;

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v16, 0x18

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const/16 v35, 0x0

    new-array v3, v12, [I

    fill-array-data v3, :array_2

    new-array v4, v12, [F

    fill-array-data v4, :array_3

    sget-object v38, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v31, v1

    move/from16 v34, v2

    move-object/from16 v36, v3

    move-object/from16 v37, v4

    invoke-direct/range {v31 .. v38}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3619
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaintBack:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_16

    :cond_41
    :goto_15
    const/16 v16, 0x18

    :goto_16
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3621
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    const/16 v6, 0xff

    const/16 v0, 0x1f

    move-object/from16 v1, p1

    move/from16 v17, v7

    move v7, v0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 3622
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    add-int/2addr v1, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v8, v0, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_17

    :cond_42
    move/from16 v17, v7

    const/4 v3, 0x0

    const/16 v16, 0x18

    .line 3624
    :goto_17
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_43

    .line 3625
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v2, v0, v1

    aget-object v0, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameArchived:I

    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_19

    .line 3626
    :cond_43
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v0, :cond_45

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    if-eqz v0, :cond_44

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    if-ne v0, v12, :cond_44

    goto :goto_18

    .line 3629
    :cond_44
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v2, v0, v1

    aget-object v0, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_name:I

    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_19

    .line 3627
    :cond_45
    :goto_18
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v2, v0, v1

    aget-object v0, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_secretName:I

    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3631
    :goto_19
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3633
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-nez v0, :cond_49

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-ne v0, v12, :cond_46

    goto :goto_1c

    .line 3636
    :cond_46
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-float v0, v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutTranslateX:F

    add-float/2addr v0, v1

    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v1, :cond_48

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v1, :cond_47

    goto :goto_1a

    :cond_47
    const/16 v1, 0xd

    goto :goto_1b

    :cond_48
    :goto_1a
    move/from16 v1, v20

    :goto_1b
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1d

    .line 3634
    :cond_49
    :goto_1c
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-float v0, v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutTranslateX:F

    add-float/2addr v0, v1

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    invoke-direct {v9, v1}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3637
    :goto_1d
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-static {v0, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    .line 3638
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const v2, -0x42666666    # -0.075f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v10, p1

    move/from16 v39, v11

    const/16 v26, 0x3

    move-object v11, v0

    move/from16 v27, v16

    move-object v12, v1

    move v1, v13

    move v13, v2

    move v2, v14

    move-object v14, v4

    move v4, v3

    move v3, v15

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    invoke-static/range {v10 .. v18}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V

    .line 3639
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3640
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v0, :cond_4b

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutFits:Z

    if-nez v0, :cond_4b

    .line 3641
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3642
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeLeft:Z

    if-eqz v0, :cond_4a

    .line 3643
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-float v0, v0

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 3644
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v10, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaint:Landroid/graphics/Paint;

    move v15, v1

    move-object/from16 v1, p1

    move v14, v2

    move v2, v0

    move v13, v3

    move v3, v5

    move v12, v4

    move v4, v6

    move v5, v7

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1e

    :cond_4a
    move v15, v1

    move v14, v2

    move v13, v3

    move v12, v4

    .line 3646
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    add-int/2addr v0, v1

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v8, v0, v15}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3647
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v4, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaintBack:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3649
    :goto_1e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3650
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1f

    :cond_4b
    move v15, v1

    move v14, v2

    move v13, v3

    move v12, v4

    goto :goto_1f

    :cond_4c
    move/from16 v39, v11

    const/4 v12, 0x0

    const/16 v26, 0x3

    const/16 v27, 0x18

    move/from16 v40, v15

    move v15, v13

    move/from16 v13, v40

    .line 3655
    :goto_1f
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    const/4 v7, -0x1

    if-eq v0, v7, :cond_4d

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-nez v0, :cond_4e

    .line 3656
    :cond_4d
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_4e

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_4e

    .line 3657
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3658
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    int-to-float v0, v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    int-to-float v1, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3659
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    invoke-static {v0, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    .line 3660
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3663
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->drawLock2()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 3664
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lock2Drawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->lock2Left:I

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    .line 3666
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

    .line 3667
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v9, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    iget-object v5, v9, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    .line 3668
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

    .line 3664
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3670
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lock2Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_20

    :cond_4f
    const/4 v6, 0x2

    .line 3673
    :goto_20
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_53

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-nez v0, :cond_53

    .line 3674
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_50

    .line 3675
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messageNamePaint:Landroid/text/TextPaint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessageArchived_threeLines:I

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_21

    .line 3676
    :cond_50
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v0, :cond_51

    .line 3677
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messageNamePaint:Landroid/text/TextPaint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_draft:I

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_21

    .line 3679
    :cond_51
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messageNamePaint:Landroid/text/TextPaint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessage_threeLines:I

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3681
    :goto_21
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3682
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    int-to-float v0, v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->messageNameTop:I

    int-to-float v1, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3684
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-nez v0, :cond_52

    .line 3686
    :try_start_0
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    invoke-static {v0, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    .line 3687
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

    move v5, v12

    move-object v12, v0

    move v4, v13

    move v13, v1

    move v1, v14

    move-object v14, v2

    move v2, v15

    move v15, v3

    :try_start_1
    invoke-static/range {v10 .. v18}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_23

    :catch_0
    move-exception v0

    goto :goto_22

    :catch_1
    move-exception v0

    move v5, v12

    move v4, v13

    move v1, v14

    move v2, v15

    .line 3689
    :goto_22
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_23

    :cond_52
    move v5, v12

    move v4, v13

    move v1, v14

    move v2, v15

    .line 3691
    :goto_23
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_24

    :cond_53
    move v5, v12

    move v4, v13

    move v1, v14

    move v2, v15

    .line 3694
    :goto_24
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    const/16 v28, 0xe

    if-eqz v0, :cond_64

    .line 3695
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_55

    .line 3696
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_54

    .line 3697
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v10, v0, v3

    aget-object v0, v0, v3

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessageArchived:I

    iget-object v11, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    iput v3, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v10, v3}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_25

    .line 3699
    :cond_54
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v10, v0, v3

    aget-object v0, v0, v3

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_messageArchived:I

    iget-object v11, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    iput v3, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v10, v3}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_25

    .line 3702
    :cond_55
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v10, v0, v3

    aget-object v0, v0, v3

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message:I

    iget-object v11, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    iput v3, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v10, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 3705
    :goto_25
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v3, v0

    .line 3706
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget-boolean v10, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingOutToTop:Z

    if-eqz v10, :cond_56

    .line 3707
    iget v10, v9, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    mul-float/2addr v11, v3

    sub-float/2addr v10, v11

    goto :goto_26

    .line 3709
    :cond_56
    iget v10, v9, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    mul-float/2addr v11, v3

    add-float/2addr v10, v11

    .line 3711
    :goto_26
    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_5a

    .line 3712
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3713
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    int-to-float v0, v0

    invoke-virtual {v8, v0, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3714
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v15

    .line 3715
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    int-to-float v10, v15

    iget-object v11, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v11, v11, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    sub-float v11, v4, v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v0, v10}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 3717
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-nez v0, :cond_58

    .line 3718
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_57

    .line 3720
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3721
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-static {v8, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->clipOutCanvas(Landroid/graphics/Canvas;Ljava/util/List;)V

    .line 3722
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-static {v0, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    .line 3723
    iget-object v11, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    iget-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const v13, -0x42666666    # -0.075f

    iget-object v14, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v10, p1

    move v7, v15

    move v15, v0

    :try_start_3
    invoke-static/range {v10 .. v18}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V

    .line 3724
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move v15, v5

    .line 3726
    :goto_27
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_59

    .line 3727
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 3728
    iget-object v10, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/TextPaint;->getColor()I

    move-result v10

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 3729
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    add-int/lit8 v15, v15, 0x1

    goto :goto_27

    :catch_2
    move-exception v0

    goto :goto_28

    :catch_3
    move-exception v0

    move v7, v15

    .line 3732
    :goto_28
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_29

    :cond_57
    move v7, v15

    .line 3735
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-static {v0, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    .line 3736
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

    goto :goto_29

    :cond_58
    move v7, v15

    .line 3738
    :cond_59
    :goto_29
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 3739
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3742
    :cond_5a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3743
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingOutToTop:Z

    if-eqz v7, :cond_5b

    .line 3744
    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v7, v7

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    sub-float v0, v4, v0

    mul-float/2addr v0, v3

    add-float/2addr v7, v0

    goto :goto_2a

    .line 3746
    :cond_5b
    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v7, v7

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    sub-float v0, v4, v0

    mul-float/2addr v0, v3

    sub-float/2addr v7, v0

    .line 3748
    :goto_2a
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    int-to-float v0, v0

    invoke-virtual {v8, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3750
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-nez v0, :cond_5c

    .line 3751
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_5c

    iget-object v7, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v7, v7, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    cmpl-float v7, v7, v2

    if-lez v7, :cond_5c

    .line 3752
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    .line 3753
    iget-object v7, v9, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    int-to-float v10, v0

    iget-object v11, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v11, v11, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 3754
    iget-object v7, v9, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3755
    iget-object v7, v9, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 3757
    :cond_5c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3759
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_64

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    if-gez v0, :cond_5d

    iget-object v7, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    cmpl-float v10, v10, v2

    if-lez v10, :cond_64

    iget v7, v7, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastKnownTypingType:I

    if-ltz v7, :cond_64

    :cond_5d
    if-ltz v0, :cond_5e

    goto :goto_2b

    .line 3760
    :cond_5e
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastKnownTypingType:I

    .line 3761
    :goto_2b
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getChatStatusDrawable(I)Lorg/telegram/ui/Components/StatusDrawable;

    move-result-object v7

    if-eqz v7, :cond_64

    .line 3763
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3764
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionMessage:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    .line 3765
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v12, v12, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {v10, v11}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v10

    invoke-virtual {v7, v10}, Lorg/telegram/ui/Components/StatusDrawable;->setColor(I)V

    .line 3766
    iget-object v10, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget-boolean v11, v10, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingOutToTop:Z

    if-eqz v11, :cond_5f

    .line 3767
    iget v11, v9, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v11, v11

    iget v10, v10, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    sub-float v10, v4, v10

    mul-float/2addr v3, v10

    add-float/2addr v11, v3

    goto :goto_2c

    .line 3769
    :cond_5f
    iget v11, v9, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v11, v11

    iget v10, v10, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    sub-float v10, v4, v10

    mul-float/2addr v3, v10

    sub-float/2addr v11, v3

    .line 3772
    :goto_2c
    iget-boolean v3, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v3, :cond_60

    .line 3773
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v0, v3

    const/4 v3, 0x6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

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

    goto :goto_2f

    :cond_60
    const/4 v3, 0x4

    if-eq v0, v1, :cond_62

    if-ne v0, v3, :cond_61

    goto :goto_2d

    .line 3778
    :cond_61
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableLeft:I

    int-to-float v0, v0

    const/16 v10, 0x12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    sub-int/2addr v10, v12

    int-to-float v10, v10

    div-float v10, v10, v19

    add-float/2addr v11, v10

    invoke-virtual {v8, v0, v11}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2f

    .line 3776
    :cond_62
    :goto_2d
    iget v10, v9, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableLeft:I

    int-to-float v10, v10

    if-ne v0, v1, :cond_63

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    goto :goto_2e

    :cond_63
    move v15, v5

    :goto_2e
    int-to-float v0, v15

    add-float/2addr v11, v0

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3780
    :goto_2f
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3781
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    .line 3782
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_30

    :cond_64
    const/4 v3, 0x4

    .line 3787
    :goto_30
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_6d

    .line 3788
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3789
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonBackgroundPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_65

    .line 3790
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonBackgroundPaint:Landroid/graphics/Paint;

    .line 3792
    :cond_65
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    if-nez v0, :cond_66

    .line 3793
    new-instance v0, Lorg/telegram/ui/Components/CanvasButton;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/CanvasButton;-><init>(Landroid/view/View;)V

    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    .line 3794
    new-instance v7, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda3;

    invoke-direct {v7, v9}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/CanvasButton;->setDelegate(Ljava/lang/Runnable;)V

    .line 3799
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    new-instance v7, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda4;

    invoke-direct {v7, v9}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/CanvasButton;->setLongPress(Ljava/lang/Runnable;)V

    .line 3806
    :cond_66
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->lastTopicMessageUnread:Z

    if-eqz v0, :cond_6a

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicEndIndex:I

    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicStartIndex:I

    if-eq v0, v7, :cond_6a

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-nez v0, :cond_6a

    .line 3807
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    iget-object v7, v9, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->getColor()I

    move-result v7

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v10

    if-eqz v10, :cond_67

    const/16 v10, 0x24

    goto :goto_31

    :cond_67
    const/16 v10, 0x1a

    :goto_31
    invoke-static {v7, v10}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/CanvasButton;->setColor(I)V

    .line 3808
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonCreated:Z

    if-nez v0, :cond_69

    .line 3809
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CanvasButton;->rewind()V

    .line 3810
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicEndIndex:I

    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicStartIndex:I

    if-eq v0, v7, :cond_68

    if-lez v0, :cond_68

    .line 3811
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v7, v10

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

    .line 3812
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v0, v7, v10}, Landroid/graphics/RectF;->inset(FF)V

    .line 3813
    iget v7, v0, Landroid/graphics/RectF;->right:F

    iget v10, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_68

    .line 3814
    iget-object v7, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/CanvasButton;->addRect(Landroid/graphics/RectF;)V

    .line 3818
    :cond_68
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    .line 3819
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v10, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    int-to-float v10, v10

    add-float/2addr v10, v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget v11, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonTop:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    iget v12, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    int-to-float v12, v12

    add-float/2addr v12, v0

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    add-float/2addr v12, v0

    const/16 v0, 0xc

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v12, v0

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonTop:I

    iget-object v13, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v13}, Landroid/text/StaticLayout;->getHeight()I

    move-result v13

    add-int/2addr v0, v13

    int-to-float v0, v0

    invoke-virtual {v7, v10, v11, v12, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3820
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v7, v0, v10}, Landroid/graphics/RectF;->inset(FF)V

    .line 3821
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/CanvasButton;->addRect(Landroid/graphics/RectF;)V

    .line 3823
    :cond_69
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/CanvasButton;->draw(Landroid/graphics/Canvas;)V

    .line 3825
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_forum_arrowDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v7, 0x7d

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3826
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

    div-float v7, v7, v19

    add-float/2addr v11, v7

    invoke-static {v0, v10, v11}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V

    .line 3827
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_forum_arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3831
    :cond_6a
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    int-to-float v0, v0

    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonTop:I

    int-to-float v7, v7

    invoke-virtual {v8, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3832
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 3834
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3835
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-static {v8, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->clipOutCanvas(Landroid/graphics/Canvas;Ljava/util/List;)V

    .line 3836
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-static {v0, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    .line 3837
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

    .line 3838
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move v15, v5

    .line 3840
    :goto_32
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_6c

    .line 3841
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 3842
    iget-object v7, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/TextPaint;->getColor()I

    move-result v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 3843
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    add-int/lit8 v15, v15, 0x1

    goto :goto_32

    :catch_4
    move-exception v0

    .line 3846
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_33

    .line 3849
    :cond_6b
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-static {v0, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    .line 3850
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

    .line 3852
    :cond_6c
    :goto_33
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3856
    :cond_6d
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    const/4 v7, -0x1

    if-eq v0, v7, :cond_6e

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-nez v0, :cond_7d

    .line 3857
    :cond_6e
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_7d

    .line 3858
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    iget-boolean v10, v9, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v10, :cond_6f

    move v15, v6

    goto :goto_34

    :cond_6f
    move v15, v5

    :goto_34
    add-int/2addr v0, v15

    iget-boolean v10, v9, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v10, :cond_70

    move v15, v3

    goto :goto_35

    :cond_70
    move v15, v5

    :goto_35
    add-int/2addr v0, v15

    .line 3859
    iget v10, v9, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    if-ltz v10, :cond_71

    if-eq v10, v0, :cond_71

    iget-boolean v11, v9, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimationInProgress:Z

    if-nez v11, :cond_71

    .line 3860
    invoke-direct {v9, v10, v0}, Lorg/telegram/ui/Cells/DialogCell;->createStatusDrawableAnimator(II)V

    .line 3862
    :cond_71
    iget-boolean v10, v9, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimationInProgress:Z

    if-eqz v10, :cond_72

    .line 3863
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->animateToStatusDrawableParams:I

    :cond_72
    and-int/lit8 v11, v0, 0x1

    if-eqz v11, :cond_73

    move v11, v1

    goto :goto_36

    :cond_73
    move v11, v5

    :goto_36
    and-int/lit8 v12, v0, 0x2

    if-eqz v12, :cond_74

    move v12, v1

    goto :goto_37

    :cond_74
    move v12, v5

    :goto_37
    and-int/2addr v0, v3

    if-eqz v0, :cond_75

    move v0, v1

    goto :goto_38

    :cond_75
    move v0, v5

    :goto_38
    if-eqz v10, :cond_7a

    .line 3871
    iget v10, v9, Lorg/telegram/ui/Cells/DialogCell;->animateFromStatusDrawableParams:I

    and-int/lit8 v13, v10, 0x1

    if-eqz v13, :cond_76

    move v13, v1

    goto :goto_39

    :cond_76
    move v13, v5

    :goto_39
    and-int/lit8 v14, v10, 0x2

    if-eqz v14, :cond_77

    move v14, v1

    goto :goto_3a

    :cond_77
    move v14, v5

    :goto_3a
    and-int/2addr v10, v3

    if-eqz v10, :cond_78

    move v10, v1

    goto :goto_3b

    :cond_78
    move v10, v5

    :goto_3b
    if-nez v11, :cond_79

    if-nez v13, :cond_79

    if-eqz v10, :cond_79

    if-nez v14, :cond_79

    if-eqz v12, :cond_79

    if-eqz v0, :cond_79

    const/4 v10, 0x1

    .line 3875
    iget v13, v9, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableProgress:F

    move v15, v1

    move-object/from16 v1, p0

    move v14, v2

    move-object/from16 v2, p1

    move/from16 v16, v3

    move v3, v11

    move v11, v4

    move v4, v12

    move v12, v5

    move v5, v0

    move v15, v6

    move v6, v10

    move v10, v7

    move v7, v13

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Cells/DialogCell;->drawCheckStatus(Landroid/graphics/Canvas;ZZZZF)V

    move v13, v14

    move v14, v11

    goto :goto_3c

    :cond_79
    move/from16 v16, v3

    move v15, v6

    move v6, v5

    move v5, v4

    move v4, v2

    const/16 v18, 0x0

    .line 3877
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableProgress:F

    sub-float v19, v5, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v13

    move v13, v4

    move v4, v14

    move v14, v5

    move v5, v10

    move v10, v6

    move/from16 v6, v18

    move v10, v7

    move/from16 v7, v19

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Cells/DialogCell;->drawCheckStatus(Landroid/graphics/Canvas;ZZZZF)V

    const/4 v6, 0x0

    .line 3878
    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableProgress:F

    move v3, v11

    move v4, v12

    move v5, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Cells/DialogCell;->drawCheckStatus(Landroid/graphics/Canvas;ZZZZF)V

    goto :goto_3c

    :cond_7a
    move v13, v2

    move/from16 v16, v3

    move v14, v4

    move v15, v6

    move v10, v7

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v11

    move v4, v12

    move v5, v0

    .line 3881
    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Cells/DialogCell;->drawCheckStatus(Landroid/graphics/Canvas;ZZZZF)V

    .line 3883
    :goto_3c
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v1, :cond_7b

    move v1, v15

    goto :goto_3d

    :cond_7b
    const/4 v1, 0x0

    :goto_3d
    add-int/2addr v0, v1

    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v1, :cond_7c

    move/from16 v1, v16

    goto :goto_3e

    :cond_7c
    const/4 v1, 0x0

    :goto_3e
    add-int/2addr v0, v1

    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    goto :goto_3f

    :cond_7d
    move v13, v2

    move/from16 v16, v3

    move v14, v4

    move v15, v6

    move v10, v7

    .line 3886
    :goto_3f
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-nez v0, :cond_7f

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-eqz v0, :cond_7e

    goto :goto_40

    :cond_7e
    const/4 v0, 0x0

    goto :goto_41

    :cond_7f
    :goto_40
    const/4 v0, 0x1

    .line 3888
    :goto_41
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    if-eq v1, v10, :cond_80

    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-nez v1, :cond_a8

    .line 3889
    :cond_80
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/high16 v2, 0x41580000    # 13.5f

    if-eq v1, v15, :cond_92

    if-nez v0, :cond_81

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    cmpl-float v1, v1, v13

    if-lez v1, :cond_92

    :cond_81
    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-nez v1, :cond_92

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-nez v1, :cond_92

    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-nez v1, :cond_92

    if-eqz v0, :cond_83

    .line 3890
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    cmpl-float v3, v1, v14

    if-eqz v3, :cond_83

    add-float v1, v1, v24

    .line 3891
    iput v1, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    cmpl-float v0, v1, v14

    if-lez v0, :cond_82

    .line 3893
    iput v14, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    goto :goto_42

    .line 3895
    :cond_82
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    goto :goto_42

    :cond_83
    if-nez v0, :cond_85

    .line 3897
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    cmpl-float v1, v0, v13

    if-eqz v1, :cond_85

    sub-float v0, v0, v24

    .line 3898
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    cmpg-float v0, v0, v13

    if-gez v0, :cond_84

    .line 3900
    iput v13, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    goto :goto_42

    .line 3902
    :cond_84
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    .line 3905
    :cond_85
    :goto_42
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v1, :cond_87

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v1, :cond_86

    goto :goto_43

    :cond_86
    const/4 v1, 0x1

    goto :goto_44

    :cond_87
    :goto_43
    const/4 v1, 0x0

    :goto_44
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 3906
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v1, :cond_88

    goto :goto_45

    :cond_88
    const/high16 v2, 0x418c0000    # 17.5f

    :goto_45
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    .line 3908
    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v2, :cond_8b

    .line 3909
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    iget-boolean v4, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v4, :cond_8a

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v4, :cond_89

    goto :goto_46

    :cond_89
    const/4 v4, 0x1

    goto :goto_47

    :cond_8a
    :goto_46
    const/4 v4, 0x0

    :goto_47
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-direct {v9, v4}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_48

    .line 3911
    :cond_8b
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V

    .line 3913
    :goto_48
    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v2, :cond_8e

    .line 3914
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v2, :cond_8d

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_8c

    goto :goto_49

    :cond_8c
    const/4 v2, 0x1

    goto :goto_4a

    :cond_8d
    :goto_49
    const/4 v2, 0x0

    :goto_4a
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v9, v2}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_4b

    .line 3916
    :cond_8e
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V

    .line 3917
    :goto_4b
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    cmpl-float v0, v0, v14

    if-eqz v0, :cond_90

    .line 3918
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3919
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

    .line 3920
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-eqz v0, :cond_8f

    .line 3921
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    mul-float v1, v1, v23

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3922
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3923
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_4c

    .line 3925
    :cond_8f
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    mul-float v1, v1, v23

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3926
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3927
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3929
    :goto_4c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5e

    .line 3931
    :cond_90
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-eqz v0, :cond_91

    .line 3932
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5e

    .line 3934
    :cond_91
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5e

    .line 3938
    :cond_92
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v0, :cond_99

    .line 3940
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v0, :cond_93

    .line 3941
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-direct {v9, v3}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result v3

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_4f

    .line 3943
    :cond_93
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    const/4 v3, 0x1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v1, v4

    iget-boolean v3, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v3, :cond_95

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v3, :cond_94

    goto :goto_4d

    :cond_94
    const/high16 v3, 0x41840000    # 16.5f

    goto :goto_4e

    :cond_95
    :goto_4d
    move v3, v2

    :goto_4e
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3945
    :goto_4f
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v0, :cond_96

    .line 3946
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v9, v2}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_51

    .line 3948
    :cond_96
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    const/4 v3, 0x1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v1, v4

    iget-boolean v3, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v3, :cond_98

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v3, :cond_97

    goto :goto_50

    :cond_97
    const/high16 v2, 0x41840000    # 16.5f

    :cond_98
    :goto_50
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3949
    :goto_51
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3950
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5e

    .line 3951
    :cond_99
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-eqz v0, :cond_a1

    .line 3952
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_9e

    .line 3953
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    .line 3954
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 3955
    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v2, :cond_9b

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_9a

    goto :goto_52

    :cond_9a
    const/high16 v2, 0x41780000    # 15.5f

    goto :goto_53

    :cond_9b
    :goto_52
    const/high16 v2, 0x41480000    # 12.5f

    :goto_53
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    const/16 v4, 0x14

    .line 3956
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 3957
    iget-boolean v4, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v4, :cond_9d

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v4, :cond_9c

    goto :goto_54

    :cond_9c
    const/high16 v4, 0x41780000    # 15.5f

    goto :goto_55

    :cond_9d
    :goto_54
    const/high16 v4, 0x41480000    # 12.5f

    :goto_55
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v4, v5

    const/16 v5, 0x16

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 3953
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3959
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 3960
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5e

    .line 3962
    :cond_9e
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarDrawableMini:Landroid/graphics/drawable/Drawable;

    .line 3963
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    const/4 v2, 0x1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v2, :cond_a0

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_9f

    goto :goto_56

    :cond_9f
    const/high16 v2, 0x41780000    # 15.5f

    goto :goto_57

    :cond_a0
    :goto_56
    const/high16 v2, 0x41480000    # 12.5f

    :goto_57
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3964
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5e

    .line 3966
    :cond_a1
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-eqz v0, :cond_a8

    .line 3968
    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v1, :cond_a3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a2

    .line 3969
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    goto :goto_58

    :cond_a2
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    .line 3970
    :goto_58
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScamDrawable;->getIntrinsicHeight()I

    move-result v3

    invoke-direct {v9, v3}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result v3

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_5c

    :cond_a3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_a4

    .line 3972
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    goto :goto_59

    :cond_a4
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    :goto_59
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v2, :cond_a6

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_a5

    goto :goto_5a

    :cond_a5
    const/16 v2, 0xf

    goto :goto_5b

    :cond_a6
    :goto_5a
    const/16 v2, 0xc

    :goto_5b
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3973
    :goto_5c
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a7

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    goto :goto_5d

    :cond_a7
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    :goto_5d
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/ScamDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 3977
    :cond_a8
    :goto_5e
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    if-eq v0, v10, :cond_a9

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-nez v0, :cond_ab

    .line 3978
    :cond_a9
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    if-nez v0, :cond_aa

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_ab

    .line 3979
    :cond_aa
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    mul-float v1, v1, v23

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3980
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3981
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3984
    :cond_ab
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    if-eq v0, v10, :cond_ad

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-nez v0, :cond_ac

    goto :goto_60

    :cond_ac
    :goto_5f
    move-object v10, v8

    goto/16 :goto_66

    .line 3985
    :cond_ad
    :goto_60
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    const/16 v11, 0x17

    const/high16 v12, 0x41380000    # 11.5f

    if-eqz v0, :cond_ae

    .line 3986
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v6, v14, v1

    mul-float v6, v6, v23

    float-to-int v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3987
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

    .line 3988
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v2, v1, v12

    mul-float/2addr v1, v12

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3989
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    const/high16 v2, 0x40b00000    # 5.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    const/4 v3, 0x5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3990
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5f

    .line 3991
    :cond_ae
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    if-nez v0, :cond_af

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    if-eqz v0, :cond_b0

    :cond_af
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawCount2:Z

    if-nez v0, :cond_b2

    :cond_b0
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->countChangeProgress:F

    cmpl-float v0, v0, v14

    if-nez v0, :cond_b2

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    if-nez v0, :cond_b2

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    cmpl-float v0, v0, v14

    if-eqz v0, :cond_b1

    goto :goto_61

    .line 4040
    :cond_b1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 4041
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v6, v14, v1

    mul-float v6, v6, v23

    float-to-int v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4042
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 4043
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5f

    .line 3993
    :cond_b2
    :goto_61
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_b3

    .line 3994
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->topicMuted:Z

    goto :goto_62

    .line 3996
    :cond_b3
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_b5

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v0, :cond_b5

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-nez v0, :cond_b5

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    if-nez v0, :cond_b4

    const/4 v0, 0x1

    goto :goto_62

    :cond_b4
    const/4 v0, 0x0

    goto :goto_62

    :cond_b5
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    .line 3998
    :goto_62
    iget v4, v9, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    iget v5, v9, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    iget v6, v9, Lorg/telegram/ui/Cells/DialogCell;->countLeftOld:I

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v0

    move-object v10, v8

    move/from16 v8, v19

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Cells/DialogCell;->drawCounter(Landroid/graphics/Canvas;ZIIIFZ)V

    .line 3999
    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    if-eqz v1, :cond_b8

    .line 4000
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v6, v14, v2

    mul-float v6, v6, v23

    float-to-int v2, v6

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4002
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    const/high16 v2, 0x40b00000    # 5.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    .line 4003
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

    if-eqz v0, :cond_b6

    .line 4004
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    if-eqz v0, :cond_b6

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countGrayPaint:Landroid/graphics/Paint;

    goto :goto_63

    :cond_b6
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    .line 4005
    :goto_63
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v3, v2, v12

    mul-float/2addr v2, v12

    invoke-virtual {v10, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4006
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->mentionLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_b7

    .line 4007
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v6, v14, v1

    mul-float v6, v6, v23

    float-to-int v1, v6

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 4009
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4010
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    int-to-float v0, v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4011
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->mentionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4012
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_64

    .line 4014
    :cond_b7
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_mentionDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v6, v14, v1

    mul-float v6, v6, v23

    float-to-int v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4016
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_mentionDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    const v3, 0x404ccccd    # 3.2f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 4017
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_mentionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4021
    :cond_b8
    :goto_64
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    if-nez v0, :cond_b9

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    cmpl-float v0, v0, v14

    if-eqz v0, :cond_bc

    .line 4023
    :cond_b9
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsCountPaint:Landroid/graphics/Paint;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v6, v14, v1

    mul-float v6, v6, v23

    float-to-int v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4025
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    const/high16 v1, 0x40b00000    # 5.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 4026
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

    .line 4027
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsCountPaint:Landroid/graphics/Paint;

    .line 4029
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4030
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    cmpl-float v2, v1, v14

    if-eqz v2, :cond_bb

    .line 4031
    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    if-eqz v2, :cond_ba

    goto :goto_65

    :cond_ba
    sub-float v1, v14, v1

    .line 4032
    :goto_65
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v10, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4034
    :cond_bb
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v3, v2, v12

    mul-float/2addr v2, v12

    invoke-virtual {v10, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4035
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsMentionDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v6, v14, v1

    mul-float v6, v6, v23

    float-to-int v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4036
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsMentionDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    const v3, 0x40733333    # 3.8f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 4037
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsMentionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4038
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4047
    :cond_bc
    :goto_66
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-nez v0, :cond_c6

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isContentHidden()Z

    move-result v0

    if-nez v0, :cond_c6

    .line 4048
    :cond_bd
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v0, :cond_c6

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    cmpl-float v1, v0, v14

    if-eqz v1, :cond_c6

    cmpl-float v1, v0, v13

    if-lez v1, :cond_bf

    sub-float v6, v14, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4052
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v5, v0

    mul-float v6, v6, v23

    float-to-int v6, v6

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 4054
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget-boolean v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingOutToTop:Z

    if-eqz v0, :cond_be

    .line 4055
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v1, v1, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    goto :goto_67

    .line 4057
    :cond_be
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v1, v1, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    :goto_67
    mul-float/2addr v0, v1

    .line 4059
    invoke-virtual {v10, v13, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_bf
    const/4 v0, 0x0

    .line 4061
    :goto_68
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-ge v0, v1, :cond_c5

    .line 4062
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImageSeen:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_c0

    goto/16 :goto_6a

    .line 4065
    :cond_c0
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbBackgroundPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_c1

    .line 4066
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x3fab851f    # 1.34f

    .line 4067
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3eae147b    # 0.34f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x18000000

    invoke-virtual {v1, v2, v13, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 4068
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbBackgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4070
    :cond_c1
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v2, v2, v0

    .line 4071
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v2

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v3, v3, v0

    .line 4072
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v3

    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v4, v4, v0

    .line 4073
    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v4

    iget-object v5, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v5, v5, v0

    .line 4074
    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v5

    .line 4070
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4076
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v2, v2, v0

    .line 4078
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v3, v3, v0

    .line 4079
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbBackgroundPaint:Landroid/graphics/Paint;

    .line 4076
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4082
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v2, v2, v0

    invoke-virtual {v2, v10}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 4083
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->drawSpoiler:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_c3

    .line 4084
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbPath:Landroid/graphics/Path;

    if-nez v2, :cond_c2

    .line 4085
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbPath:Landroid/graphics/Path;

    goto :goto_69

    .line 4087
    :cond_c2
    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 4089
    :goto_69
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbPath:Landroid/graphics/Path;

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 4091
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4092
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbPath:Landroid/graphics/Path;

    invoke-virtual {v10, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 4095
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbSpoiler:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    const/4 v2, -0x1

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ea66666    # 0.325f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 4096
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

    .line 4097
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbSpoiler:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    .line 4098
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    .line 4100
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4102
    :cond_c3
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawPlay:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_c4

    .line 4103
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v1

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/2addr v2, v15

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 4104
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v2

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/2addr v3, v15

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 4105
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 4106
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_c4
    :goto_6a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_68

    .line 4110
    :cond_c5
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    cmpl-float v0, v0, v13

    if-lez v0, :cond_c6

    .line 4111
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_c6
    move/from16 v1, v39

    const/4 v2, -0x1

    if-eq v1, v2, :cond_c8

    .line 4116
    invoke-virtual {v10, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_6b

    :cond_c7
    move-object v10, v8

    move v14, v15

    const/16 v27, 0x18

    move v15, v7

    const/16 v25, 0x0

    .line 4120
    :cond_c8
    :goto_6b
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatar:Z

    const/high16 v11, 0x432a0000    # 170.0f

    if-eqz v0, :cond_c9

    .line 4121
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4122
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->interpolator:Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatarProgress:F

    div-float/2addr v1, v11

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;->getInterpolation(F)F

    move-result v0

    add-float/2addr v0, v14

    .line 4123
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v1

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v2

    invoke-virtual {v10, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4126
    :cond_c9
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawAvatar:Z

    if-eqz v0, :cond_cc

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_ca

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v0, :cond_ca

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_ca

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz v0, :cond_ca

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->isDraw()Z

    move-result v0

    if-nez v0, :cond_cc

    .line 4127
    :cond_ca
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v1, :cond_cb

    if-eq v1, v15, :cond_cb

    const/4 v1, 0x1

    goto :goto_6c

    :cond_cb
    const/4 v1, 0x0

    :goto_6c
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawHiddenStoriesAsSegments:Z

    .line 4128
    iget-wide v1, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v1, v2, v10, v3, v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawAvatarWithStory(JLandroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    .line 4131
    :cond_cc
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatar:Z

    if-eqz v0, :cond_cd

    .line 4132
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4135
    :cond_cd
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 4136
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/Cells/DialogCell;->drawAvatarOverlays(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_ce

    const/16 v25, 0x1

    .line 4141
    :cond_ce
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v0, v0, v13

    if-lez v0, :cond_d3

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_d3

    .line 4143
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_cf

    .line 4144
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->topicMuted:Z

    :goto_6d
    move v3, v0

    goto :goto_6e

    .line 4146
    :cond_cf
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_d1

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v0, :cond_d1

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-nez v0, :cond_d1

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    if-nez v0, :cond_d0

    const/4 v0, 0x1

    goto :goto_6d

    :cond_d0
    const/4 v0, 0x0

    goto :goto_6d

    :cond_d1
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    goto :goto_6d

    .line 4148
    :goto_6e
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float/2addr v1, v0

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    float-to-int v0, v1

    .line 4149
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    add-float/2addr v2, v1

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->countWidthOld:I

    int-to-float v1, v1

    sub-float/2addr v2, v1

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    float-to-int v1, v2

    .line 4150
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v2

    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    add-float/2addr v2, v4

    const/16 v4, 0x16

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 4152
    iget-boolean v4, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v4, :cond_d2

    .line 4153
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 4154
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v1, v4

    const/4 v4, 0x5

    .line 4155
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v2, v4

    :cond_d2
    move v5, v0

    move v6, v1

    move v4, v2

    .line 4158
    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Cells/DialogCell;->drawCounter(Landroid/graphics/Canvas;ZIIIFZ)V

    .line 4161
    :cond_d3
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_d4

    .line 4162
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4165
    :cond_d4
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_d5

    .line 4166
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4168
    :cond_d5
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawArchive:Z

    if-eqz v0, :cond_d7

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_d6

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_d7

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v0, :cond_d7

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d7

    :cond_d6
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, v0, v13

    if-nez v0, :cond_d7

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz v0, :cond_d7

    .line 4169
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4170
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOffset:F

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {v10, v13, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4171
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v10, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4172
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/PullForegroundDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4173
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4176
    :cond_d7
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    if-eqz v0, :cond_dd

    .line 4178
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fullSeparator:Z

    if-nez v0, :cond_da

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_d8

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    if-eqz v0, :cond_d8

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fullSeparator2:Z

    if-eqz v0, :cond_da

    :cond_d8
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fullSeparator2:Z

    if-eqz v0, :cond_d9

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    if-nez v0, :cond_d9

    goto :goto_6f

    .line 4181
    :cond_d9
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_70

    :cond_da
    :goto_6f
    const/4 v0, 0x0

    .line 4184
    :goto_70
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v1, v1, v14

    if-eqz v1, :cond_dd

    .line 4185
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    .line 4186
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v2, v1, v13

    if-eqz v2, :cond_db

    .line 4187
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    int-to-float v3, v7

    sub-float v6, v14, v1

    mul-float/2addr v3, v6

    float-to-int v1, v3

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4189
    :cond_db
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    const/4 v8, 0x1

    sub-int/2addr v1, v8

    int-to-float v1, v1

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOffset:F

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    mul-float/2addr v2, v3

    sub-float v5, v1, v2

    .line 4190
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_dc

    const/4 v2, 0x0

    .line 4191
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v4, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_71

    :cond_dc
    int-to-float v2, v0

    .line 4193
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 4195
    :goto_71
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_de

    .line 4196
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_72

    :cond_dd
    const/4 v8, 0x1

    .line 4201
    :cond_de
    :goto_72
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_e0

    .line 4202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v1, v27

    if-eq v0, v1, :cond_df

    .line 4203
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_73

    .line 4205
    :cond_df
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4206
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

    .line 4207
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->bottomClip:I

    int-to-float v1, v1

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    mul-float/2addr v1, v3

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

    .line 4211
    :cond_e0
    :goto_73
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    const v1, 0x3dc0c0c1

    if-nez v0, :cond_e1

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    cmpl-float v2, v2, v13

    if-eqz v2, :cond_e4

    :cond_e1
    if-eqz v0, :cond_e2

    .line 4213
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    cmpg-float v2, v0, v14

    if-gez v2, :cond_e4

    add-float/2addr v0, v1

    .line 4214
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    cmpl-float v0, v0, v14

    if-lez v0, :cond_e3

    .line 4216
    iput v14, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    goto :goto_74

    .line 4221
    :cond_e2
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    cmpl-float v2, v0, v13

    if-lez v2, :cond_e4

    sub-float/2addr v0, v1

    .line 4222
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    cmpg-float v0, v0, v13

    if-gez v0, :cond_e3

    .line 4224
    iput v13, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    :cond_e3
    :goto_74
    move/from16 v25, v8

    .line 4231
    :cond_e4
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    if-eqz v0, :cond_e6

    .line 4232
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    cmpl-float v2, v0, v13

    if-lez v2, :cond_e9

    const v2, 0x3d8e7835

    sub-float/2addr v0, v2

    .line 4233
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    cmpg-float v0, v0, v13

    if-gez v0, :cond_e5

    .line 4235
    iput v13, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    .line 4237
    :cond_e5
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarDrawable;->getAvatarType()I

    move-result v0

    if-ne v0, v15, :cond_e8

    .line 4238
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setArchivedAvatarHiddenProgress(F)V

    goto :goto_75

    .line 4243
    :cond_e6
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    cmpg-float v2, v0, v14

    if-gez v2, :cond_e9

    const v2, 0x3d8e7835

    add-float/2addr v0, v2

    .line 4244
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    cmpl-float v0, v0, v14

    if-lez v0, :cond_e7

    .line 4246
    iput v14, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    .line 4248
    :cond_e7
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarDrawable;->getAvatarType()I

    move-result v0

    if-ne v0, v15, :cond_e8

    .line 4249
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setArchivedAvatarHiddenProgress(F)V

    :cond_e8
    :goto_75
    move/from16 v25, v8

    .line 4255
    :cond_e9
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatar:Z

    if-eqz v0, :cond_eb

    .line 4256
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatarProgress:F

    const/high16 v2, 0x41800000    # 16.0f

    add-float/2addr v0, v2

    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatarProgress:F

    cmpl-float v0, v0, v11

    if-ltz v0, :cond_ea

    .line 4258
    iput v11, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatarProgress:F

    const/4 v2, 0x0

    .line 4259
    iput-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatar:Z

    :cond_ea
    move/from16 v25, v8

    .line 4263
    :cond_eb
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawRevealBackground:Z

    if-eqz v0, :cond_ee

    .line 4264
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    cmpg-float v2, v0, v14

    if-gez v2, :cond_ec

    add-float/2addr v0, v1

    .line 4265
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    cmpl-float v0, v0, v14

    if-lez v0, :cond_ec

    .line 4267
    iput v14, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    move/from16 v25, v8

    .line 4271
    :cond_ec
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpg-float v1, v0, v14

    if-gez v1, :cond_ed

    const v1, 0x3d5a740e

    add-float/2addr v0, v1

    .line 4272
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpl-float v0, v0, v14

    if-lez v0, :cond_f0

    .line 4274
    iput v14, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    goto :goto_77

    :cond_ed
    move/from16 v14, v25

    goto :goto_78

    .line 4279
    :cond_ee
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    cmpl-float v0, v0, v14

    if-nez v0, :cond_ef

    .line 4280
    iput v13, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    move v14, v8

    goto :goto_76

    :cond_ef
    move/from16 v14, v25

    .line 4283
    :goto_76
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpl-float v1, v0, v13

    if-lez v1, :cond_f1

    const v1, 0x3d5a740e

    sub-float/2addr v0, v1

    .line 4284
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpg-float v0, v0, v13

    if-gez v0, :cond_f0

    .line 4286
    iput v13, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    :cond_f0
    :goto_77
    move v14, v8

    :cond_f1
    :goto_78
    if-eqz v14, :cond_f2

    .line 4293
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    :cond_f2
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

    .line 4791
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4792
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/HiddenChatsController;->getInstance(I)Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/HiddenChatsController;->isHiddenChatsHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    iget v0, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 4793
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x10

    .line 4795
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x20

    .line 4796
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 4797
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 4798
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v1, Lorg/telegram/messenger/R$id;->acc_action_chat_preview:I

    sget v2, Lorg/telegram/messenger/R$string;->AccActionChatPreview:I

    const-string v3, "AccActionChatPreview"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4801
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "android.widget.CheckBox"

    .line 4802
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 4803
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 4804
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 5231
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->checkOnTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 5234
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 882
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    if-nez p1, :cond_0

    return-void

    .line 885
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 p3, 0x0

    if-eqz p1, :cond_9

    .line 886
    iget p1, p0, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    iget-boolean p5, p0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez p5, :cond_2

    sget-boolean p5, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz p5, :cond_1

    goto :goto_0

    :cond_1
    const/16 p5, 0x1b

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p5, 0x1d

    :goto_1
    sub-int/2addr p1, p5

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 888
    iget-boolean p5, p0, Lorg/telegram/ui/Cells/DialogCell;->inPreviewMode:Z

    if-eqz p5, :cond_3

    const/16 p1, 0x8

    .line 889
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 890
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    iget-object p4, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p2, p4

    shr-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 892
    :cond_3
    sget-boolean p5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p5, :cond_4

    sub-int/2addr p4, p2

    sub-int p1, p4, p1

    .line 893
    :cond_4
    iget p2, p0, Lorg/telegram/ui/Cells/DialogCell;->chekBoxPaddingTop:F

    iget-boolean p4, p0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez p4, :cond_6

    sget-boolean p4, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz p4, :cond_5

    goto :goto_2

    :cond_5
    move p4, p3

    goto :goto_3

    :cond_6
    :goto_2
    const/4 p4, 0x6

    :goto_3
    int-to-float p4, p4

    add-float/2addr p2, p4

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    .line 896
    :goto_4
    iget-boolean p4, p0, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz p4, :cond_8

    .line 897
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz p2, :cond_7

    .line 898
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result p2

    goto :goto_5

    :cond_7
    const/16 p1, 0x25

    .line 900
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const/16 p2, 0x17

    .line 901
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 905
    :cond_8
    :goto_5
    iget-object p4, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p1

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p4, p1, p2, p5, v0}, Landroid/view/View;->layout(IIII)V

    .line 907
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x10

    .line 908
    iget p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSize:I

    if-ne p1, p2, :cond_a

    iget-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->updateLayout:Z

    if-eqz p2, :cond_b

    .line 909
    :cond_a
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/DialogCell;->updateLayout:Z

    .line 910
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSize:I

    .line 912
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 914
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_b
    :goto_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 840
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p2, :cond_0

    const/16 v0, 0x18

    .line 842
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 843
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 841
    invoke-virtual {p2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 846
    :cond_0
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz p2, :cond_4

    .line 847
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

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

    .line 848
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkTwoLinesForName()V

    .line 851
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->computeHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    const/4 p1, 0x0

    .line 852
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->topClip:I

    .line 853
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->bottomClip:I

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7

    .line 4810
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4812
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, ". "

    if-eq v1, v3, :cond_8

    if-ne v1, v2, :cond_0

    goto/16 :goto_2

    .line 4816
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v1, :cond_1

    .line 4817
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrSecretChat:I

    const-string v2, "AccDescrSecretChat"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4818
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4820
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v1, :cond_2

    .line 4821
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrTopic:I

    const-string v2, "AccDescrTopic"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4822
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4823
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4824
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 4825
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_6

    .line 4826
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4827
    sget v1, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    const-string v2, "RepliesTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4829
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v1, :cond_4

    .line 4830
    sget v1, Lorg/telegram/messenger/R$string;->Bot:I

    const-string v2, "Bot"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4831
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4833
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v2, :cond_5

    .line 4834
    sget v1, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v2, "SavedMessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4836
    :cond_5
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4839
    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 4840
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_a

    .line 4841
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    if-eqz v1, :cond_7

    .line 4842
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrChannel:I

    const-string v2, "AccDescrChannel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4844
    :cond_7
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrGroup:I

    const-string v2, "AccDescrGroup"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4846
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4847
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4848
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    :goto_2
    if-ne v1, v2, :cond_9

    .line 4813
    sget v1, Lorg/telegram/messenger/R$string;->hidden_chats_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_9
    sget v1, Lorg/telegram/messenger/R$string;->ArchivedChats:I

    const-string v2, "ArchivedChats"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4814
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4851
    :cond_a
    :goto_4
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v1, :cond_b

    .line 4852
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrVerified:I

    const-string v2, "AccDescrVerified"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4853
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4855
    :cond_b
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-eqz v1, :cond_c

    .line 4856
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrNotificationsMuted:I

    const-string v2, "AccDescrNotificationsMuted"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4857
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4859
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4860
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrUserOnline:I

    const-string v2, "AccDescrUserOnline"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4861
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4863
    :cond_d
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    const/4 v2, 0x0

    if-lez v1, :cond_e

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "NewMessages"

    .line 4864
    invoke-static {v6, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4865
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4867
    :cond_e
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    if-lez v1, :cond_f

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "AccDescrMentionCount"

    .line 4868
    invoke-static {v6, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4869
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4871
    :cond_f
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-lez v1, :cond_10

    .line 4872
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrMentionReaction:I

    const-string v5, "AccDescrMentionReaction"

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4873
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4875
    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_1d

    iget v5, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v5, :cond_11

    goto/16 :goto_8

    .line 4880
    :cond_11
    iget v5, p0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    if-nez v5, :cond_12

    .line 4882
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    :cond_12
    int-to-long v5, v5

    .line 4884
    invoke-static {v5, v6, v3}, Lorg/telegram/messenger/LocaleController;->formatDateAudio(JZ)Ljava/lang/String;

    move-result-object v1

    .line 4885
    iget-object v5, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 4886
    sget v5, Lorg/telegram/messenger/R$string;->AccDescrSentDate:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v1, "AccDescrSentDate"

    invoke-static {v1, v5, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 4888
    :cond_13
    sget v5, Lorg/telegram/messenger/R$string;->AccDescrReceivedDate:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v1, "AccDescrReceivedDate"

    invoke-static {v1, v5, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4890
    :goto_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4891
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-nez v1, :cond_14

    .line 4892
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 4894
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v3, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4895
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4898
    :cond_14
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v1, :cond_1c

    .line 4899
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4900
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4901
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    .line 4902
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->getCaptionMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 4903
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 4904
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_15

    .line 4905
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4907
    :cond_15
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4910
    :cond_16
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    if-nez v3, :cond_17

    const/4 v3, -0x1

    goto :goto_6

    :cond_17
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    :goto_6
    if-lez v3, :cond_1b

    .line 4912
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const-string v5, "\n"

    .line 4913
    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-ge v5, v4, :cond_18

    if-ltz v5, :cond_18

    move v4, v5

    :cond_18
    const-string v5, "\t"

    .line 4915
    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-ge v5, v4, :cond_19

    if-ltz v5, :cond_19

    move v4, v5

    :cond_19
    const-string v5, " "

    .line 4917
    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ge v3, v4, :cond_1a

    if-ltz v3, :cond_1a

    move v4, v3

    .line 4919
    :cond_1a
    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 4921
    :cond_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4924
    :cond_1c
    :goto_7
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4925
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 4876
    :cond_1d
    :goto_8
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4877
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onReorderStateChanged(ZZ)V
    .locals 2

    .line 4747
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    if-ne v0, p1, :cond_3

    .line 4748
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 4749
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    :cond_2
    return-void

    .line 4753
    :cond_3
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    if-eqz p1, :cond_4

    move v0, v1

    .line 4755
    :cond_4
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    move v0, v1

    .line 4757
    :goto_0
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    .line 4759
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 5247
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->checkOnTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 5250
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->delegate:Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;->canClickButtonInside()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5251
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastTopicMessageUnread:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_2

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CanvasButton;->checkTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5255
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 4782
    sget v0, Lorg/telegram/messenger/R$id;->acc_action_chat_preview:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_0

    .line 4783
    invoke-virtual {v0, p0}, Lorg/telegram/ui/DialogsActivity;->showChatPreview(Lorg/telegram/ui/Cells/DialogCell;)Z

    const/4 p1, 0x1

    return p1

    .line 4786
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public resetPinnedArchiveState()V
    .locals 4

    .line 823
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/HiddenChatsController;->getInstance(I)Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/HiddenChatsController;->isHiddenChatsHidden()Z

    move-result v0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    .line 824
    :goto_1
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    .line 825
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setArchivedAvatarHiddenProgress(F)V

    .line 826
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    const/4 v0, 0x0

    .line 827
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    .line 828
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput v1, p0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    const/4 v0, 0x1

    .line 829
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->attachedToWindow:Z

    .line 830
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    .line 831
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Cells/DialogCell;->setTranslationX(F)V

    .line 832
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 833
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->attachedToWindow:Z

    if-eqz v1, :cond_3

    .line 834
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    :cond_3
    return-void
.end method

.method public setArchivedPullAnimation(Lorg/telegram/ui/Components/PullForegroundDrawable;)V
    .locals 0

    .line 5277
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    return-void
.end method

.method public setBottomClip(I)V
    .locals 0

    .line 5273
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->bottomClip:I

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 4

    .line 2781
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_2

    .line 2785
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$2;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x11

    goto :goto_0

    :cond_1
    const/16 v2, 0x15

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/telegram/ui/Cells/DialogCell$2;-><init>(Lorg/telegram/ui/Cells/DialogCell;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v1, -0x1

    .line 2792
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 2793
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 2794
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 2795
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2797
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 2798
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkTtl()V

    return-void
.end method

.method public setClipProgress(F)V
    .locals 0

    .line 5260
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    .line 5261
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method

.method public setCompactMode(Z)V
    .locals 1

    .line 151
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setCompactMode(Z)V

    .line 153
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    goto :goto_0

    :cond_0
    const/16 p1, 0x15

    .line 154
    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CheckBox2;->setSize(I)V

    :cond_1
    return-void
.end method

.method public setDialog(JLorg/telegram/messenger/MessageObject;IZZ)V
    .locals 2

    .line 738
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 739
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    .line 741
    :cond_0
    iput-wide p1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    .line 742
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Cells/DialogCell;->lastDialogChangedTime:J

    .line 743
    iput-object p3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    .line 744
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/DialogCell;->useMeForMyMessages:Z

    const/4 p1, 0x0

    .line 745
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    .line 746
    iput p4, p0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    if-eqz p3, :cond_1

    .line 747
    iget-object p2, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    .line 748
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 749
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-eqz p3, :cond_2

    .line 750
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    goto :goto_0

    :cond_2
    move p2, p1

    :goto_0
    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->messageId:I

    .line 751
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 752
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-eqz p3, :cond_3

    .line 753
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    move p2, p1

    :goto_1
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 754
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz p2, :cond_4

    .line 755
    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    .line 757
    :cond_4
    invoke-virtual {p0, p1, p6}, Lorg/telegram/ui/Cells/DialogCell;->update(IZ)Z

    return-void
.end method

.method public setDialog(Lorg/telegram/tgnet/TLRPC$Dialog;IIZ)V
    .locals 4

    .line 644
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 647
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 649
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimationInProgress:Z

    const/4 v0, -0x1

    .line 650
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    .line 652
    :cond_1
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    iput-wide v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    .line 653
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastDialogChangedTime:J

    const/4 v0, 0x1

    .line 654
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    .line 655
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    if-eqz v0, :cond_2

    .line 656
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    .line 657
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;->folder:Lorg/telegram/tgnet/TLRPC$TL_folder;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_folder;->id:I

    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    .line 658
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz p1, :cond_3

    .line 659
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setCell(Landroid/view/View;)V

    goto :goto_0

    .line 662
    :cond_2
    iput v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    .line 664
    :cond_3
    :goto_0
    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    .line 665
    iput p3, p0, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    .line 666
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/DialogCell;->isForward:Z

    .line 667
    iput v1, p0, Lorg/telegram/ui/Cells/DialogCell;->messageId:I

    .line 668
    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/Cells/DialogCell;->update(IZ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 669
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 671
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkOnline()V

    .line 672
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkGroupCall()V

    .line 673
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkChatTheme()V

    .line 674
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkTtl()V

    return-void
.end method

.method public setDialog(Lorg/telegram/ui/Cells/DialogCell$CustomDialog;)V
    .locals 0

    .line 682
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    const/4 p1, 0x0

    .line 683
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->messageId:I

    .line 684
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/DialogCell;->update(I)Z

    .line 685
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkOnline()V

    .line 686
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkGroupCall()V

    .line 687
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkChatTheme()V

    .line 688
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkTtl()V

    return-void
.end method

.method public setDialogCellDelegate(Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;)V
    .locals 0

    .line 5293
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->delegate:Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;

    return-void
.end method

.method public setDialogSelected(Z)V
    .locals 1

    .line 2759
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    if-eq v0, p1, :cond_0

    .line 2760
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    .line 2762
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    return-void
.end method

.method public setDialogsType(I)V
    .locals 0

    .line 159
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    return-void
.end method

.method public setForumTopic(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;JLorg/telegram/messenger/MessageObject;ZZ)V
    .locals 5

    .line 274
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 275
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    .line 276
    iget-wide v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    cmp-long v2, v2, p2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 277
    iput v3, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    .line 279
    :cond_1
    iget-object v2, p4, Lorg/telegram/messenger/MessageObject;->topicIconDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v2, v1

    instance-of v4, v4, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    if-eqz v4, :cond_2

    .line 280
    aget-object v2, v2, v1

    check-cast v2, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_color:I

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;->setColor(I)V

    .line 282
    :cond_2
    iput-wide p2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastDialogChangedTime:J

    .line 284
    iput-object p4, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    .line 285
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    .line 286
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/DialogCell;->showTopicIconInName:Z

    .line 288
    iget-object p2, p4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p3, p2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput p3, p0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 289
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    .line 290
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    .line 291
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->messageId:I

    .line 292
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v0

    goto :goto_1

    :cond_3
    move p2, v1

    :goto_1
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 294
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz p2, :cond_4

    .line 295
    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    :cond_4
    if-nez p6, :cond_5

    .line 298
    iput v3, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    :cond_5
    if-eqz p1, :cond_6

    .line 301
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->groupedMessages:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    .line 303
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz p1, :cond_7

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne p1, v0, :cond_7

    .line 304
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz p1, :cond_7

    .line 305
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setCell(Landroid/view/View;)V

    .line 308
    :cond_7
    invoke-virtual {p0, v1, p6}, Lorg/telegram/ui/Cells/DialogCell;->update(IZ)Z

    return-void
.end method

.method public setIsTransitionSupport(Z)V
    .locals 0

    .line 319
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->isTransitionSupport:Z

    return-void
.end method

.method public setMoving(Z)V
    .locals 0

    .line 266
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->moving:Z

    return-void
.end method

.method public setPinForced(Z)V
    .locals 0

    .line 936
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPinForced:Z

    .line 937
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    if-lez p1, :cond_0

    .line 938
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    .line 940
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method

.method public setPreloader(Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;)V
    .locals 0

    .line 769
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    return-void
.end method

.method public setRightFragmentOpenedProgress(F)V
    .locals 1

    .line 312
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 313
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    .line 314
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSharedResources(Lorg/telegram/ui/Cells/DialogCell$SharedResources;)V
    .locals 0

    return-void
.end method

.method public setSliding(Z)V
    .locals 0

    .line 4763
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    return-void
.end method

.method public setTopClip(I)V
    .locals 0

    .line 5269
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->topClip:I

    return-void
.end method

.method public setTranslationX(F)V
    .locals 6

    .line 3274
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 3277
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    .line 3278
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    cmpl-float p1, p1, v3

    if-nez p1, :cond_2

    .line 3279
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 3280
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->translationAnimationStarted:Z

    .line 3281
    iget p1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-ne p1, v1, :cond_1

    iget p1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {p1}, Lcom/iMe/fork/controller/HiddenChatsController;->getInstance(I)Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/HiddenChatsController;->isHiddenChatsHidden()Z

    move-result p1

    goto :goto_0

    :cond_1
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    .line 3282
    iput v3, p0, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    .line 3283
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    .line 3285
    :cond_2
    iget p1, p0, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, p1, v3

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 3286
    iput-boolean v4, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    goto :goto_1

    .line 3288
    :cond_3
    iput v3, p0, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    .line 3289
    iput v3, p0, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    .line 3290
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->drawRevealBackground:Z

    .line 3292
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->swipeCanceled:Z

    if-nez v0, :cond_6

    .line 3293
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawRevealBackground:Z

    .line 3294
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const v5, 0x3ee66666    # 0.45f

    mul-float/2addr v3, v5

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_4

    move v2, v4

    :cond_4
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->drawRevealBackground:Z

    if-eq v0, v2, :cond_6

    .line 3295
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/HiddenChatsController;->getInstance(I)Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/HiddenChatsController;->isHiddenChatsHidden()Z

    move-result v0

    goto :goto_2

    :cond_5
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    :goto_2
    if-ne p1, v0, :cond_6

    const/4 p1, 0x3

    .line 3297
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3301
    :catch_0
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 335
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->visibleOnScreen:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 338
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->visibleOnScreen:Z

    if-eqz p1, :cond_1

    .line 340
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    :cond_1
    return-void
.end method

.method public startOutAnimation()V
    .locals 3

    .line 4727
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz v0, :cond_2

    .line 4728
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x18

    .line 4729
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outCy:F

    .line 4730
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outCx:F

    .line 4731
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outRadius:F

    .line 4732
    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outImageSize:F

    goto :goto_0

    .line 4734
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outCy:F

    .line 4735
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outCx:F

    .line 4736
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outRadius:F

    .line 4737
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->hasHiddenStories()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4738
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outRadius:F

    const/high16 v2, 0x40600000    # 3.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outRadius:F

    .line 4740
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outImageSize:F

    .line 4742
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->startOutAnimation()V

    :cond_2
    return-void
.end method

.method public update(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 2835
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/DialogCell;->update(IZ)Z

    move-result p1

    return p1
.end method

.method public update(IZ)Z
    .locals 33

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 2842
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v2

    const/4 v3, 0x0

    .line 2844
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    .line 2846
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_2

    .line 2847
    iget v9, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    iput v9, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 2848
    iget v9, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    if-eqz v9, :cond_0

    move v10, v8

    goto :goto_0

    :cond_0
    move v10, v3

    :goto_0
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 2849
    iput v9, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2850
    iget-boolean v9, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    iput-boolean v9, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    .line 2851
    iget-boolean v9, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    iput-boolean v9, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    .line 2852
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    .line 2853
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v10, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    int-to-long v10, v10

    iget-object v4, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    invoke-virtual {v9, v10, v11, v4, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 2854
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v13, 0x0

    iget-object v15, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-string v14, "50_50"

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/messenger/ImageReceiver;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;J)V

    move v4, v3

    .line 2855
    :goto_1
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v10, v9

    if-ge v4, v10, :cond_1

    .line 2856
    aget-object v9, v9, v4

    invoke-virtual {v9, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2858
    :cond_1
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 2859
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    move v5, v3

    const/4 v4, 0x0

    goto/16 :goto_2b

    .line 2861
    :cond_2
    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2862
    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-eqz v9, :cond_3

    move v9, v8

    goto :goto_2

    :cond_3
    move v9, v3

    .line 2863
    :goto_2
    iget-boolean v10, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    .line 2864
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    const/4 v11, -0x1

    .line 2865
    iput v11, v0, Lorg/telegram/ui/Cells/DialogCell;->readOutboxMaxId:I

    .line 2866
    iget-boolean v11, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v11, :cond_18

    .line 2867
    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v14, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v11, v14, v15}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v11, :cond_16

    .line 2869
    iget v14, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->read_outbox_max_id:I

    iput v14, v0, Lorg/telegram/ui/Cells/DialogCell;->readOutboxMaxId:I

    .line 2870
    iget v14, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->ttl_period:I

    iput v14, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    if-nez p1, :cond_17

    .line 2872
    iget v14, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v14, v12, v13}, Lorg/telegram/messenger/MessagesController;->isClearingDialog(J)Z

    move-result v12

    iput-boolean v12, v0, Lorg/telegram/ui/Cells/DialogCell;->clearingDialog:Z

    .line 2873
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

    .line 2874
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

    .line 2875
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v12

    if-eqz v12, :cond_5

    move v12, v8

    goto :goto_4

    :cond_5
    move v12, v3

    :goto_4
    iput-boolean v12, v0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 2876
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

    .line 2877
    iget-boolean v13, v12, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v13, :cond_6

    iget-boolean v13, v0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    :cond_6
    if-eqz v12, :cond_8

    .line 2878
    iget-boolean v13, v12, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v13, :cond_8

    .line 2879
    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v13

    iget-wide v5, v12, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v13, v5, v6}, Lorg/telegram/messenger/TopicsController;->getForumUnreadCount(J)[I

    move-result-object v5

    .line 2880
    aget v6, v5, v3

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2881
    aget v6, v5, v8

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    const/4 v6, 0x2

    .line 2882
    aget v12, v5, v6

    iput v12, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    const/4 v6, 0x3

    .line 2883
    aget v5, v5, v6

    if-eqz v5, :cond_7

    move v5, v8

    goto :goto_5

    :cond_7
    move v5, v3

    :goto_5
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    goto :goto_7

    .line 2884
    :cond_8
    instance-of v5, v11, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    if-eqz v5, :cond_a

    .line 2885
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    if-ne v5, v8, :cond_9

    move v5, v3

    goto :goto_6

    :cond_9
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getArchiveUnreadCount()I

    move-result v5

    :goto_6
    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2886
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 2887
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    goto :goto_7

    .line 2889
    :cond_a
    iget v5, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2890
    iget v5, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mentions_count:I

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 2891
    iget v5, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_reactions_count:I

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    .line 2893
    :goto_7
    iget-boolean v5, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mark:Z

    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    .line 2894
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_b

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    .line 2895
    :cond_b
    iget v5, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->last_message_date:I

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 2897
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    if-nez v5, :cond_d

    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lcom/iMe/fork/controller/ForkTopicsController;->getInstance(I)Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v5

    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    if-ne v6, v8, :cond_c

    move v6, v8

    goto :goto_8

    :cond_c
    move v6, v3

    :goto_8
    invoke-virtual {v5, v6}, Lcom/iMe/fork/controller/ForkTopicsController;->hasSelectedTopic(Z)Z

    move-result v5

    if-nez v5, :cond_e

    :cond_d
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lcom/iMe/fork/controller/HiddenChatsController;->getInstance(I)Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lcom/iMe/fork/controller/HiddenChatsController;->isChatHidden(J)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2898
    :cond_e
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    goto :goto_e

    .line 2900
    :cond_f
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_12

    const/16 v6, 0x8

    if-ne v5, v6, :cond_10

    goto :goto_a

    .line 2904
    :cond_10
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v5, :cond_11

    iget-boolean v5, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->pinned:Z

    if-eqz v5, :cond_11

    move v5, v8

    goto :goto_9

    :cond_11
    move v5, v3

    :goto_9
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    goto :goto_e

    .line 2901
    :cond_12
    :goto_a
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->isForward:Z

    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    if-ne v12, v8, :cond_13

    move v12, v8

    goto :goto_b

    :cond_13
    move v12, v3

    :goto_b
    invoke-virtual {v5, v6, v12}, Lorg/telegram/messenger/MessagesController;->getSelectedDialogFilter(ZZ)[Lorg/telegram/messenger/MessagesController$DialogFilter;

    move-result-object v5

    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/16 v12, 0x8

    if-ne v6, v12, :cond_14

    move v6, v8

    goto :goto_c

    :cond_14
    move v6, v3

    :goto_c
    aget-object v5, v5, v6

    if-eqz v5, :cond_15

    .line 2902
    iget-object v5, v5, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v5, v11, v12}, Lorg/telegram/messenger/support/LongSparseIntArray;->indexOfKey(J)I

    move-result v5

    if-ltz v5, :cond_15

    move v5, v8

    goto :goto_d

    :cond_15
    move v5, v3

    :goto_d
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    .line 2906
    :goto_e
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_17

    .line 2907
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    goto :goto_f

    .line 2911
    :cond_16
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2912
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 2913
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    .line 2915
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 2916
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->clearingDialog:Z

    .line 2918
    :cond_17
    :goto_f
    iget-wide v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const-wide/16 v11, 0x0

    cmp-long v13, v5, v11

    if-eqz v13, :cond_19

    sget-wide v11, Lorg/telegram/ui/RightSlidingDialogContainer;->fragmentDialogId:J

    cmp-long v5, v5, v11

    goto :goto_10

    .line 2920
    :cond_18
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    .line 2922
    :cond_19
    :goto_10
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v5, :cond_1a

    .line 2923
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2924
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_mentions_count:I

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 2925
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_reactions_count:I

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    .line 2927
    :cond_1a
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1b

    .line 2928
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    :cond_1b
    if-eqz p1, :cond_3a

    .line 2933
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_1c

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->isSupportUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-nez v5, :cond_1c

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v5, :cond_1c

    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int v5, p1, v5

    if-eqz v5, :cond_1c

    .line 2934
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

    .line 2935
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->wasDrawnOnline:Z

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isOnline()Z

    move-result v6

    if-eq v5, v6, :cond_1c

    move v5, v8

    goto :goto_11

    :cond_1c
    move v5, v3

    .line 2939
    :goto_11
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v6, :cond_22

    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_EMOJI_STATUS:I

    and-int v6, p1, v6

    if-eqz v6, :cond_22

    .line 2940
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

    .line 2942
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled()Z

    move-result v5

    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumBadgeEnabled:Z

    .line 2943
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled()Z

    move-result v5

    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumStatusEnabled:Z

    .line 2944
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

    cmp-long v5, v5, v11

    if-eqz v5, :cond_1e

    const-wide/16 v5, 0x0

    cmp-long v11, v11, v5

    if-eqz v11, :cond_1e

    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumBadgeEnabled:Z

    if-nez v5, :cond_1d

    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumStatusEnabled:Z

    if-eqz v5, :cond_1e

    :cond_1d
    move v5, v8

    goto :goto_12

    :cond_1e
    move v5, v3

    :goto_12
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    .line 2946
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/Long;

    move-result-object v5

    .line 2948
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-eqz v6, :cond_21

    .line 2949
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumStatusEnabled:Z

    if-eqz v6, :cond_1f

    if-eqz v5, :cond_1f

    .line 2950
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 2951
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v6, v11, v12, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    goto :goto_13

    .line 2953
    :cond_1f
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 2955
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumBadgeEnabled:Z

    if-nez v5, :cond_20

    .line 2956
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 2957
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v5, v7, v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_13

    .line 2959
    :cond_20
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarDrawableMini:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    :cond_21
    :goto_13
    move v5, v8

    .line 2963
    :cond_22
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-nez v6, :cond_23

    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v6, :cond_27

    .line 2964
    :cond_23
    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_USER_PRINT:I

    and-int v6, p1, v6

    if-eqz v6, :cond_27

    .line 2965
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v11, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result v13

    invoke-virtual {v6, v11, v12, v13, v8}, Lorg/telegram/messenger/MessagesController;->getPrintingString(JIZ)Ljava/lang/CharSequence;

    move-result-object v6

    .line 2966
    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    if-eqz v11, :cond_24

    if-eqz v6, :cond_26

    :cond_24
    if-nez v11, :cond_25

    if-nez v6, :cond_26

    :cond_25
    if-eqz v11, :cond_27

    invoke-virtual {v11, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    :cond_26
    move v6, v8

    goto :goto_14

    :cond_27
    move v6, v3

    :goto_14
    if-nez v6, :cond_28

    .line 2971
    sget v11, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_MESSAGE_TEXT:I

    and-int v11, p1, v11

    if-eqz v11, :cond_28

    .line 2972
    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v11, :cond_28

    iget-object v11, v11, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageString:Ljava/lang/CharSequence;

    if-eq v11, v12, :cond_28

    move v6, v8

    :cond_28
    if-nez v6, :cond_2a

    .line 2976
    sget v11, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT:I

    and-int v11, p1, v11

    if-eqz v11, :cond_2a

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v11, :cond_2a

    .line 2977
    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v11

    .line 2978
    iget-boolean v12, v11, Lorg/telegram/tgnet/TLRPC$Chat;->call_active:Z

    if-eqz v12, :cond_29

    iget-boolean v11, v11, Lorg/telegram/tgnet/TLRPC$Chat;->call_not_empty:Z

    if-eqz v11, :cond_29

    move v11, v8

    goto :goto_15

    :cond_29
    move v11, v3

    :goto_15
    iget-boolean v12, v0, Lorg/telegram/ui/Cells/DialogCell;->hasCall:Z

    if-eq v11, v12, :cond_2a

    move v6, v8

    :cond_2a
    if-nez v6, :cond_2b

    .line 2982
    sget v11, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int v11, p1, v11

    if-eqz v11, :cond_2b

    .line 2983
    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v11, :cond_2b

    move v6, v8

    :cond_2b
    if-nez v6, :cond_2c

    .line 2987
    sget v11, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int v11, p1, v11

    if-eqz v11, :cond_2c

    .line 2988
    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v11, :cond_2c

    move v6, v8

    :cond_2c
    if-nez v6, :cond_2d

    .line 2992
    sget v11, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT_AVATAR:I

    and-int v11, p1, v11

    if-eqz v11, :cond_2d

    .line 2993
    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v11, :cond_2d

    move v6, v8

    :cond_2d
    if-nez v6, :cond_2e

    .line 2997
    sget v11, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT_NAME:I

    and-int v11, p1, v11

    if-eqz v11, :cond_2e

    .line 2998
    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v11, :cond_2e

    move v6, v8

    :cond_2e
    if-nez v6, :cond_37

    .line 3003
    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v11, :cond_2f

    iget-boolean v12, v0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v11

    if-eq v12, v11, :cond_2f

    .line 3004
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v6

    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    move v6, v8

    .line 3007
    :cond_2f
    iget-boolean v11, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v11, :cond_37

    .line 3008
    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v12, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v11, v12, v13}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v11, :cond_30

    move-object v12, v7

    goto :goto_16

    .line 3013
    :cond_30
    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-wide v14, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v14, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v12

    :goto_16
    if-eqz v12, :cond_32

    .line 3014
    iget-boolean v14, v12, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v14, :cond_32

    .line 3015
    iget v14, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v14

    iget-wide v7, v12, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v14, v7, v8}, Lorg/telegram/messenger/TopicsController;->getForumUnreadCount(J)[I

    move-result-object v7

    .line 3016
    aget v8, v7, v3

    const/4 v12, 0x1

    .line 3017
    aget v14, v7, v12

    const/4 v12, 0x2

    .line 3018
    aget v20, v7, v12

    const/4 v12, 0x3

    .line 3019
    aget v7, v7, v12

    if-eqz v7, :cond_31

    const/4 v7, 0x1

    goto :goto_17

    :cond_31
    move v7, v3

    :goto_17
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    move/from16 v7, v20

    goto :goto_19

    .line 3020
    :cond_32
    instance-of v7, v11, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    if-eqz v7, :cond_34

    .line 3021
    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_33

    move v8, v3

    goto :goto_18

    :cond_33
    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MessagesStorage;->getArchiveUnreadCount()I

    move-result v7

    move v8, v7

    :goto_18
    move v7, v3

    move v14, v7

    goto :goto_19

    :cond_34
    if-eqz v11, :cond_35

    .line 3024
    iget v8, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    .line 3025
    iget v14, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mentions_count:I

    .line 3026
    iget v7, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_reactions_count:I

    goto :goto_19

    :cond_35
    move v7, v3

    move v8, v7

    move v14, v8

    :goto_19
    if-eqz v11, :cond_37

    .line 3031
    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-ne v12, v8, :cond_36

    iget-boolean v12, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    iget-boolean v13, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mark:Z

    if-ne v12, v13, :cond_36

    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    if-ne v12, v14, :cond_36

    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-eq v12, v7, :cond_37

    .line 3032
    :cond_36
    iput v8, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 3033
    iput v14, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 3034
    iget-boolean v6, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mark:Z

    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    .line 3035
    iput v7, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    const/4 v6, 0x1

    :cond_37
    if-nez v6, :cond_38

    .line 3040
    sget v7, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_SEND_STATE:I

    and-int v7, p1, v7

    if-eqz v7, :cond_38

    .line 3041
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v7, :cond_38

    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eq v8, v7, :cond_38

    .line 3042
    iput v7, v0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    const/4 v6, 0x1

    :cond_38
    if-nez v6, :cond_39

    .line 3049
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return v3

    :cond_39
    const/4 v6, 0x0

    goto :goto_1a

    :cond_3a
    move v5, v3

    move-object v6, v7

    .line 3055
    :goto_1a
    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 3056
    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3057
    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 3060
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v6, :cond_3c

    .line 3061
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    .line 3062
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    .line 3063
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->findFolderTopMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_3b

    .line 3065
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v11

    :goto_1b
    const-wide/16 v6, 0x0

    goto :goto_1e

    :cond_3b
    const-wide/16 v6, 0x0

    const-wide/16 v11, 0x0

    goto :goto_1e

    .line 3070
    :cond_3c
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    .line 3071
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v6, :cond_3e

    .line 3072
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v6, v7, v8, v3}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v6

    .line 3073
    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v11, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-virtual {v7, v11, v12, v8}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v7

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell;->topicMuted:Z

    if-ne v6, v7, :cond_3d

    .line 3075
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    .line 3076
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    goto :goto_1d

    .line 3078
    :cond_3d
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    const/4 v6, 0x1

    xor-int/2addr v7, v6

    .line 3079
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    goto :goto_1d

    .line 3082
    :cond_3e
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v6, :cond_3f

    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result v11

    invoke-virtual {v6, v7, v8, v11}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v6

    if-eqz v6, :cond_3f

    const/4 v6, 0x1

    goto :goto_1c

    :cond_3f
    move v6, v3

    :goto_1c
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    .line 3085
    :goto_1d
    iget-wide v11, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    goto :goto_1b

    :goto_1e
    cmp-long v6, v11, v6

    if-eqz v6, :cond_43

    .line 3089
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 3090
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v6, :cond_42

    .line 3092
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_1f

    .line 3094
    :cond_40
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 3095
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_1f

    .line 3097
    :cond_41
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    neg-long v7, v11

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3098
    iget-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-nez v7, :cond_42

    if-eqz v6, :cond_42

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v6, :cond_42

    .line 3099
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    if-eqz v6, :cond_42

    .line 3101
    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3105
    :cond_42
    :goto_1f
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->useMeForMyMessages:Z

    if-eqz v6, :cond_43

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v6, :cond_43

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v6

    if-eqz v6, :cond_43

    .line 3106
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    iget-wide v7, v7, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 3110
    :cond_43
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    const/16 v7, 0xc

    if-eqz v6, :cond_44

    .line 3111
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3112
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 3113
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v23, 0x0

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/16 v25, 0x0

    move-object/from16 v19, v6

    move-object/from16 v22, v8

    move-object/from16 v24, v11

    invoke-virtual/range {v19 .. v25}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_20

    .line 3115
    :cond_44
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->useFromUserAsAvatar:Z

    if-eqz v6, :cond_45

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_45

    .line 3116
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getFromPeerObject()Lorg/telegram/tgnet/TLObject;

    move-result-object v6

    invoke-virtual {v8, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLObject;)V

    .line 3117
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getFromPeerObject()Lorg/telegram/tgnet/TLObject;

    move-result-object v8

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v6, v8, v11}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_20

    .line 3118
    :cond_45
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v6, :cond_48

    .line 3119
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v8, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 3120
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 3121
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 3122
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v23, 0x0

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/16 v25, 0x0

    move-object/from16 v19, v6

    move-object/from16 v22, v8

    move-object/from16 v24, v11

    invoke-virtual/range {v19 .. v25}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_20

    .line 3123
    :cond_46
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v6

    if-eqz v6, :cond_47

    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->useMeForMyMessages:Z

    if-nez v6, :cond_47

    .line 3124
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 3125
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v23, 0x0

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/16 v25, 0x0

    move-object/from16 v19, v6

    move-object/from16 v22, v8

    move-object/from16 v24, v11

    invoke-virtual/range {v19 .. v25}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_20

    .line 3127
    :cond_47
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v29, 0x0

    const/16 v30, 0x1

    const/16 v31, 0x1

    const/16 v32, 0x0

    move-object/from16 v26, v6

    move-object/from16 v27, v8

    move-object/from16 v28, v11

    invoke-virtual/range {v26 .. v32}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;ZIZ)V

    goto :goto_20

    .line 3129
    :cond_48
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v6, :cond_4a

    .line 3130
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v8, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 3132
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v11, v8, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v6, v11, v12}, Lorg/telegram/messenger/ChatObject;->isTemplatesChat(IJ)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 3133
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v8, 0x65

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 3134
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v23, 0x0

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/16 v25, 0x0

    move-object/from16 v19, v6

    move-object/from16 v22, v8

    move-object/from16 v24, v11

    invoke-virtual/range {v19 .. v25}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_20

    .line 3136
    :cond_49
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v6, v8, v11}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    :cond_4a
    :goto_20
    const-wide/16 v11, 0x96

    const-wide/16 v13, 0xdc

    if-eqz v1, :cond_57

    .line 3140
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-ne v4, v6, :cond_4b

    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-eq v10, v6, :cond_57

    :cond_4b
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v6, :cond_4c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    iget-wide v7, v0, Lorg/telegram/ui/Cells/DialogCell;->lastDialogChangedTime:J

    sub-long v17, v17, v7

    const-wide/16 v6, 0x64

    cmp-long v6, v17, v6

    if-lez v6, :cond_57

    .line 3141
    :cond_4c
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_4d

    .line 3142
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4d
    const/4 v6, 0x2

    new-array v7, v6, [F

    .line 3144
    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    .line 3145
    new-instance v7, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3149
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lorg/telegram/ui/Cells/DialogCell$3;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Cells/DialogCell$3;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v4, :cond_4e

    .line 3159
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-eqz v6, :cond_4f

    :cond_4e
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-nez v6, :cond_51

    if-nez v10, :cond_4f

    goto :goto_21

    .line 3162
    :cond_4f
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-nez v6, :cond_50

    .line 3163
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3164
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_22

    .line 3166
    :cond_50
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0x1ae

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3167
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_22

    .line 3160
    :cond_51
    :goto_21
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3161
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v7}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3169
    :goto_22
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    if-eqz v6, :cond_55

    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount2:Z

    if-eqz v6, :cond_55

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    if-eqz v6, :cond_55

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    .line 3170
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const-string v8, "%d"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v10, v6, [Ljava/lang/Object;

    .line 3171
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v3

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 3173
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v8, v10, :cond_54

    .line 3174
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3175
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3176
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move v11, v3

    .line 3177
    :goto_23
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_53

    .line 3178
    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v12, v13, :cond_52

    .line 3179
    new-instance v12, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v12}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v8, v12, v11, v13, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3180
    new-instance v12, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v12}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    invoke-virtual {v10, v12, v11, v13, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_24

    .line 3182
    :cond_52
    new-instance v12, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v12}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v15, v12, v11, v13, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_24
    add-int/lit8 v11, v11, 0x1

    const-wide/16 v13, 0xdc

    goto :goto_23

    :cond_53
    const/16 v11, 0xc

    .line 3186
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v11, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-double v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v7, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3187
    new-instance v7, Landroid/text/StaticLayout;

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    sget-object v23, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v22, v6

    invoke-direct/range {v19 .. v26}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    .line 3188
    new-instance v7, Landroid/text/StaticLayout;

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    sget-object v23, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object/from16 v19, v7

    move-object/from16 v20, v15

    invoke-direct/range {v19 .. v26}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationStableLayout:Landroid/text/StaticLayout;

    .line 3189
    new-instance v7, Landroid/text/StaticLayout;

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    sget-object v23, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object/from16 v19, v7

    move-object/from16 v20, v10

    invoke-direct/range {v19 .. v26}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationInLayout:Landroid/text/StaticLayout;

    goto :goto_25

    .line 3191
    :cond_54
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    .line 3194
    :cond_55
    :goto_25
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidthOld:I

    .line 3195
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countLeftOld:I

    .line 3196
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-le v6, v4, :cond_56

    const/4 v12, 0x1

    goto :goto_26

    :cond_56
    move v12, v3

    :goto_26
    iput-boolean v12, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationIncrement:Z

    .line 3197
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 3200
    :cond_57
    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-eqz v4, :cond_58

    const/4 v12, 0x1

    goto :goto_27

    :cond_58
    move v12, v3

    :goto_27
    if-eqz v1, :cond_5b

    if-eq v12, v9, :cond_5b

    .line 3202
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_59

    .line 3203
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_59
    const/4 v4, 0x0

    .line 3205
    iput v4, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    const/4 v6, 0x2

    new-array v6, v6, [F

    .line 3206
    fill-array-data v6, :array_1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    .line 3207
    new-instance v7, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3211
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lorg/telegram/ui/Cells/DialogCell$4;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Cells/DialogCell$4;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v12, :cond_5a

    .line 3219
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0xdc

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3220
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v7}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_28

    .line 3222
    :cond_5a
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0x96

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3223
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3225
    :goto_28
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_29

    :cond_5b
    const/4 v4, 0x0

    .line 3228
    :goto_29
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v7, :cond_5d

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v7, :cond_5d

    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v7, :cond_5d

    iget-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell;->useFromUserAsAvatar:Z

    if-nez v7, :cond_5d

    iget-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v7, :cond_5c

    const/16 v7, 0x8

    goto :goto_2a

    :cond_5c
    const/16 v7, 0x10

    goto :goto_2a

    :cond_5d
    const/16 v7, 0x1c

    :goto_2a
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 3230
    :goto_2b
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v6, :cond_5f

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    if-nez v6, :cond_5e

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    if-eqz v6, :cond_5f

    :cond_5e
    const/4 v12, 0x1

    goto :goto_2c

    :cond_5f
    move v12, v3

    :goto_2c
    if-nez v5, :cond_62

    .line 3234
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget v5, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    if-nez v5, :cond_60

    const/4 v5, 0x1

    goto :goto_2d

    :cond_60
    move v5, v3

    .line 3235
    :goto_2d
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/Stories/StoriesUtilities;->getPredictiveUnreadState(Lorg/telegram/ui/Stories/StoriesController;J)I

    move-result v6

    if-nez v6, :cond_61

    const/4 v6, 0x1

    goto :goto_2e

    :cond_61
    move v6, v3

    :cond_62
    :goto_2e
    if-nez v1, :cond_65

    .line 3242
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-nez v1, :cond_64

    iget-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-eqz v1, :cond_63

    goto :goto_2f

    :cond_63
    move v5, v4

    goto :goto_30

    :cond_64
    :goto_2f
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_30
    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    .line 3243
    iget-object v1, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_65

    .line 3244
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3248
    :cond_65
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    .line 3250
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v1

    if-eq v1, v2, :cond_66

    const/4 v3, 0x1

    :cond_66
    if-eqz v12, :cond_68

    .line 3254
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell;->attachedToWindow:Z

    if-eqz v1, :cond_67

    .line 3255
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    goto :goto_31

    :cond_67
    const/4 v1, 0x1

    .line 3257
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell;->updateLayout:Z

    :cond_68
    :goto_31
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

    .line 4954
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    return-void

    .line 4957
    :cond_0
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 4958
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

    .line 4959
    iput v7, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    .line 4960
    iput-boolean v7, p0, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    .line 4961
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda5;->INSTANCE:Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda5;

    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_0
    const/4 v0, 0x3

    .line 4962
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v7, v0, :cond_9

    .line 4963
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_4

    .line 4964
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

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isStoryMedia()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4965
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

    .line 4966
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

    .line 4967
    :cond_3
    invoke-direct {p0, v7, v0}, Lorg/telegram/ui/Cells/DialogCell;->setThumb(ILorg/telegram/messenger/MessageObject;)V

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4971
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_9

    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v1, :cond_9

    .line 4972
    iput v7, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    .line 4973
    iput-boolean v7, p0, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    .line 4974
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

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isStoryMedia()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4975
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

    .line 4976
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

    .line 4977
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, v7, v0}, Lorg/telegram/ui/Cells/DialogCell;->setThumb(ILorg/telegram/messenger/MessageObject;)V

    :cond_9
    return-void
.end method
