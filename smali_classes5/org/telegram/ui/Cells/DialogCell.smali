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
.field private adaptiveEmojiColor:[I

.field private adaptiveEmojiColorFilter:[Landroid/graphics/ColorFilter;

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

.field public isSavedDialog:Z

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

.field private lockDrawable:Landroid/graphics/drawable/Drawable;

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

.field private premiumBlocked:Z

.field private final premiumBlockedT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

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

.field private unsubscribePremiumBlocked:Ljava/lang/Runnable;

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
.method public static synthetic $r8$lambda$AEd2DD5mfNN1qkD8Ohc4x80z_SI(Lorg/telegram/ui/Cells/DialogCell;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DialogCell;->lambda$showPremiumBlocked$5([Ljava/lang/Object;)V

    return-void
.end method

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

    .line 631
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
    .locals 14

    move-object v7, p0

    move/from16 v8, p5

    move-object/from16 v9, p2

    .line 637
    invoke-direct {p0, v9}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    .line 197
    iput-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->drawArchive:Z

    .line 207
    iput-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->drawAvatar:Z

    const/16 v0, 0x48

    .line 208
    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    .line 209
    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->heightDefault:I

    const/16 v0, 0x4e

    .line 210
    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->heightThreeLines:I

    const/high16 v0, 0x42280000    # 42.0f

    .line 218
    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->chekBoxPaddingTop:F

    .line 242
    new-instance v11, Lorg/telegram/ui/Cells/DialogCell$1;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lorg/telegram/ui/Cells/DialogCell$1;-><init>(Lorg/telegram/ui/Cells/DialogCell;Z)V

    iput-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 267
    new-instance v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-direct {v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbSpoiler:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 269
    iput-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->visibleOnScreen:Z

    const/4 v0, 0x0

    .line 330
    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    .line 413
    iput-boolean v12, v7, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    .line 445
    iput-boolean v12, v7, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeAction:Z

    const/4 v0, 0x3

    new-array v1, v0, [Z

    .line 455
    iput-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbImageSeen:[Z

    new-array v1, v0, [Lorg/telegram/messenger/ImageReceiver;

    .line 456
    iput-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    new-array v1, v0, [Z

    .line 457
    iput-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->drawPlay:[Z

    new-array v0, v0, [Z

    .line 458
    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->drawSpoiler:[Z

    .line 460
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 461
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 464
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->interpolator:Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;

    .line 474
    new-instance v13, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x15e

    move-object v0, v13

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v13, v7, Lorg/telegram/ui/Cells/DialogCell;->premiumBlockedT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 534
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool:Ljava/util/Stack;

    .line 535
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    .line 536
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool2:Ljava/util/Stack;

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    .line 561
    iput-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount2:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 570
    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->countChangeProgress:F

    .line 571
    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    .line 592
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    const/4 v0, -0x1

    .line 599
    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    .line 611
    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->readOutboxMaxId:I

    .line 612
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;-><init>(Lorg/telegram/ui/Cells/DialogCell;Lorg/telegram/ui/Cells/DialogCell$1;)V

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    .line 638
    iput-boolean v10, v11, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->allowLongress:Z

    move-object/from16 v0, p6

    .line 639
    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, p1

    .line 640
    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    .line 641
    invoke-static/range {p2 .. p2}, Lorg/telegram/ui/ActionBar/Theme;->createDialogsResources(Landroid/content/Context;)V

    .line 642
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    .line 643
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 v1, 0x1c

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 644
    :goto_0
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v1, v0

    if-ge v12, v1, :cond_0

    .line 645
    new-instance v1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    aput-object v1, v0, v12

    .line 646
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v1, v0, v12

    iput-boolean v10, v1, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    .line 647
    aget-object v0, v0, v12

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 648
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v0, v0, v12

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 649
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v0, v0, v12

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    move/from16 v0, p4

    .line 651
    iput-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    .line 652
    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    .line 654
    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/16 v1, 0x16

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 655
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/DialogCell;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Cells/DialogCell;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/Cells/DialogCell;->animateToStatusDrawableParams:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Cells/DialogCell;II)V
    .locals 0

    .line 137
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Cells/DialogCell;->createStatusDrawableAnimator(II)V

    return-void
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Cells/DialogCell;Z)Z
    .locals 0

    .line 137
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Cells/DialogCell;I)I
    .locals 0

    .line 137
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Cells/DialogCell;)J
    .locals 2

    .line 137
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    return-wide v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Cells/DialogCell;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Cells/DialogCell;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Cells/DialogCell;)Lorg/telegram/messenger/MessageObject;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Cells/DialogCell;)I
    .locals 0

    .line 137
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Cells/DialogCell;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Cells/DialogCell;)Landroid/text/StaticLayout;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Cells/DialogCell;F)F
    .locals 0

    .line 137
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->countChangeProgress:F

    return p1
.end method

.method static synthetic access$502(Lorg/telegram/ui/Cells/DialogCell;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$602(Lorg/telegram/ui/Cells/DialogCell;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationStableLayout:Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$702(Lorg/telegram/ui/Cells/DialogCell;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationInLayout:Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$802(Lorg/telegram/ui/Cells/DialogCell;F)F
    .locals 0

    .line 137
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    return p0
.end method

.method private applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 2680
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v0, :cond_0

    .line 2681
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, " "

    .line 2682
    invoke-virtual {p1, v0, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2683
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

    .line 174
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->bottomClip:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private checkChatTheme()V
    .locals 5

    .line 747
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    if-eqz v1, :cond_0

    .line 748
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    .line 749
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

    .line 737
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

    .line 738
    :goto_1
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    return-void
.end method

.method private checkOnline()V
    .locals 3

    .line 708
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 709
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

    .line 711
    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 714
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 715
    :goto_0
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    return-void
.end method

.method private checkTtl()V
    .locals 1

    .line 742
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

    .line 743
    :goto_1
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    return-void
.end method

.method private checkTwoLinesForName()V
    .locals 1

    const/4 v0, 0x0

    .line 885
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    .line 886
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_0

    .line 887
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    .line 888
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->nameIsEllipsized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 889
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    .line 890
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    :cond_0
    return-void
.end method

.method private computeHeight()I
    .locals 1

    .line 873
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isTransitionSupport:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->collapsed:Z

    if-nez v0, :cond_3

    .line 874
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

    .line 876
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->getCollapsedHeight()I

    move-result v0

    return v0
.end method

.method private createStatusDrawableAnimator(II)V
    .locals 3

    const/4 v0, 0x0

    .line 4780
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableProgress:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 4781
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xdc

    .line 4782
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4784
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4785
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->animateFromStatusDrawableParams:I

    .line 4786
    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->animateToStatusDrawableParams:I

    .line 4787
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4791
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Cells/DialogCell$5;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Cells/DialogCell$5;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 p1, 0x1

    .line 4804
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimationInProgress:Z

    .line 4805
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

    .line 2720
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lorg/telegram/ui/Cells/DialogCell;->clockDrawLeft:I

    iget p4, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-static {p2, p3, p4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    cmpl-float p2, p6, v2

    if-eqz p2, :cond_1

    .line 2722
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2723
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

    .line 2724
    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    mul-float/2addr p6, v4

    float-to-int p4, p6

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2726
    :cond_1
    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p2, :cond_2

    .line 2728
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2729
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2731
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    goto/16 :goto_0

    :cond_3
    if-eqz p4, :cond_a

    if-eqz p3, :cond_8

    .line 2734
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawLeft:I

    iget p4, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-static {p2, p3, p4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    if-eqz p5, :cond_4

    .line 2736
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2737
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

    .line 2738
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    mul-float p3, p6, v4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_4
    if-nez p5, :cond_5

    if-eqz v1, :cond_5

    .line 2741
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2742
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

    .line 2743
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    mul-float/2addr v4, p6

    float-to-int p3, v4

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2744
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkReadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2747
    :cond_5
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p5, :cond_6

    .line 2750
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2751
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 p2, 0x4

    .line 2752
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr v2, p6

    mul-float/2addr p2, v2

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2754
    :cond_6
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkReadDrawable:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    iget p4, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-static {p2, p3, p4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 2755
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkReadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p5, :cond_7

    .line 2757
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2758
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_7
    if-nez p5, :cond_a

    if-eqz v1, :cond_a

    .line 2762
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2763
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2764
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkReadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 2767
    :cond_8
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft1:I

    iget p4, p0, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    invoke-static {p2, p3, p4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    cmpl-float p2, p6, v2

    if-eqz p2, :cond_9

    .line 2769
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2770
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

    .line 2771
    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    mul-float/2addr p6, v4

    float-to-int p4, p6

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2773
    :cond_9
    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p2, :cond_a

    .line 2775
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2776
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

    .line 4609
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

    .line 4610
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

    .line 4611
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

    .line 4616
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    if-nez v12, :cond_5

    .line 4617
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    iput-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    .line 4618
    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4619
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    const/4 v13, 0x2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4620
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 4621
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 4623
    :cond_5
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedOverlay:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    .line 4624
    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    .line 4625
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    .line 4626
    invoke-static {v12, v10}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v15

    .line 4627
    invoke-static {v12}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v11

    .line 4624
    invoke-static {v14, v15, v12}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v12

    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 4630
    :cond_6
    iget-boolean v12, v0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v12, :cond_a

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_inbox_max_id:I

    if-nez v12, :cond_a

    .line 4631
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->topicCounterPaint:Landroid/graphics/Paint;

    if-nez v6, :cond_7

    .line 4632
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->topicCounterPaint:Landroid/graphics/Paint;

    .line 4634
    :cond_7
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->topicCounterPaint:Landroid/graphics/Paint;

    if-eqz p2, :cond_8

    .line 4635
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_topics_unreadCounterMuted:I

    goto :goto_3

    :cond_8
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_topics_unreadCounter:I

    :goto_3
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    .line 4636
    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 4637
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

    .line 4641
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

    .line 4644
    :goto_6
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    const/high16 v15, 0x40b00000    # 5.5f

    const/16 v16, 0x4

    const/high16 v17, 0x41380000    # 11.5f

    if-eqz v12, :cond_1d

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-nez v13, :cond_d

    goto/16 :goto_f

    .line 4699
    :cond_d
    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v12, v9, v12

    int-to-float v10, v10

    mul-float/2addr v12, v10

    float-to-int v10, v12

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4700
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

    .line 4708
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    sub-float v13, v3, v13

    .line 4709
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

    .line 4713
    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v8, v11}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v8

    mul-float/2addr v8, v14

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_f
    const/high16 v11, 0x3f800000    # 1.0f

    .line 4715
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

    .line 4718
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    mul-float/2addr v8, v4

    .line 4719
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual {v1, v8, v8, v4, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    if-eqz v5, :cond_14

    .line 4721
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    if-eqz v4, :cond_10

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    if-eqz v4, :cond_10

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 4722
    :cond_10
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    if-nez v4, :cond_11

    .line 4723
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    goto :goto_9

    .line 4725
    :cond_11
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 4727
    :goto_9
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    if-nez v4, :cond_12

    .line 4728
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    .line 4730
    :cond_12
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v4, v5, v8}, Lorg/telegram/ui/Components/BubbleCounterPath;->addBubbleRect(Landroid/graphics/Path;Landroid/graphics/RectF;F)V

    .line 4732
    :cond_13
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz p7, :cond_15

    .line 4734
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_a

    .line 4737
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

    .line 4739
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4742
    :cond_15
    :goto_a
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationStableLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_16

    .line 4743
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4744
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4745
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationStableLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4746
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4749
    :cond_16
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getAlpha()I

    move-result v2

    .line 4750
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    int-to-float v5, v2

    mul-float v6, v5, v12

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 4751
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationInLayout:Landroid/text/StaticLayout;

    const/16 v6, 0xd

    if-eqz v4, :cond_18

    .line 4752
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4753
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

    .line 4754
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationInLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4755
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_d

    .line 4756
    :cond_18
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_1a

    .line 4757
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4758
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

    .line 4759
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4760
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4763
    :cond_1a
    :goto_d
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_1c

    .line 4764
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    mul-float v5, v5, v18

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 4765
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4766
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

    .line 4767
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4768
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4770
    :cond_1c
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 4771
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_13

    .line 4645
    :cond_1d
    :goto_f
    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-nez v9, :cond_1e

    goto :goto_10

    :cond_1e
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    .line 4646
    :goto_10
    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v9, v13, v9

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4647
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v10, v13, v10

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 4649
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int v9, v3, v9

    .line 4650
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

    .line 4652
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v13, v4, v10

    if-eqz v13, :cond_1f

    .line 4654
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

    .line 4657
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 4658
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v13, v10, v13

    mul-float/2addr v13, v11

    float-to-int v11, v13

    invoke-virtual {v4, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4659
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    iget v13, v0, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    invoke-static {v4, v11, v13}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 4660
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    sub-float v4, v10, v8

    .line 4661
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

    .line 4662
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4663
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4665
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

    .line 4669
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    if-eqz v4, :cond_22

    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    if-eqz v4, :cond_22

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 4670
    :cond_22
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    if-nez v4, :cond_23

    .line 4671
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    goto :goto_11

    .line 4673
    :cond_23
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 4675
    :goto_11
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    if-nez v4, :cond_24

    .line 4676
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    .line 4678
    :cond_24
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPathRect:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v4, v5, v8}, Lorg/telegram/ui/Components/BubbleCounterPath;->addBubbleRect(Landroid/graphics/Path;Landroid/graphics/RectF;F)V

    .line 4680
    :cond_25
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz p7, :cond_27

    .line 4682
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->counterPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_12

    .line 4685
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

    .line 4687
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

    .line 4691
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, v3

    .line 4692
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4693
    invoke-virtual {v12, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4694
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4697
    :cond_28
    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_13
    if-eqz v7, :cond_29

    .line 4774
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

    .line 2834
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2838
    :cond_0
    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    iget v4, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/telegram/ui/DialogsActivity;->getDialogsArray(IIIZ)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2839
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2841
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2842
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsAlbumsOnly:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2844
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move-object v4, v1

    move v3, v5

    :goto_0
    if-ge v3, v0, :cond_5

    .line 2845
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 2846
    iget v7, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->dialogMessage:Landroidx/collection/LongSparseArray;

    if-eqz v7, :cond_4

    .line 2848
    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v7, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    .line 2849
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

    .line 2850
    iget-object v8, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v9, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-le v8, v9, :cond_3

    :cond_2
    move-object v4, v7

    .line 2853
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

    .line 960
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 961
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getDialogs(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 963
    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 964
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 966
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 967
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsAlbumsOnly:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v1, v2

    .line 970
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderDialogsCount:I

    .line 971
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 972
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    const-string v7, ", "

    if-ge v6, v4, :cond_a

    .line 973
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 976
    iget-wide v9, v8, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v0, v9, v10}, Lorg/telegram/messenger/MessagesController;->isHiddenByUndo(J)Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_4

    .line 979
    :cond_1
    iget-wide v9, v8, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v9, v10}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_3

    .line 980
    iget-wide v11, v8, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 982
    iget-wide v11, v9, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    goto :goto_2

    :cond_2
    move-object v9, v10

    goto :goto_2

    .line 985
    :cond_3
    iget-wide v11, v8, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 986
    iget-wide v11, v8, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    goto :goto_2

    .line 988
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

    .line 993
    iget-object v9, v10, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v9, v12, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_5
    if-eqz v9, :cond_9

    .line 995
    invoke-static {v9}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 996
    sget v9, Lorg/telegram/messenger/R$string;->HiddenName:I

    const-string v10, "HiddenName"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 998
    :cond_6
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v10, v9}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v12, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    .line 1003
    :goto_3
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_7

    .line 1004
    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1006
    :cond_7
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    .line 1007
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v10

    .line 1008
    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1009
    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    if-lez v8, :cond_8

    .line 1010
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

    .line 1012
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

    .line 1016
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

    .line 1018
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/StoriesController;->getTotalStoriesCount(Z)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1019
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 1020
    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_b
    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "Stories"

    .line 1022
    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1024
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

    .line 2618
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

    .line 2634
    :cond_0
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 2630
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

    .line 2626
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 2622
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

    .line 2698
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;-><init>(Lorg/telegram/ui/Cells/DialogCell$1;)V

    .line 2703
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->access$300(Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;ILorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 2704
    iget v1, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->topMessageTopicStartIndex:I

    iput v1, p0, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicStartIndex:I

    .line 2705
    iget v1, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->topMessageTopicEndIndex:I

    iput v1, p0, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicEndIndex:I

    .line 2706
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->lastTopicMessageUnread:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->lastTopicMessageUnread:Z

    .line 2707
    iget-object v0, v0, Lorg/telegram/ui/Cells/DialogCell$ForumFormattedNames;->formattedNames:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private getAdaptiveEmojiColorFilter(II)Landroid/graphics/ColorFilter;
    .locals 3

    .line 5647
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->adaptiveEmojiColorFilter:[Landroid/graphics/ColorFilter;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 5648
    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->adaptiveEmojiColor:[I

    new-array v0, v0, [Landroid/graphics/ColorFilter;

    .line 5649
    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->adaptiveEmojiColorFilter:[Landroid/graphics/ColorFilter;

    .line 5651
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->adaptiveEmojiColor:[I

    aget v0, v0, p1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->adaptiveEmojiColorFilter:[Landroid/graphics/ColorFilter;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 5652
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->adaptiveEmojiColorFilter:[Landroid/graphics/ColorFilter;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->adaptiveEmojiColor:[I

    aput p2, v2, p1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    aput-object v1, v0, p1

    .line 5654
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->adaptiveEmojiColorFilter:[Landroid/graphics/ColorFilter;

    aget-object p1, p2, p1

    return-object p1
.end method

.method private getCaptionMessage()Lorg/telegram/messenger/MessageObject;
    .locals 6

    .line 5013
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 5014
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

    .line 5022
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 5023
    iget-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_3

    .line 5024
    iget-object v5, v4, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    .line 5026
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

    .line 881
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

    .line 3315
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

    .line 179
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 180
    sget-object v0, Lcom/iMe/fork/enums/LockedSection;->ARCHIVE:Lcom/iMe/fork/enums/LockedSection;

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    sget-object v0, Lcom/iMe/fork/enums/LockedSection;->CLOUD:Lcom/iMe/fork/enums/LockedSection;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_2

    return v2

    .line 187
    :cond_2
    iget v3, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v3}, Lcom/iMe/fork/controller/LockedSectionsController;->getInstance(I)Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/iMe/fork/controller/LockedSectionsController;->getSectionsPasscodeData(Lcom/iMe/fork/enums/LockedSection;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 188
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

    .line 719
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 722
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_3

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 725
    :cond_1
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gtz v0, :cond_2

    .line 726
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

    .line 730
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

    .line 4788
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableProgress:F

    .line 4789
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onDraw$2()V
    .locals 1

    .line 3846
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->delegate:Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;

    if-eqz v0, :cond_0

    .line 3847
    invoke-interface {v0, p0}, Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;->onButtonClicked(Lorg/telegram/ui/Cells/DialogCell;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onDraw$3()V
    .locals 1

    .line 3851
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->delegate:Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;

    if-eqz v0, :cond_0

    .line 3852
    invoke-interface {v0, p0}, Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;->onButtonLongPress(Lorg/telegram/ui/Cells/DialogCell;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showPremiumBlocked$5([Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x1

    .line 5665
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DialogCell;->updatePremiumBlocked(Z)V

    return-void
.end method

.method private synthetic lambda$update$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 3196
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->countChangeProgress:F

    .line 3197
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method

.method private synthetic lambda$update$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 3258
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    .line 3259
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method

.method private setThumb(ILorg/telegram/messenger/MessageObject;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v11, p2

    .line 5068
    iget-object v1, v11, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    .line 5069
    iget-object v2, v11, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    .line 5070
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isStoryMedia()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5071
    iget-object v3, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v3, :cond_1

    .line 5072
    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v3, :cond_1

    .line 5073
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_0

    .line 5074
    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    move-object v2, v4

    goto :goto_0

    .line 5076
    :cond_0
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v3, :cond_2

    .line 5077
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    move-object v2, v3

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/16 v3, 0x28

    .line 5085
    invoke-static {v1, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 5086
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v4

    invoke-static {v1, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    if-ne v3, v1, :cond_3

    const/4 v1, 0x0

    :cond_3
    if-eqz v1, :cond_4

    .line 5091
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

    .line 5096
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

    .line 5097
    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    const/4 v6, 0x3

    if-ge v4, v6, :cond_d

    add-int/2addr v4, v5

    .line 5098
    iput v4, v0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    .line 5099
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

    .line 5100
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->drawSpoiler:[Z

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result v6

    aput-boolean v6, v4, p1

    .line 5101
    iget v4, v11, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v4, v5, :cond_a

    if-eqz v1, :cond_a

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    goto :goto_4

    :cond_a
    move v4, v12

    .line 5102
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "5_5_b"

    goto :goto_5

    :cond_b
    const-string v5, "20_20"

    .line 5103
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

    .line 5104
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

    .line 5105
    iput-boolean v12, v0, Lorg/telegram/ui/Cells/DialogCell;->needEmoji:Z

    :cond_d
    return-void
.end method

.method private updatePremiumBlocked(Z)V
    .locals 5

    .line 5672
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->premiumBlocked:Z

    .line 5673
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->unsubscribePremiumBlocked:Ljava/lang/Runnable;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/MessagesController;->isUserPremiumBlocked(J)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->premiumBlocked:Z

    if-eq v0, v1, :cond_2

    if-nez p1, :cond_1

    .line 5676
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->premiumBlockedT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    .line 5678
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    :cond_2
    return-void
.end method

.method private updateThumbsPosition()V
    .locals 7

    .line 2641
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v0, :cond_6

    .line 2642
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    .line 2643
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

    .line 2648
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2649
    instance-of v3, v2, Landroid/text/Spanned;

    if-eqz v3, :cond_6

    .line 2650
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

    .line 2651
    array-length v5, v3

    if-lez v5, :cond_5

    .line 2652
    check-cast v2, Landroid/text/Spanned;

    aget-object v3, v3, v6

    invoke-interface {v2, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3

    move v2, v6

    .line 2657
    :cond_3
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v3

    const/4 v5, 0x1

    add-int/2addr v2, v5

    .line 2658
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 2659
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    if-eqz v0, :cond_4

    .line 2660
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->drawForwardIcon:Z

    if-nez v2, :cond_4

    .line 2661
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 2663
    :cond_4
    :goto_2
    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-ge v6, v2, :cond_6

    .line 2664
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

    .line 2665
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImageSeen:[Z

    aput-boolean v5, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    move v0, v6

    :goto_3
    if-ge v0, v4, :cond_6

    .line 2669
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImageSeen:[Z

    aput-boolean v6, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    .line 2674
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public animateArchiveAvatar()V
    .locals 2

    .line 2802
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarDrawable;->getAvatarType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2805
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatar:Z

    const/4 v0, 0x0

    .line 2806
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatarProgress:F

    .line 2807
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 2808
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 2809
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method

.method public buildLayout()V
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout(Z)V

    return-void
.end method

.method public buildLayout(Z)V
    .locals 50

    move-object/from16 v7, p0

    .line 1030
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->isTransitionSupport:Z

    if-eqz v0, :cond_0

    return-void

    .line 1033
    :cond_0
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 1034
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->update()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1035
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_1

    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v0, :cond_1

    return-void

    .line 1040
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

    .line 1050
    :cond_2
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v9

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1051
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameEncryptedPaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v9

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1052
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1053
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1055
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    aget-object v4, v0, v9

    aget-object v0, v0, v9

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message:I

    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    iput v5, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 1056
    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    const/16 v0, 0x13

    .line 1057
    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    goto :goto_1

    .line 1041
    :cond_3
    :goto_0
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1042
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameEncryptedPaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1043
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v8

    const/16 v4, 0xf

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1044
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    aget-object v0, v0, v8

    const/16 v4, 0xf

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1046
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    aget-object v4, v0, v8

    aget-object v0, v0, v8

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message_threeLines:I

    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    iput v5, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 1047
    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    .line 1048
    iput v3, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    .line 1060
    :goto_1
    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderDialogsCount:I

    .line 1070
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_5

    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-nez v0, :cond_4

    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_5

    .line 1071
    :cond_4
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-wide v12, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result v0

    int-to-long v14, v0

    const/16 v16, 0x1

    invoke-virtual/range {v11 .. v16}, Lorg/telegram/messenger/MessagesController;->getPrintingString(JJZ)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v10

    .line 1073
    :goto_2
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v4, v4, v5

    iput-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1076
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    .line 1077
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    .line 1078
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    .line 1079
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumStatusEnabled:Z

    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumBadgeEnabled:Z

    .line 1080
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawForwardIcon:Z

    .line 1081
    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    .line 1082
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawPinBackground:Z

    .line 1083
    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    .line 1084
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    .line 1085
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 1087
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

    .line 1089
    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    .line 1091
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1092
    iput-object v10, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    .line 1096
    :cond_7
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v12, 0x4

    const/4 v13, 0x2

    if-lt v6, v3, :cond_b

    .line 1097
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

    .line 1104
    :cond_9
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    move v6, v13

    goto :goto_6

    .line 1100
    :cond_a
    :goto_4
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    move v6, v8

    goto :goto_6

    .line 1107
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

    .line 1114
    :cond_d
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    move v6, v12

    goto :goto_6

    .line 1110
    :cond_e
    :goto_5
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    const/4 v6, 0x3

    .line 1118
    :goto_6
    iget-object v14, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v14, :cond_f

    .line 1119
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->updateTranslation()Z

    .line 1121
    :cond_f
    iget-object v14, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v14, :cond_10

    iget-object v14, v14, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_7

    :cond_10
    move-object v14, v10

    .line 1122
    :goto_7
    instance-of v15, v14, Landroid/text/Spannable;

    if-eqz v15, :cond_13

    .line 1123
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15, v14}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1124
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

    .line 1125
    invoke-interface {v15, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x11

    goto :goto_8

    .line 1126
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

    .line 1127
    invoke-interface {v15, v14}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_12
    move-object v14, v15

    .line 1130
    :cond_13
    iput-object v14, v7, Lorg/telegram/ui/Cells/DialogCell;->lastMessageString:Ljava/lang/CharSequence;

    .line 1132
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

    .line 1133
    iget v0, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    if-ne v0, v13, :cond_19

    .line 1134
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    .line 1136
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v0, :cond_14

    const/high16 v0, 0x418c0000    # 17.5f

    .line 1137
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1138
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1139
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

    .line 1141
    :cond_14
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_17

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_15

    goto :goto_a

    :cond_15
    const/high16 v0, 0x41840000    # 16.5f

    .line 1151
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1152
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_16

    .line 1153
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/2addr v0, v12

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1154
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

    .line 1156
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

    .line 1157
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_d

    .line 1142
    :cond_17
    :goto_a
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1143
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_18

    .line 1144
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1145
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

    .line 1147
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

    .line 1148
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_d

    .line 1161
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

    .line 1163
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v0, :cond_1b

    .line 1164
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/2addr v0, v13

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_d

    .line 1166
    :cond_1b
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_1e

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_1c

    goto :goto_c

    .line 1173
    :cond_1c
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_1d

    .line 1174
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/2addr v0, v12

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_d

    .line 1176
    :cond_1d
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_d

    .line 1167
    :cond_1e
    :goto_c
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_1f

    .line 1168
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_d

    .line 1170
    :cond_1f
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 1181
    :goto_d
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    if-ne v1, v8, :cond_24

    .line 1182
    sget v0, Lorg/telegram/messenger/R$string;->FromYou:I

    const-string v1, "FromYou"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1185
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    if-eqz v4, :cond_20

    .line 1186
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v4, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v1, v1, v4

    iput-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1187
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-direct {v7, v6, v1, v10}, Lorg/telegram/ui/Cells/DialogCell;->formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 1188
    new-instance v4, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chats_attachMessage:I

    iget-object v14, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v6, v14}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v4, v9, v6, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_f

    .line 1190
    :cond_20
    iget-object v1, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 1191
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v11, 0x96

    if-le v4, v11, :cond_21

    .line 1192
    invoke-virtual {v1, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1194
    :cond_21
    iget-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v4, :cond_23

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v4, :cond_22

    goto :goto_e

    :cond_22
    const/16 v4, 0x20

    .line 1197
    invoke-virtual {v1, v15, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v6, v1, v0}, Lorg/telegram/ui/Cells/DialogCell;->formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    goto :goto_f

    .line 1195
    :cond_23
    :goto_e
    invoke-direct {v7, v6, v1, v0}, Lorg/telegram/ui/Cells/DialogCell;->formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 1200
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

    .line 1202
    :cond_24
    iget-object v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 1203
    iget-boolean v0, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    if-eqz v0, :cond_25

    .line 1204
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v4, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v0, v0, v4

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    :cond_25
    move v4, v8

    move-object v0, v10

    .line 1208
    :goto_10
    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v6, v6, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    int-to-long v5, v6

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v5

    .line 1210
    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v6, v6, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    if-eqz v6, :cond_26

    .line 1211
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    new-array v11, v8, [Ljava/lang/Object;

    .line 1212
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v9

    const-string v6, "%d"

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_11

    .line 1214
    :cond_26
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    move-object v6, v10

    .line 1217
    :goto_11
    iget-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    iget v14, v11, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:I

    if-nez v14, :cond_27

    .line 1218
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1219
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1220
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    goto :goto_12

    :cond_27
    if-ne v14, v13, :cond_28

    .line 1222
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1223
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1224
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    goto :goto_12

    :cond_28
    if-ne v14, v8, :cond_29

    .line 1226
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1227
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1228
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    goto :goto_12

    .line 1230
    :cond_29
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1231
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1232
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1235
    :goto_12
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    .line 1236
    iget-object v11, v11, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    move-object v2, v1

    move-object v9, v5

    move-object v5, v6

    move-object v14, v10

    move-object v15, v14

    move-object/from16 v3, v20

    const/4 v6, -0x1

    :goto_13
    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_6c

    .line 1239
    :cond_2a
    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v1, :cond_2b

    .line 1240
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/2addr v1, v13

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_15

    .line 1242
    :cond_2b
    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v1, :cond_2e

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v1, :cond_2c

    goto :goto_14

    .line 1249
    :cond_2c
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_2d

    .line 1250
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/2addr v1, v12

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_15

    .line 1252
    :cond_2d
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_15

    .line 1243
    :cond_2e
    :goto_14
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_2f

    .line 1244
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v1, v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_15

    .line 1246
    :cond_2f
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 1256
    :goto_15
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    const-wide/16 v10, 0x0

    if-eqz v1, :cond_35

    .line 1257
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v1, :cond_42

    .line 1258
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    .line 1260
    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v1, :cond_30

    const/high16 v1, 0x418c0000    # 17.5f

    .line 1261
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1262
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1263
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v1, v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sget-object v23, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    add-int v1, v1, v23

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_1b

    .line 1265
    :cond_30
    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v1, :cond_33

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v1, :cond_31

    goto :goto_16

    :cond_31
    const/high16 v1, 0x41840000    # 16.5f

    .line 1275
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1276
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_32

    .line 1277
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/2addr v1, v12

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1278
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sget-object v23, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    add-int v1, v1, v23

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_1b

    .line 1280
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

    .line 1281
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_1b

    .line 1266
    :cond_33
    :goto_16
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    .line 1267
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_34

    .line 1268
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v1, v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    .line 1269
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

    .line 1271
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

    .line 1272
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_1b

    .line 1286
    :cond_35
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v1, :cond_42

    .line 1287
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_3a

    .line 1288
    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->scam:Z

    if-eqz v5, :cond_36

    .line 1289
    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    .line 1290
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ScamDrawable;->checkText()V

    goto/16 :goto_1b

    .line 1291
    :cond_36
    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->fake:Z

    if-eqz v5, :cond_37

    .line 1292
    iput v13, v7, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    .line 1293
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ScamDrawable;->checkText()V

    goto/16 :goto_1b

    .line 1294
    :cond_37
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v24

    cmp-long v1, v24, v10

    if-eqz v1, :cond_38

    .line 1295
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    .line 1296
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 1297
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    iput-boolean v5, v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->center:Z

    .line 1298
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v5}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    goto/16 :goto_1b

    .line 1300
    :cond_38
    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->forbidVerified:Z

    if-nez v1, :cond_39

    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    if-eqz v1, :cond_39

    move v1, v8

    goto :goto_17

    :cond_39
    move v1, v9

    :goto_17
    iput-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    goto/16 :goto_1b

    .line 1302
    :cond_3a
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_42

    .line 1303
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$User;->scam:Z

    if-eqz v2, :cond_3b

    .line 1304
    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    .line 1305
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ScamDrawable;->checkText()V

    goto :goto_19

    .line 1306
    :cond_3b
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$User;->fake:Z

    if-eqz v2, :cond_3c

    .line 1307
    iput v13, v7, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    .line 1308
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ScamDrawable;->checkText()V

    goto :goto_19

    .line 1310
    :cond_3c
    iget-boolean v2, v7, Lorg/telegram/ui/Cells/DialogCell;->forbidVerified:Z

    if-nez v2, :cond_3d

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-eqz v1, :cond_3d

    move v1, v8

    goto :goto_18

    :cond_3d
    move v1, v9

    :goto_18
    iput-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    .line 1313
    :goto_19
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v1}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled()Z

    move-result v1

    iput-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumBadgeEnabled:Z

    .line 1314
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v1}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled()Z

    move-result v1

    iput-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumStatusEnabled:Z

    .line 1316
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v7, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->isPremiumUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v12, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v1, v1, v12

    if-eqz v1, :cond_3f

    cmp-long v1, v12, v10

    if-eqz v1, :cond_3f

    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumBadgeEnabled:Z

    if-nez v1, :cond_3e

    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumStatusEnabled:Z

    if-eqz v1, :cond_3f

    :cond_3e
    move v1, v8

    goto :goto_1a

    :cond_3f
    move v1, v9

    :goto_1a
    iput-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-eqz v1, :cond_42

    .line 1318
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/Long;

    move-result-object v1

    .line 1319
    iget-object v2, v7, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    iput-boolean v3, v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->center:Z

    .line 1320
    iget-boolean v3, v7, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumStatusEnabled:Z

    if-eqz v3, :cond_40

    if-eqz v1, :cond_40

    .line 1321
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 1322
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v2, v12, v13, v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    goto :goto_1b

    .line 1324
    :cond_40
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 1326
    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumBadgeEnabled:Z

    if-nez v1, :cond_41

    .line 1327
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    const/4 v1, 0x0

    .line 1328
    invoke-virtual {v2, v1, v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_1b

    .line 1330
    :cond_41
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarDrawableMini:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1, v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 1337
    :cond_42
    :goto_1b
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    if-nez v1, :cond_43

    .line 1338
    iget-object v2, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_43

    .line 1339
    iget-object v1, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 1342
    :cond_43
    iget-boolean v2, v7, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v2, :cond_44

    .line 1343
    iget v2, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-wide v12, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v2, v12, v13, v8, v9}, Lorg/telegram/messenger/MediaDataController;->getDraft(JJ)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v2

    iput-object v2, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v2, :cond_46

    .line 1344
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_46

    const/4 v2, 0x0

    .line 1345
    iput-object v2, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    goto :goto_1c

    .line 1347
    :cond_44
    iget-boolean v2, v7, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v2, :cond_45

    .line 1348
    iget v2, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-wide v8, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v2, v8, v9, v10, v11}, Lorg/telegram/messenger/MediaDataController;->getDraft(JJ)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v2

    iput-object v2, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    goto :goto_1c

    :cond_45
    const/4 v2, 0x0

    .line 1350
    iput-object v2, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    .line 1353
    :cond_46
    :goto_1c
    iget-object v2, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v2, :cond_49

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    if-eqz v2, :cond_47

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->reply_to_msg_id:I

    if-eqz v2, :cond_47

    goto :goto_1e

    :cond_47
    :goto_1d
    const/4 v1, 0x0

    goto :goto_1f

    :cond_48
    :goto_1e
    iget-object v2, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    if-le v1, v2, :cond_49

    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-nez v1, :cond_47

    :cond_49
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1354
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_4a

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_4a

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz v1, :cond_47

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-eqz v1, :cond_47

    :cond_4a
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_4b

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v2, :cond_47

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-nez v2, :cond_47

    :cond_4b
    iget-boolean v2, v7, Lorg/telegram/ui/Cells/DialogCell;->forbidDraft:Z

    if-nez v2, :cond_47

    .line 1355
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v1, :cond_4c

    goto :goto_1d

    :cond_4c
    const/4 v1, 0x0

    goto :goto_20

    .line 1356
    :goto_1f
    iput-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    .line 1359
    :goto_20
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 1360
    iput-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    const/4 v1, 0x1

    .line 1361
    iput-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->needEmoji:Z

    .line 1362
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->updateMessageThumbs()V

    .line 1363
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMessageNameString()Ljava/lang/String;

    move-result-object v0

    .line 1364
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->formatTopicsNames()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1365
    iget-object v2, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_4d

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    :cond_4d
    const/4 v2, 0x0

    .line 1366
    :goto_21
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_4e

    const/4 v3, 0x1

    invoke-virtual {v7, v6, v2, v0, v3}, Lorg/telegram/ui/Cells/DialogCell;->getMessageStringFormatted(ILjava/lang/String;Ljava/lang/CharSequence;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto :goto_22

    :cond_4e
    move-object/from16 v2, v20

    .line 1367
    :goto_22
    iget-boolean v3, v7, Lorg/telegram/ui/Cells/DialogCell;->applyName:Z

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ltz v3, :cond_4f

    if-eqz v0, :cond_4f

    .line 1368
    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 1369
    new-instance v3, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_name:I

    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v5, v6}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v8, 0x1

    add-int/2addr v6, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1372
    :cond_4f
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v3, v3, v5

    iput-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    move-object v6, v2

    move-object/from16 v2, v20

    const/4 v3, -0x1

    const/4 v5, 0x1

    goto/16 :goto_29

    :cond_50
    if-eqz v0, :cond_54

    .line 1375
    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    .line 1376
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result v5

    int-to-long v8, v5

    invoke-virtual {v1, v2, v3, v8, v9}, Lorg/telegram/messenger/MessagesController;->getPrintingStringType(JJ)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    .line 1377
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getChatStatusDrawable(I)Lorg/telegram/ui/Components/StatusDrawable;

    move-result-object v1

    if-eqz v1, :cond_51

    .line 1380
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_23

    :cond_51
    const/4 v1, 0x0

    .line 1382
    :goto_23
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v3, "..."

    .line 1384
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array/range {v20 .. v20}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v5}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1385
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_52

    .line 1386
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "**oo**"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    goto :goto_24

    :cond_52
    const/4 v5, -0x1

    :goto_24
    if-ltz v5, :cond_53

    .line 1389
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getChatStatusDrawable(I)Lorg/telegram/ui/Components/StatusDrawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-direct {v1, v3}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    add-int/lit8 v3, v5, 0x6

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v5, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_25

    :cond_53
    const/4 v8, 0x0

    const-string v3, " "

    .line 1391
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v8, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_25
    move v1, v5

    const/4 v0, 0x0

    goto :goto_26

    :cond_54
    const/4 v1, 0x0

    .line 1397
    iput-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    const/4 v0, -0x1

    .line 1398
    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    move-object/from16 v2, v20

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 1400
    :goto_26
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v3, :cond_5c

    .line 1402
    sget v0, Lorg/telegram/messenger/R$string;->Draft:I

    const-string v3, "Draft"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1403
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 1404
    iget-boolean v3, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v3, :cond_56

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v3, :cond_55

    goto :goto_27

    .line 1407
    :cond_55
    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 1408
    new-instance v5, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chats_draft:I

    iget-object v8, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v6, v8}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/16 v8, 0x21

    const/4 v9, 0x0

    invoke-virtual {v3, v5, v9, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move v5, v9

    goto/16 :goto_2d

    :cond_56
    :goto_27
    const/4 v9, 0x0

    move v3, v1

    move v5, v9

    move-object/from16 v1, v20

    :goto_28
    const/4 v6, 0x0

    :goto_29
    const/4 v8, 0x1

    goto/16 :goto_51

    :cond_57
    const/4 v9, 0x0

    .line 1412
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    .line 1413
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v10, 0x96

    if-le v8, v10, :cond_58

    .line 1414
    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1416
    :cond_58
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1417
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    const/16 v9, 0x108

    invoke-static {v3, v8, v9}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Lorg/telegram/tgnet/TLRPC$DraftMessage;Landroid/text/Spannable;I)V

    .line 1418
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v3, :cond_5a

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$DraftMessage;->entities:Ljava/util/ArrayList;

    if-eqz v3, :cond_5a

    .line 1419
    iget-object v9, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    if-nez v9, :cond_59

    const/4 v9, 0x0

    goto :goto_2a

    :cond_59
    invoke-virtual {v9}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v9

    :goto_2a
    invoke-static {v3, v8, v9}, Lorg/telegram/messenger/MediaDataController;->addAnimatedEmojiSpans(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 1422
    :cond_5a
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v7, v6, v3, v0}, Lorg/telegram/ui/Cells/DialogCell;->formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 1423
    iget-boolean v6, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v6, :cond_5b

    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-nez v6, :cond_5b

    .line 1424
    new-instance v6, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chats_draft:I

    iget-object v9, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v8, v9}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    const/16 v5, 0x21

    const/4 v9, 0x0

    invoke-virtual {v3, v6, v9, v8, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2b

    :cond_5b
    const/4 v9, 0x0

    .line 1426
    :goto_2b
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v3, v5, v6, v9}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v5, 0x0

    goto :goto_2d

    .line 1429
    :cond_5c
    iget-boolean v3, v7, Lorg/telegram/ui/Cells/DialogCell;->clearingDialog:Z

    if-eqz v3, :cond_5d

    .line 1430
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v3, v3, v5

    iput-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1431
    sget v3, Lorg/telegram/messenger/R$string;->HistoryCleared:I

    const-string v5, "HistoryCleared"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_2c
    move v5, v0

    const/4 v0, 0x0

    :goto_2d
    const/4 v6, 0x0

    const/4 v8, 0x1

    :goto_2e
    move-object/from16 v49, v3

    move v3, v1

    move-object/from16 v1, v49

    goto/16 :goto_51

    .line 1432
    :cond_5d
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v3, :cond_66

    .line 1433
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v3, :cond_5e

    .line 1434
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->formatArchivedDialogNames()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_2c

    .line 1435
    :cond_5e
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v3, :cond_63

    .line 1436
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v5, v5, v6

    iput-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1437
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;

    if-eqz v5, :cond_5f

    .line 1438
    sget v3, Lorg/telegram/messenger/R$string;->EncryptionProcessing:I

    const-string v5, "EncryptionProcessing"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2c

    .line 1439
    :cond_5f
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;

    if-eqz v5, :cond_60

    .line 1440
    sget v3, Lorg/telegram/messenger/R$string;->AwaitingEncryption:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    aput-object v5, v6, v8

    const-string v5, "AwaitingEncryption"

    invoke-static {v5, v3, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2c

    .line 1441
    :cond_60
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;

    if-eqz v5, :cond_61

    .line 1442
    sget v3, Lorg/telegram/messenger/R$string;->EncryptionRejected:I

    const-string v5, "EncryptionRejected"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2c

    .line 1443
    :cond_61
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v5, :cond_65

    .line 1444
    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:J

    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v8

    cmp-long v3, v5, v8

    if-nez v3, :cond_62

    .line 1445
    sget v3, Lorg/telegram/messenger/R$string;->EncryptedChatStartedOutgoing:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    aput-object v5, v6, v8

    const-string v5, "EncryptedChatStartedOutgoing"

    invoke-static {v5, v3, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2c

    .line 1447
    :cond_62
    sget v3, Lorg/telegram/messenger/R$string;->EncryptedChatStartedIncoming:I

    const-string v5, "EncryptedChatStartedIncoming"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2c

    .line 1451
    :cond_63
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_65

    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 1452
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    if-eqz v3, :cond_64

    iget-boolean v3, v3, Lorg/telegram/ui/DialogsActivity;->isQuote:Z

    if-eqz v3, :cond_64

    sget v3, Lorg/telegram/messenger/R$string;->SavedMessagesInfoQuote:I

    goto :goto_2f

    :cond_64
    sget v3, Lorg/telegram/messenger/R$string;->SavedMessagesInfo:I

    :goto_2f
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v5, v0

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    goto/16 :goto_2e

    :cond_65
    move v5, v0

    move v3, v1

    move-object/from16 v1, v20

    const/4 v0, 0x0

    goto/16 :goto_28

    .line 1460
    :cond_66
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 1463
    iget-object v8, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v8

    .line 1464
    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v12

    if-eqz v12, :cond_67

    .line 1465
    iget v12, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v12, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    const/4 v8, 0x0

    goto :goto_30

    .line 1467
    :cond_67
    iget v12, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v12, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    :goto_30
    const/4 v9, 0x1

    .line 1469
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount2:Z

    .line 1471
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    if-nez v9, :cond_6a

    iget-wide v12, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    cmp-long v9, v12, v10

    if-lez v9, :cond_6a

    iget-object v9, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v9

    if-eqz v9, :cond_6a

    iget-object v9, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    if-eqz v9, :cond_6a

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    if-eqz v9, :cond_6a

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6a

    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-lez v9, :cond_6a

    .line 1472
    iget-object v9, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    .line 1473
    iget-boolean v12, v9, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->unread:Z

    if-eqz v12, :cond_6a

    iget-object v12, v9, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    cmp-long v23, v12, v10

    if-eqz v23, :cond_6a

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    iget-wide v10, v5, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v5, v12, v10

    if-eqz v5, :cond_6a

    .line 1475
    iget-object v5, v9, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v5

    .line 1476
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v9, v9, v10

    iput-object v9, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1477
    iget-object v9, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v9, :cond_68

    .line 1478
    sget v5, Lorg/telegram/messenger/R$string;->ReactionInDialog:I

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const-string v9, "ReactionInDialog"

    invoke-static {v9, v5, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_32

    :cond_68
    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 1480
    sget v9, Lorg/telegram/messenger/R$string;->ReactionInDialog:I

    new-array v11, v10, [Ljava/lang/Object;

    const-string v10, "**reaction**"

    aput-object v10, v11, v12

    const-string v10, "ReactionInDialog"

    invoke-static {v10, v9, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "**reaction**"

    .line 1481
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const-string v11, "**reaction**"

    const-string v12, "d"

    .line 1482
    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 1484
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1485
    new-instance v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v12, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    if-nez v5, :cond_69

    const/4 v5, 0x0

    goto :goto_31

    :cond_69
    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    :goto_31
    invoke-direct {v9, v12, v13, v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    add-int/lit8 v5, v10, 0x1

    const/4 v12, 0x0

    invoke-virtual {v11, v9, v10, v5, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v5, v11

    const/4 v10, 0x1

    goto :goto_32

    :cond_6a
    move-object/from16 v5, v20

    const/4 v10, 0x0

    :goto_32
    if-eqz v10, :cond_6b

    :goto_33
    move-object v3, v5

    const/4 v9, 0x0

    move v5, v0

    const/4 v0, 0x1

    goto/16 :goto_4e

    .line 1493
    :cond_6b
    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v9, 0x2

    if-ne v5, v9, :cond_73

    .line 1494
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_72

    .line 1495
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_6e

    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v4, :cond_6e

    .line 1496
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v4, :cond_6c

    const-string v3, "Subscribers"

    .line 1497
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_34

    .line 1499
    :cond_6c
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_6d

    .line 1500
    sget v3, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    const-string v4, "ChannelPrivate"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_34

    .line 1502
    :cond_6d
    sget v3, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    const-string v4, "ChannelPublic"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_34

    .line 1506
    :cond_6e
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v4, :cond_6f

    const-string v3, "Members"

    .line 1507
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_34

    .line 1509
    :cond_6f
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    if-eqz v4, :cond_70

    .line 1510
    sget v3, Lorg/telegram/messenger/R$string;->MegaLocation:I

    const-string v4, "MegaLocation"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_34

    .line 1511
    :cond_70
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_71

    .line 1512
    sget v3, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    const-string v4, "MegaPrivate"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_34

    .line 1514
    :cond_71
    sget v3, Lorg/telegram/messenger/R$string;->MegaPublic:I

    const-string v4, "MegaPublic"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_34

    :cond_72
    move-object/from16 v3, v20

    :goto_34
    const/4 v4, 0x0

    .line 1521
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount2:Z

    :goto_35
    move v5, v0

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_36
    const/4 v9, 0x0

    goto/16 :goto_4e

    :cond_73
    const/4 v9, 0x3

    if-ne v5, v9, :cond_75

    .line 1524
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 1525
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    if-eqz v3, :cond_74

    iget-boolean v3, v3, Lorg/telegram/ui/DialogsActivity;->isQuote:Z

    if-eqz v3, :cond_74

    sget v3, Lorg/telegram/messenger/R$string;->SavedMessagesInfoQuote:I

    goto :goto_37

    :cond_74
    sget v3, Lorg/telegram/messenger/R$string;->SavedMessagesInfo:I

    :goto_37
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_35

    .line 1528
    :cond_75
    iget-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v5, :cond_77

    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-nez v5, :cond_77

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v5, :cond_77

    .line 1530
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isContentHidden()Z

    move-result v0

    if-eqz v0, :cond_76

    sget v0, Lorg/telegram/messenger/R$string;->archive_content_is_hidden:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    :cond_76
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->formatArchivedDialogNames()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_38
    move-object v3, v0

    const/4 v0, 0x1

    const/4 v5, 0x0

    goto :goto_36

    .line 1531
    :cond_77
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v9, :cond_7c

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isTopicActionMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v5

    if-eqz v5, :cond_78

    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    if-eqz v5, :cond_7c

    .line 1532
    :cond_78
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_79

    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom;

    if-eqz v3, :cond_79

    move-object/from16 v14, v20

    const/4 v4, 0x0

    .line 1538
    :cond_79
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v3, v3, v5

    iput-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1539
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget v3, v3, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v5, 0x15

    if-ne v3, v5, :cond_7b

    .line 1540
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->updateMessageThumbs()V

    .line 1541
    invoke-direct {v7, v14}, Lorg/telegram/ui/Cells/DialogCell;->applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    :cond_7a
    move v5, v0

    goto :goto_39

    :cond_7b
    move v5, v0

    move-object v3, v14

    :goto_39
    const/4 v0, 0x1

    goto/16 :goto_36

    :cond_7c
    const/4 v5, 0x1

    .line 1544
    iput-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->needEmoji:Z

    .line 1545
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->updateMessageThumbs()V

    .line 1546
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_88

    iget-wide v9, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_88

    if-nez v8, :cond_88

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_7d

    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_88

    :cond_7d
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-static {v5}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->isTopicCreateMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v5

    if-nez v5, :cond_88

    .line 1547
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getMessageNameString()Ljava/lang/String;

    move-result-object v0

    .line 1548
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v5, :cond_80

    iget-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v5, :cond_80

    iget-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->useFromUserAsAvatar:Z

    if-nez v5, :cond_80

    .line 1549
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

    .line 1550
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_80

    .line 1551
    new-instance v8, Landroid/text/SpannableStringBuilder;

    const-string v9, "-"

    invoke-direct {v8, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1552
    new-instance v9, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v11, Lorg/telegram/messenger/R$drawable;->msg_mini_forumarrow:I

    invoke-static {v10, v11}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 1553
    iget-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v10, :cond_7f

    sget-boolean v10, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v10, :cond_7e

    goto :goto_3a

    :cond_7e
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessage:I

    goto :goto_3b

    :cond_7f
    :goto_3a
    const/4 v10, -0x1

    :goto_3b
    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/ColoredImageSpan;->setColorKey(I)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1554
    invoke-virtual {v8, v9, v11, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1555
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1556
    invoke-virtual {v9, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3c

    :cond_80
    move-object v9, v0

    :goto_3c
    const/4 v5, 0x0

    .line 1561
    invoke-virtual {v7, v6, v3, v9, v5}, Lorg/telegram/ui/Cells/DialogCell;->getMessageStringFormatted(ILjava/lang/String;Ljava/lang/CharSequence;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 1564
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->useFromUserAsAvatar:Z

    if-nez v0, :cond_83

    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_81

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_82

    :cond_81
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_83

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_83

    .line 1566
    :cond_82
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

    add-int/lit8 v8, v5, 0x1

    const/16 v5, 0x21

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v3, v0, v6, v8, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3e

    :catch_0
    move-exception v0

    goto :goto_3d

    :catch_1
    move-exception v0

    const/4 v8, 0x0

    .line 1569
    :goto_3d
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3e

    :cond_83
    const/4 v8, 0x0

    .line 1572
    :goto_3e
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const/4 v10, 0x0

    invoke-static {v3, v0, v6, v10}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1573
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v3

    if-eqz v3, :cond_84

    .line 1574
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v3, v6}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_84

    move-object v0, v3

    .line 1579
    :cond_84
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v3, :cond_87

    .line 1580
    instance-of v3, v0, Landroid/text/SpannableStringBuilder;

    if-nez v3, :cond_85

    .line 1581
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v3

    .line 1584
    :cond_85
    move-object v3, v0

    check-cast v3, Landroid/text/SpannableStringBuilder;

    .line 1585
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-lt v8, v6, :cond_86

    const-string v6, " "

    .line 1586
    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1587
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

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/16 v5, 0x21

    invoke-virtual {v3, v6, v8, v10, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3f

    :cond_86
    const-string v6, " "

    .line 1589
    invoke-virtual {v3, v8, v6}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1590
    new-instance v6, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    iget v11, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v12, 0x2

    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    sub-int/2addr v10, v12

    const/4 v11, 0x5

    add-int/2addr v10, v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-direct {v6, v10}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    add-int/lit8 v10, v8, 0x1

    const/16 v5, 0x21

    invoke-virtual {v3, v6, v8, v10, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_87
    :goto_3f
    move-object v3, v0

    const/4 v0, 0x1

    const/4 v5, 0x0

    goto/16 :goto_4e

    .line 1594
    :cond_88
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_89

    goto/16 :goto_4b

    .line 1596
    :cond_89
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isTopicActionMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 1597
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->messageTextShort:Ljava/lang/CharSequence;

    if-eqz v6, :cond_8a

    iget-object v8, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    if-eqz v8, :cond_8b

    iget-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v8, :cond_8a

    goto :goto_40

    .line 1600
    :cond_8a
    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 1602
    :cond_8b
    :goto_40
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->topicIconDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    aget-object v3, v3, v8

    instance-of v3, v3, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    if-eqz v3, :cond_8c

    .line 1603
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v3

    iget-object v8, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    neg-long v8, v8

    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    iget-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v11, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide v10

    invoke-virtual {v3, v8, v9, v10, v11}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v3

    if-eqz v3, :cond_8c

    .line 1605
    iget-object v8, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->topicIconDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    check-cast v8, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_color:I

    invoke-virtual {v8, v3}, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;->setColor(I)V

    :cond_8c
    move-object v3, v6

    goto/16 :goto_4b

    .line 1608
    :cond_8d
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v6, :cond_8e

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-eqz v6, :cond_8e

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v6, :cond_8e

    .line 1609
    sget v3, Lorg/telegram/messenger/R$string;->AttachPhotoExpired:I

    const-string v6, "AttachPhotoExpired"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4b

    .line 1610
    :cond_8e
    instance-of v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v6, :cond_92

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v8, v6, Lorg/telegram/tgnet/TLRPC$TL_documentEmpty;

    if-nez v8, :cond_8f

    if-nez v6, :cond_92

    :cond_8f
    iget v6, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v6, :cond_92

    .line 1611
    iget-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->voice:Z

    if-eqz v6, :cond_90

    .line 1612
    sget v3, Lorg/telegram/messenger/R$string;->AttachVoiceExpired:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4b

    .line 1613
    :cond_90
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->round:Z

    if-eqz v3, :cond_91

    .line 1614
    sget v3, Lorg/telegram/messenger/R$string;->AttachRoundExpired:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4b

    .line 1616
    :cond_91
    sget v3, Lorg/telegram/messenger/R$string;->AttachVideoExpired:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4b

    .line 1618
    :cond_92
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getCaptionMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_9e

    .line 1619
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getCaptionMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    .line 1621
    iget-boolean v6, v7, Lorg/telegram/ui/Cells/DialogCell;->needEmoji:Z

    if-nez v6, :cond_93

    move-object/from16 v6, v20

    goto :goto_41

    .line 1623
    :cond_93
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v6

    if-eqz v6, :cond_94

    const-string v6, "\ud83d\udcf9 "

    goto :goto_41

    .line 1625
    :cond_94
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v6

    if-eqz v6, :cond_95

    const-string v6, "\ud83c\udfa4 "

    goto :goto_41

    .line 1627
    :cond_95
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v6

    if-eqz v6, :cond_96

    const-string v6, "\ud83c\udfa7 "

    goto :goto_41

    .line 1629
    :cond_96
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v6

    if-eqz v6, :cond_97

    const-string v6, "\ud83d\uddbc "

    goto :goto_41

    :cond_97
    const-string v6, "\ud83d\udcce "

    .line 1634
    :goto_41
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v8

    if-eqz v8, :cond_9b

    iget-object v8, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9b

    .line 1635
    iget-object v8, v3, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlight:Ljava/lang/CharSequence;

    .line 1636
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v10, v10, 0x17

    add-int/lit8 v10, v10, 0x18

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    .line 1637
    iget-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    if-eqz v10, :cond_99

    const/4 v10, 0x0

    .line 1638
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_98

    int-to-float v9, v9

    .line 1641
    iget-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    sub-float/2addr v9, v11

    float-to-int v9, v9

    goto :goto_42

    .line 1639
    :cond_98
    throw v10

    :cond_99
    :goto_42
    if-lez v9, :cond_9a

    .line 1644
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v10, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    const/16 v11, 0x82

    invoke-static {v8, v3, v9, v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->ellipsizeCenterEnd(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1646
    :cond_9a
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto/16 :goto_4b

    .line 1648
    :cond_9b
    new-instance v8, Landroid/text/SpannableStringBuilder;

    iget-object v9, v3, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-direct {v8, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1649
    iget-object v9, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v9, :cond_9d

    .line 1651
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->spoilLoginCode()V

    .line 1653
    iget-object v9, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    const/16 v11, 0x108

    invoke-static {v9, v10, v8, v11}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/text/Spannable;I)V

    .line 1654
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iget-object v9, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    if-nez v9, :cond_9c

    const/4 v9, 0x0

    goto :goto_43

    :cond_9c
    invoke-virtual {v9}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v9

    :goto_43
    invoke-static {v3, v8, v9}, Lorg/telegram/messenger/MediaDataController;->addAnimatedEmojiSpans(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 1656
    :cond_9d
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto/16 :goto_4b

    .line 1658
    :cond_9e
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    const/4 v6, 0x1

    if-le v3, v6, :cond_a2

    .line 1659
    iget-boolean v3, v7, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    if-eqz v3, :cond_a0

    .line 1660
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    if-nez v3, :cond_9f

    const/4 v3, 0x0

    goto :goto_44

    :cond_9f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_44
    const/4 v6, 0x0

    new-array v8, v6, [Ljava/lang/Object;

    const-string v9, "Media"

    invoke-static {v9, v3, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_46

    :cond_a0
    const/4 v6, 0x0

    .line 1662
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    if-nez v3, :cond_a1

    move v3, v6

    goto :goto_45

    :cond_a1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v3, v26

    :goto_45
    new-array v8, v6, [Ljava/lang/Object;

    const-string v6, "Photos"

    invoke-static {v6, v3, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1664
    :goto_46
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v6, v6, v8

    iput-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    goto/16 :goto_4b

    .line 1666
    :cond_a2
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v8, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;

    if-eqz v8, :cond_a3

    .line 1667
    sget v3, Lorg/telegram/messenger/R$string;->BoostingGiveawayChannelStarted:I

    const-string v6, "BoostingGiveawayChannelStarted"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4a

    .line 1668
    :cond_a3
    instance-of v8, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;

    if-eqz v8, :cond_a4

    .line 1669
    sget v3, Lorg/telegram/messenger/R$string;->BoostingGiveawayResults:I

    const-string v6, "BoostingGiveawayResults"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4a

    .line 1670
    :cond_a4
    instance-of v8, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v8, :cond_a5

    .line 1671
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 1672
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\ud83d\udcca "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4a

    .line 1673
    :cond_a5
    instance-of v8, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v8, :cond_a6

    .line 1674
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\ud83c\udfae "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4a

    .line 1675
    :cond_a6
    instance-of v8, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v8, :cond_a7

    .line 1676
    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    goto/16 :goto_4a

    .line 1677
    :cond_a7
    iget v8, v3, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v9, 0xe

    if-ne v8, v9, :cond_a8

    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/Object;

    .line 1678
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    aput-object v3, v6, v8

    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x1

    aput-object v3, v6, v8

    const-string v3, "\ud83c\udfa7 %s - %s"

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4a

    .line 1679
    :cond_a8
    instance-of v8, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaStory;

    if-eqz v8, :cond_ac

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->via_mention:Z

    if-eqz v6, :cond_ac

    .line 1680
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 1681
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    .line 1683
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_a9

    .line 1685
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x20

    .line 1687
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v6, 0x0

    if-ltz v8, :cond_aa

    .line 1688
    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_47

    :cond_a9
    const/4 v6, 0x0

    move-object/from16 v3, v20

    .line 1691
    :cond_aa
    :goto_47
    sget v8, Lorg/telegram/messenger/R$string;->StoryYouMentionInDialog:I

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v3, v10, v6

    const-string v3, "StoryYouMentionInDialog"

    invoke-static {v3, v8, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4a

    .line 1693
    :cond_ab
    sget v3, Lorg/telegram/messenger/R$string;->StoryMentionInDialog:I

    const-string v6, "StoryMentionInDialog"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4a

    .line 1696
    :cond_ac
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v3

    if-eqz v3, :cond_ad

    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ad

    .line 1697
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlight:Ljava/lang/CharSequence;

    .line 1701
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v8, v8, 0x17

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v6, v8

    .line 1702
    iget-object v8, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    const/16 v10, 0x82

    invoke-static {v3, v8, v6, v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->ellipsizeCenterEnd(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_49

    .line 1704
    :cond_ad
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v14}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1705
    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_ae

    .line 1706
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->spoilLoginCode()V

    .line 1708
    :cond_ae
    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    const/16 v8, 0x108

    invoke-static {v6, v3, v8}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Lorg/telegram/messenger/MessageObject;Landroid/text/Spannable;I)V

    .line 1709
    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_b0

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v6, :cond_b0

    .line 1710
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iget-object v8, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    if-nez v8, :cond_af

    const/4 v8, 0x0

    goto :goto_48

    :cond_af
    invoke-virtual {v8}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    :goto_48
    invoke-static {v6, v3, v8}, Lorg/telegram/messenger/MediaDataController;->addAnimatedEmojiSpans(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 1714
    :cond_b0
    :goto_49
    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v8, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v6, v8}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    .line 1716
    :goto_4a
    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v8, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v8, :cond_b1

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v6

    if-nez v6, :cond_b1

    .line 1717
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v6, v6, v8

    iput-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 1720
    :cond_b1
    :goto_4b
    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isReplyToStory()Z

    move-result v6

    if-eqz v6, :cond_b2

    .line 1721
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v3, "d "

    const/4 v8, 0x0

    .line 1722
    invoke-virtual {v6, v8, v3}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1723
    new-instance v3, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_mini_replystory:I

    invoke-static {v9, v10}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v9, 0x1

    invoke-virtual {v6, v3, v8, v9, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v3, v6

    .line 1726
    :cond_b2
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v6, :cond_b7

    .line 1727
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b3

    .line 1728
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlight:Ljava/lang/CharSequence;

    .line 1732
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v6, v6, 0x17

    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v9, 0x2

    add-int/2addr v8, v9

    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    mul-int/2addr v8, v10

    add-int/2addr v6, v8

    sub-int/2addr v6, v9

    const/4 v8, 0x5

    add-int/2addr v6, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v3, v6

    .line 1733
    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v9, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    const/16 v10, 0x82

    invoke-static {v0, v6, v3, v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->ellipsizeCenterEnd(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4c

    :cond_b3
    const/4 v8, 0x0

    .line 1735
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v6, 0x96

    if-le v0, v6, :cond_b4

    .line 1736
    invoke-interface {v3, v8, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1738
    :cond_b4
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1740
    :goto_4c
    instance-of v3, v0, Landroid/text/SpannableStringBuilder;

    if-nez v3, :cond_b5

    .line 1741
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_4d

    :cond_b5
    move-object v3, v0

    .line 1744
    :goto_4d
    move-object v0, v3

    check-cast v0, Landroid/text/SpannableStringBuilder;

    const-string v6, " "

    const/4 v8, 0x0

    .line 1745
    invoke-virtual {v0, v8, v6}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1746
    new-instance v6, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v10, 0x2

    add-int/2addr v9, v10

    iget v11, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    mul-int/2addr v9, v11

    sub-int/2addr v9, v10

    const/4 v10, 0x5

    add-int/2addr v9, v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-direct {v6, v9}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    const/16 v5, 0x21

    const/4 v9, 0x1

    invoke-virtual {v0, v6, v8, v9, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1747
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    const/16 v6, 0x11

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v0, v5, v9, v8}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    .line 1748
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 1749
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_b6

    move-object v3, v0

    :cond_b6
    const/4 v0, 0x0

    .line 1755
    :cond_b7
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v5

    if-eqz v5, :cond_7a

    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->needDrawForwarded()Z

    move-result v5

    if-eqz v5, :cond_7a

    const/4 v5, 0x1

    .line 1756
    iput-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->drawForwardIcon:Z

    .line 1757
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v3, "d "

    const/4 v6, 0x0

    .line 1758
    invoke-virtual {v5, v6, v3}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1759
    new-instance v3, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->mini_forwarded:I

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v3, v8}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const v8, 0x3f666666    # 0.9f

    .line 1760
    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/ColoredImageSpan;->setAlpha(F)V

    const/4 v8, 0x1

    .line 1761
    invoke-virtual {v5, v3, v6, v8, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_33

    .line 1766
    :goto_4e
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v6, :cond_ba

    .line 1767
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isContentHidden()Z

    move-result v6

    if-eqz v6, :cond_b8

    sget v6, Lorg/telegram/messenger/R$string;->archive_content_is_hidden:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4f

    :cond_b8
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->formatArchivedDialogNames()Ljava/lang/CharSequence;

    move-result-object v6

    .line 1768
    :goto_4f
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isContentHidden()Z

    move-result v8

    if-eqz v8, :cond_b9

    sget v3, Lorg/telegram/messenger/R$string;->archive_content_is_hidden:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    :cond_b9
    move v8, v0

    move-object v0, v6

    goto :goto_50

    :cond_ba
    move v8, v0

    move-object v0, v9

    :goto_50
    const/4 v6, 0x0

    goto/16 :goto_2e

    .line 1774
    :goto_51
    iget-object v9, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v9, :cond_bb

    .line 1775
    iget v9, v9, Lorg/telegram/tgnet/TLRPC$DraftMessage;->date:I

    int-to-long v9, v9

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v9

    goto :goto_52

    .line 1776
    :cond_bb
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    if-eqz v9, :cond_bc

    int-to-long v9, v9

    .line 1777
    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v9

    goto :goto_52

    .line 1778
    :cond_bc
    iget-object v9, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v9, :cond_bd

    .line 1779
    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v9, v9

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v9

    goto :goto_52

    :cond_bd
    move-object/from16 v9, v20

    .line 1782
    :goto_52
    iget-object v10, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v10, :cond_d8

    iget-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->isSavedDialog:Z

    if-eqz v11, :cond_be

    goto/16 :goto_63

    .line 1791
    :cond_be
    iget v11, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v11, :cond_c2

    .line 1793
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isContentHidden()Z

    move-result v10

    if-eqz v10, :cond_bf

    const/4 v11, 0x0

    .line 1794
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    goto :goto_53

    :cond_bf
    const/4 v11, 0x0

    .line 1796
    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    iget v12, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    add-int v13, v10, v12

    if-lez v13, :cond_c1

    if-le v10, v12, :cond_c0

    const/4 v13, 0x1

    .line 1798
    iput-boolean v13, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 1799
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    new-array v14, v13, [Ljava/lang/Object;

    add-int/2addr v10, v12

    .line 1800
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v14, v11

    const-string v10, "%d"

    invoke-static {v10, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_54

    :cond_c0
    const/4 v13, 0x1

    .line 1802
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 1803
    iput-boolean v13, v7, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    new-array v14, v13, [Ljava/lang/Object;

    add-int/2addr v10, v12

    .line 1804
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v14, v11

    const-string v10, "%d"

    invoke-static {v10, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v12, v10

    const/4 v10, 0x0

    goto :goto_55

    .line 1807
    :cond_c1
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 1808
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    :goto_53
    const/4 v10, 0x0

    :goto_54
    const/4 v12, 0x0

    .line 1810
    :goto_55
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    goto/16 :goto_5b

    :cond_c2
    const/4 v11, 0x0

    .line 1812
    iget-boolean v12, v7, Lorg/telegram/ui/Cells/DialogCell;->clearingDialog:Z

    if-eqz v12, :cond_c3

    .line 1813
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    :goto_56
    const/4 v13, 0x0

    goto :goto_58

    .line 1815
    :cond_c3
    iget v11, v7, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-eqz v11, :cond_c7

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c5

    iget v12, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    if-ne v11, v12, :cond_c4

    if-eqz v10, :cond_c4

    iget-object v10, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    if-nez v10, :cond_c7

    :cond_c4
    const/4 v10, 0x1

    goto :goto_57

    :cond_c5
    move v10, v12

    .line 1816
    :goto_57
    iput-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 1818
    iget-boolean v12, v7, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v12, :cond_c6

    const/16 v12, 0x63

    if-le v11, v12, :cond_c6

    const-string v11, "99+"

    goto :goto_56

    :cond_c6
    new-array v12, v10, [Ljava/lang/Object;

    .line 1821
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v12, v13

    const-string v11, "%d"

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_58

    :cond_c7
    const/4 v10, 0x1

    const/4 v13, 0x0

    .line 1822
    iget-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-eqz v11, :cond_c8

    .line 1823
    iput-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    move-object/from16 v11, v20

    goto :goto_58

    .line 1826
    :cond_c8
    iput-boolean v13, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    const/4 v11, 0x0

    .line 1828
    :goto_58
    iget v12, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    if-eqz v12, :cond_c9

    .line 1829
    iput-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    const-string v12, "@"

    goto :goto_59

    .line 1832
    :cond_c9
    iput-boolean v13, v7, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    const/4 v12, 0x0

    .line 1834
    :goto_59
    iget v14, v7, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-lez v14, :cond_ca

    .line 1835
    iput-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    goto :goto_5a

    .line 1837
    :cond_ca
    iput-boolean v13, v7, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    :goto_5a
    move-object v10, v11

    .line 1841
    :goto_5b
    iget-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v11

    if-eqz v11, :cond_d7

    iget-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-nez v11, :cond_d7

    if-eqz v4, :cond_d7

    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v11, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v11, v11, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;

    if-nez v11, :cond_d7

    iget-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v11, :cond_cb

    iget-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    if-nez v11, :cond_d7

    .line 1842
    :cond_cb
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v4

    if-eqz v4, :cond_cc

    const/4 v4, 0x0

    .line 1843
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1844
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    const/4 v11, 0x1

    .line 1845
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1846
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    goto/16 :goto_65

    :cond_cc
    const/4 v4, 0x0

    const/4 v11, 0x1

    .line 1847
    iget-object v13, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->isSendError()Z

    move-result v13

    if-eqz v13, :cond_cd

    .line 1848
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1849
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1850
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1851
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    .line 1852
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 1853
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    goto/16 :goto_65

    .line 1854
    :cond_cd
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isSent()Z

    move-result v4

    if-eqz v4, :cond_d6

    .line 1855
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v4, :cond_cf

    .line 1856
    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_outbox_max_id:I

    iget-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    if-lt v4, v11, :cond_ce

    const/4 v4, 0x1

    goto :goto_5c

    :cond_ce
    const/4 v4, 0x0

    :goto_5c
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    :goto_5d
    const/4 v4, 0x1

    goto :goto_62

    .line 1857
    :cond_cf
    iget-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v4, :cond_d3

    .line 1858
    iget v4, v7, Lorg/telegram/ui/Cells/DialogCell;->readOutboxMaxId:I

    if-lez v4, :cond_d0

    iget-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    if-ge v4, v11, :cond_d2

    :cond_d0
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v4

    if-eqz v4, :cond_d2

    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_d1

    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v4, :cond_d1

    goto :goto_5e

    :cond_d1
    const/4 v4, 0x0

    goto :goto_5f

    :cond_d2
    :goto_5e
    const/4 v4, 0x1

    :goto_5f
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    goto :goto_5d

    .line 1860
    :cond_d3
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v4

    if-eqz v4, :cond_d5

    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_d4

    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v4, :cond_d4

    goto :goto_60

    :cond_d4
    const/4 v4, 0x0

    goto :goto_61

    :cond_d5
    :goto_60
    const/4 v4, 0x1

    :goto_61
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    goto :goto_5d

    .line 1862
    :goto_62
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    const/4 v4, 0x0

    .line 1863
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1864
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    goto :goto_65

    :cond_d6
    const/4 v4, 0x0

    goto :goto_65

    :cond_d7
    const/4 v4, 0x0

    .line 1867
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1868
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    .line 1869
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    .line 1870
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    goto :goto_65

    :cond_d8
    :goto_63
    const/4 v4, 0x0

    .line 1783
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    .line 1784
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v10, :cond_d9

    .line 1785
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v4

    if-eqz v4, :cond_d9

    iget-wide v10, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    iget v4, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v12

    cmp-long v4, v10, v12

    if-nez v4, :cond_d9

    const/4 v4, 0x1

    goto :goto_64

    :cond_d9
    const/4 v4, 0x0

    :goto_64
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    const/4 v4, 0x0

    .line 1786
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 1787
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    .line 1788
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    .line 1789
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 1874
    :goto_65
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->promoDialog:Z

    .line 1875
    iget v4, v7, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    .line 1876
    iget v11, v7, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    if-nez v11, :cond_dc

    iget-wide v13, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const/4 v11, 0x1

    invoke-virtual {v4, v13, v14, v11}, Lorg/telegram/messenger/MessagesController;->isPromoDialog(JZ)Z

    move-result v13

    if-eqz v13, :cond_dc

    .line 1877
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->drawPinBackground:Z

    .line 1878
    iput-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->promoDialog:Z

    .line 1879
    iget v11, v4, Lorg/telegram/messenger/MessagesController;->promoDialogType:I

    sget v13, Lorg/telegram/messenger/MessagesController;->PROMO_TYPE_PROXY:I

    if-ne v11, v13, :cond_da

    .line 1880
    sget v4, Lorg/telegram/messenger/R$string;->UseProxySponsor:I

    const-string v9, "UseProxySponsor"

    invoke-static {v9, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    goto :goto_66

    .line 1881
    :cond_da
    sget v13, Lorg/telegram/messenger/MessagesController;->PROMO_TYPE_PSA:I

    if-ne v11, v13, :cond_dc

    .line 1882
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PsaType_"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v4, Lorg/telegram/messenger/MessagesController;->promoPsaType:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1883
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_db

    .line 1884
    sget v9, Lorg/telegram/messenger/R$string;->PsaTypeDefault:I

    const-string v11, "PsaTypeDefault"

    invoke-static {v11, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 1886
    :cond_db
    iget-object v11, v4, Lorg/telegram/messenger/MessagesController;->promoPsaMessage:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_dc

    .line 1887
    iget-object v1, v4, Lorg/telegram/messenger/MessagesController;->promoPsaMessage:Ljava/lang/String;

    const/4 v4, 0x0

    .line 1888
    iput v4, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    .line 1893
    :cond_dc
    :goto_66
    iget v4, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v4, :cond_de

    const/4 v11, 0x2

    if-ne v4, v11, :cond_dd

    .line 1894
    sget v4, Lorg/telegram/messenger/R$string;->hidden_chats_title:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_67

    :cond_dd
    sget v4, Lorg/telegram/messenger/R$string;->ArchivedChats:I

    const-string v11, "ArchivedChats"

    invoke-static {v11, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_67
    move-object v11, v4

    goto/16 :goto_6b

    .line 1896
    :cond_de
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_e4

    .line 1897
    iget-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->useFromUserAsAvatar:Z

    if-eqz v11, :cond_e0

    .line 1898
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_df

    const/4 v4, 0x1

    new-array v11, v4, [Landroid/graphics/drawable/Drawable;

    .line 1899
    iput-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    .line 1901
    :cond_df
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    const/4 v13, 0x0

    aput-object v11, v4, v13

    .line 1902
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

    if-nez v4, :cond_e5

    goto/16 :goto_69

    .line 1906
    :cond_e0
    iget-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v11, :cond_e3

    .line 1907
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_e1

    const/4 v4, 0x1

    new-array v11, v4, [Landroid/graphics/drawable/Drawable;

    .line 1908
    iput-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    .line 1910
    :cond_e1
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->topicIconInName:[Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    const/4 v13, 0x0

    aput-object v11, v4, v13

    .line 1911
    iget-boolean v11, v7, Lorg/telegram/ui/Cells/DialogCell;->showTopicIconInName:Z

    if-eqz v11, :cond_e2

    iget-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v15, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v14, v14, v15

    invoke-static {v11, v14, v4, v13}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Z)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_68

    :cond_e2
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    goto :goto_68

    .line 1913
    :cond_e3
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_68

    .line 1915
    :cond_e4
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_ec

    .line 1916
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v4

    if-eqz v4, :cond_e6

    .line 1917
    sget v4, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    const-string v11, "RepliesTitle"

    invoke-static {v11, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :cond_e5
    :goto_68
    move-object v11, v4

    goto :goto_6a

    .line 1918
    :cond_e6
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isAnonymous(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v4

    if-eqz v4, :cond_e7

    .line 1919
    sget v4, Lorg/telegram/messenger/R$string;->AnonymousForward:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_68

    .line 1920
    :cond_e7
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v4

    if-eqz v4, :cond_eb

    .line 1921
    iget-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->isSavedDialog:Z

    if-eqz v4, :cond_e8

    .line 1922
    sget v4, Lorg/telegram/messenger/R$string;->MyNotes:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_68

    .line 1923
    :cond_e8
    iget-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->useMeForMyMessages:Z

    if-eqz v4, :cond_e9

    .line 1924
    sget v4, Lorg/telegram/messenger/R$string;->FromYou:I

    const-string v11, "FromYou"

    invoke-static {v11, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_68

    .line 1926
    :cond_e9
    iget v4, v7, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v11, 0x3

    if-ne v4, v11, :cond_ea

    const/4 v4, 0x1

    .line 1927
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->drawPinBackground:Z

    .line 1929
    :cond_ea
    sget v4, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v11, "SavedMessages"

    invoke-static {v11, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1931
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isContentHidden()Z

    move-result v11

    if-eqz v11, :cond_e5

    .line 1932
    sget v1, Lorg/telegram/messenger/R$string;->archive_content_is_hidden:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_68

    .line 1937
    :cond_eb
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    goto :goto_68

    :cond_ec
    :goto_69
    move-object/from16 v11, v20

    :goto_6a
    if-eqz v11, :cond_ed

    .line 1940
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_ed

    .line 1941
    sget v4, Lorg/telegram/messenger/R$string;->HiddenName:I

    const-string v11, "HiddenName"

    invoke-static {v11, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    :cond_ed
    :goto_6b
    move v4, v5

    move-object v14, v6

    move-object v5, v10

    move-object v15, v12

    move v6, v3

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_13

    :goto_6c
    if-eqz v8, :cond_ef

    .line 1948
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_timePaint:Landroid/text/TextPaint;

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v13, v10

    .line 1949
    new-instance v12, Landroid/text/StaticLayout;

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_timePaint:Landroid/text/TextPaint;

    sget-object v23, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object v8, v12

    move v11, v13

    move-object/from16 v37, v12

    move-object/from16 v12, v23

    move/from16 v23, v13

    move/from16 v13, v27

    move-object/from16 v35, v14

    move/from16 v14, v28

    move/from16 v38, v6

    move-object v6, v15

    move/from16 v15, v29

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v8, v37

    iput-object v8, v7, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    .line 1950
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v8, :cond_ee

    .line 1951
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    const/16 v9, 0xf

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v8, v9

    sub-int v8, v8, v23

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    goto :goto_6d

    :cond_ee
    const/16 v8, 0xf

    .line 1953
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    goto :goto_6d

    :cond_ef
    move/from16 v38, v6

    move-object/from16 v35, v14

    move-object v6, v15

    const/4 v8, 0x0

    .line 1957
    iput-object v8, v7, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    const/4 v8, 0x0

    .line 1958
    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    const/16 v23, 0x0

    .line 1962
    :goto_6d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->drawLock2()Z

    move-result v8

    if-eqz v8, :cond_f1

    .line 1963
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_f0

    .line 1964
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int v8, v8, v23

    const/4 v9, 0x4

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v8, v10

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->lock2Left:I

    goto :goto_6e

    :cond_f0
    const/4 v9, 0x4

    .line 1966
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lock2Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    sub-int/2addr v8, v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v8, v10

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->lock2Left:I

    .line 1968
    :goto_6e
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lock2Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v8, v10

    const/4 v9, 0x0

    add-int/2addr v8, v9

    add-int v23, v23, v8

    goto :goto_6f

    :cond_f1
    const/4 v8, 0x0

    .line 1972
    :goto_6f
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v9, :cond_f2

    .line 1973
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    sub-int/2addr v9, v10

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    sub-int v9, v9, v23

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    goto :goto_70

    .line 1975
    :cond_f2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    sub-int/2addr v9, v10

    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    const/4 v11, 0x5

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x8

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    sub-int v9, v9, v23

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 1976
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int v9, v9, v23

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 1979
    :goto_70
    iget-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    const/16 v10, 0xc

    if-eqz v9, :cond_f7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v9

    if-nez v9, :cond_f7

    .line 1980
    iget-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    if-eqz v9, :cond_f3

    .line 1981
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    const/16 v11, 0x1f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v9, v11

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    goto :goto_72

    :cond_f3
    if-nez v5, :cond_f5

    if-eqz v6, :cond_f4

    goto :goto_71

    .line 1989
    :cond_f4
    iget-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    if-eqz v9, :cond_f7

    .line 1990
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    sub-int/2addr v9, v11

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    goto :goto_72

    :cond_f5
    :goto_71
    if-eqz v5, :cond_f6

    .line 1984
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v12, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/16 v12, 0x12

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    add-int/2addr v11, v13

    sub-int/2addr v9, v11

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    :cond_f6
    if-eqz v6, :cond_f7

    .line 1987
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    const/16 v11, 0x1e

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v9, v11

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 1994
    :cond_f7
    :goto_72
    iget-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    if-eqz v9, :cond_f9

    .line 1995
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_f8

    move/from16 v11, v19

    goto :goto_73

    :cond_f8
    const/4 v11, 0x4

    :goto_73
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    add-int/2addr v11, v12

    sub-int/2addr v9, v11

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 1997
    :cond_f9
    iget-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    if-eqz v9, :cond_fb

    .line 1998
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    const/4 v11, 0x5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v9, v12

    .line 1999
    iget v11, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v11, v9

    iput v11, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 2000
    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v11, :cond_fa

    .line 2001
    iget v11, v7, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sub-int/2addr v11, v8

    sub-int/2addr v11, v9

    iput v11, v7, Lorg/telegram/ui/Cells/DialogCell;->clockDrawLeft:I

    goto/16 :goto_74

    .line 2003
    :cond_fa
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int v8, v8, v23

    const/4 v11, 0x5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v8, v12

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->clockDrawLeft:I

    .line 2004
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v8, v9

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_74

    .line 2006
    :cond_fb
    iget-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v9, :cond_ff

    .line 2007
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    const/4 v11, 0x5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v9, v12

    .line 2008
    iget v11, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v11, v9

    iput v11, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 2009
    iget-boolean v12, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v12, :cond_fd

    .line 2010
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    sub-int/2addr v12, v13

    sub-int/2addr v11, v12

    iput v11, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 2011
    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v11, :cond_fc

    .line 2012
    iget v11, v7, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sub-int/2addr v11, v8

    sub-int/2addr v11, v9

    iput v11, v7, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawLeft:I

    const/high16 v8, 0x40b00000    # 5.5f

    .line 2013
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v11, v8

    iput v11, v7, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    goto :goto_74

    .line 2015
    :cond_fc
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int v8, v8, v23

    const/4 v11, 0x5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v8, v12

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft:I

    const/high16 v11, 0x40b00000    # 5.5f

    .line 2016
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v8, v11

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->halfCheckDrawLeft:I

    .line 2017
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    add-int/2addr v9, v11

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v9, v11

    add-int/2addr v8, v9

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_74

    .line 2020
    :cond_fd
    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v11, :cond_fe

    .line 2021
    iget v11, v7, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    sub-int/2addr v11, v8

    sub-int/2addr v11, v9

    iput v11, v7, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft1:I

    goto :goto_74

    .line 2023
    :cond_fe
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    add-int v8, v8, v23

    const/4 v11, 0x5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v8, v12

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->checkDrawLeft1:I

    .line 2024
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v8, v9

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 2029
    :cond_ff
    :goto_74
    iget-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-eqz v8, :cond_100

    iget-object v8, v7, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_100

    const/16 v8, 0x24

    .line 2030
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    .line 2031
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v9, v8

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 2032
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_106

    .line 2033
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v9, v8

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto/16 :goto_76

    .line 2035
    :cond_100
    iget-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-nez v8, :cond_101

    iget-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-eqz v8, :cond_102

    :cond_101
    iget-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-nez v8, :cond_102

    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-nez v8, :cond_102

    .line 2036
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v8, v9

    .line 2037
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v9, v8

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 2038
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_106

    .line 2039
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v9, v8

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_76

    .line 2041
    :cond_102
    iget-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v8, :cond_103

    .line 2042
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v8, v9

    .line 2043
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v9, v8

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 2044
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_106

    .line 2045
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v9, v8

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_76

    .line 2047
    :cond_103
    iget-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-eqz v8, :cond_104

    const/16 v8, 0x24

    .line 2048
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    .line 2049
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v9, v8

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 2050
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_106

    .line 2051
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v9, v8

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    goto :goto_76

    .line 2053
    :cond_104
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-eqz v8, :cond_106

    .line 2054
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    const/4 v11, 0x1

    if-ne v9, v11, :cond_105

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    goto :goto_75

    :cond_105
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    :goto_75
    invoke-virtual {v9}, Lorg/telegram/ui/Components/ScamDrawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v8, v9

    .line 2055
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    sub-int/2addr v9, v8

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    .line 2056
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_106

    .line 2057
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    add-int/2addr v9, v8

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 2061
    :cond_106
    :goto_76
    :try_start_2
    iget v8, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v8, v9

    if-gez v8, :cond_107

    const/4 v8, 0x0

    .line 2065
    :cond_107
    instance-of v9, v0, Ljava/lang/String;

    if-eqz v9, :cond_108

    .line 2066
    check-cast v0, Ljava/lang/String;

    const/16 v9, 0x20

    const/16 v11, 0xa

    invoke-virtual {v0, v11, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 2069
    :cond_108
    iget-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v9, :cond_10a

    .line 2070
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v12, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v11, v11, v12

    int-to-float v12, v8

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v11, v12, v13}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ne v9, v11, :cond_109

    const/4 v9, 0x1

    goto :goto_77

    :cond_109
    const/4 v9, 0x0

    :goto_77
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutFits:Z

    const/16 v9, 0x30

    .line 2071
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v8, v9

    .line 2073
    :cond_10a
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v11, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v9, v9, v11

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    int-to-float v11, v8

    cmpl-float v9, v9, v11

    if-lez v9, :cond_10b

    const/4 v9, 0x1

    goto :goto_78

    :cond_10b
    const/4 v9, 0x0

    :goto_78
    iput-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameIsEllipsized:Z

    .line 2074
    iget-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-nez v9, :cond_10c

    .line 2075
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v12, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v9, v9, v12

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v9, v11, v12}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2077
    :cond_10c
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v11, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v9, v9, v11

    invoke-virtual {v9}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v9

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v0, v9, v11, v12}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2078
    iget-object v9, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v9, :cond_10d

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v9

    if-eqz v9, :cond_10d

    .line 2079
    iget-object v9, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v9, v11}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_10d

    move-object/from16 v28, v9

    goto :goto_79

    :cond_10d
    move-object/from16 v28, v0

    .line 2084
    :goto_79
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-eqz v0, :cond_10e

    .line 2085
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v40, v0, v9

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

    goto :goto_7a

    .line 2087
    :cond_10e
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v11, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v29, v9, v11

    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v30

    sget-object v31, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v32, 0x3f800000    # 1.0f

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v27, v0

    invoke-direct/range {v27 .. v34}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    .line 2089
    :goto_7a
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v0, :cond_10f

    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->isRtlCharAt(I)Z

    move-result v0

    if-eqz v0, :cond_10f

    const/16 v0, 0x24

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_7b

    :cond_10f
    const/4 v0, 0x0

    :goto_7b
    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutTranslateX:F

    .line 2090
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->isRtlCharAt(I)Z

    move-result v0

    iput-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeLeft:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7c

    :catch_2
    move-exception v0

    .line 2092
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2095
    :goto_7c
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v8, 0x1

    new-array v9, v8, [Landroid/text/Layout;

    iget-object v8, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v11, 0x0

    aput-object v8, v9, v11

    invoke-static {v11, v7, v0, v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 2103
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v0, :cond_112

    const/4 v0, 0x7

    .line 2104
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v8, 0x11

    .line 2105
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    const/high16 v8, 0x41480000    # 12.5f

    .line 2106
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    .line 2107
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    .line 2108
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    const/16 v8, 0x13

    .line 2109
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    .line 2110
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v9, v9, 0x15

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v8, v9

    .line 2111
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    if-nez v9, :cond_110

    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    :cond_110
    const/4 v11, 0x2

    div-int/2addr v9, v11

    const/16 v11, 0x11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    sub-int/2addr v9, v12

    .line 2112
    iget-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v11, v11, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    int-to-float v12, v9

    int-to-float v13, v0

    const/16 v14, 0x22

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v9, v14

    int-to-float v9, v9

    const/16 v14, 0x22

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v0

    int-to-float v14, v14

    invoke-virtual {v11, v12, v13, v9, v14}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_111
    move/from16 v49, v8

    move v8, v0

    move/from16 v0, v49

    goto/16 :goto_86

    .line 2114
    :cond_112
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_118

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_113

    goto/16 :goto_82

    :cond_113
    const/16 v0, 0x9

    .line 2138
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v8, 0x1f

    .line 2139
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameTop:I

    const/16 v8, 0x10

    .line 2140
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    const/16 v8, 0x27

    .line 2141
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    const/16 v8, 0x27

    .line 2142
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    .line 2143
    iget-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v8, :cond_114

    const/16 v8, 0x24

    goto :goto_7d

    :cond_114
    const/16 v8, 0x27

    :goto_7d
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    const/16 v8, 0x11

    .line 2144
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    .line 2145
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v9, v9, 0x17

    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_115

    const/4 v11, 0x0

    goto :goto_7e

    :cond_115
    move v11, v10

    :goto_7e
    sub-int/2addr v9, v11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v8, v9

    .line 2147
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_116

    .line 2148
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 2149
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    const/16 v11, 0x40

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v9, v11

    .line 2150
    iget v11, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    iget v12, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v13, 0x2

    add-int/2addr v12, v13

    mul-int/2addr v11, v12

    sub-int/2addr v11, v13

    add-int/lit8 v11, v11, 0xb

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int v11, v9, v11

    goto :goto_7f

    .line 2152
    :cond_116
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    const/4 v11, 0x4

    add-int/2addr v9, v11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    const/16 v9, 0xa

    .line 2153
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    const/16 v11, 0x43

    .line 2154
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v9

    .line 2156
    :goto_7f
    iget-object v12, v7, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v12, v12, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    int-to-float v13, v9

    int-to-float v14, v0

    const/16 v15, 0x36

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v9, v15

    int-to-float v9, v9

    const/16 v15, 0x36

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v15, v0

    int-to-float v15, v15

    invoke-virtual {v12, v13, v14, v9, v15}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v9, 0x0

    .line 2157
    :goto_80
    iget-object v12, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v13, v12

    if-ge v9, v13, :cond_111

    .line 2158
    aget-object v12, v12, v9

    iget v13, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v14, 0x2

    add-int/2addr v13, v14

    mul-int/2addr v13, v9

    add-int/2addr v13, v11

    int-to-float v13, v13

    const/16 v14, 0x1e

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v0

    iget-boolean v15, v7, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-eqz v15, :cond_117

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    goto :goto_81

    :cond_117
    const/4 v15, 0x0

    :goto_81
    add-int/2addr v14, v15

    int-to-float v14, v14

    iget v15, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v12, v13, v14, v15, v10}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    add-int/lit8 v9, v9, 0x1

    const/16 v10, 0xc

    goto :goto_80

    :cond_118
    :goto_82
    const/16 v0, 0xb

    .line 2115
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v8, 0x20

    .line 2116
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameTop:I

    const/16 v8, 0xd

    .line 2117
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    const/16 v8, 0x2b

    .line 2118
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->errorTop:I

    const/16 v8, 0x2b

    .line 2119
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    const/16 v8, 0x2b

    .line 2120
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    const/16 v8, 0xd

    .line 2121
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iput v8, v7, Lorg/telegram/ui/Cells/DialogCell;->checkDrawTop:I

    .line 2122
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v9, v9, 0x15

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v8, v9

    .line 2124
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_119

    const/16 v9, 0x10

    .line 2125
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 2126
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    const/16 v10, 0x42

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    const/16 v10, 0x1f

    .line 2127
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int v10, v9, v10

    goto :goto_83

    .line 2129
    :cond_119
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v9, v9, 0x6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    const/16 v9, 0xa

    .line 2130
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    const/16 v10, 0x45

    .line 2131
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v9

    .line 2133
    :goto_83
    iget-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v11, v11, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    int-to-float v12, v9

    int-to-float v13, v0

    const/16 v14, 0x38

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v9, v14

    int-to-float v9, v9

    const/16 v14, 0x38

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v0

    int-to-float v14, v14

    invoke-virtual {v11, v12, v13, v9, v14}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v9, 0x0

    .line 2134
    :goto_84
    iget-object v11, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v12, v11

    if-ge v9, v12, :cond_11b

    .line 2135
    aget-object v11, v11, v9

    iget v12, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbSize:I

    const/4 v13, 0x2

    add-int/2addr v12, v13

    mul-int/2addr v12, v9

    add-int/2addr v12, v10

    int-to-float v12, v12

    const/16 v13, 0x1f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    add-int/2addr v13, v0

    iget-boolean v14, v7, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-eqz v14, :cond_11a

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    goto :goto_85

    :cond_11a
    const/4 v14, 0x0

    :goto_85
    add-int/2addr v13, v14

    int-to-float v13, v13

    const/16 v14, 0x12

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    move/from16 p1, v0

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v11, v12, v13, v15, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, p1

    goto :goto_84

    :cond_11b
    move/from16 p1, v0

    move v0, v8

    move/from16 v8, p1

    .line 2161
    :goto_86
    iget-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-eqz v9, :cond_11c

    .line 2162
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameTop:I

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameTop:I

    .line 2164
    :cond_11c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v9

    if-eqz v9, :cond_11f

    .line 2165
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v9, :cond_11e

    .line 2166
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    sub-int/2addr v9, v10

    const/16 v10, 0xe

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    .line 2168
    iget-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v9, :cond_11f

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v9

    if-nez v9, :cond_11f

    .line 2169
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    const/high16 v10, 0x40f00000    # 7.5f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int v10, v23, v10

    sub-int/2addr v9, v10

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    .line 2170
    iget-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    if-eqz v10, :cond_11d

    .line 2171
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    const/4 v11, 0x5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v10, v12

    sub-int/2addr v9, v10

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    goto :goto_87

    :cond_11d
    const/4 v11, 0x5

    .line 2172
    iget-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v10, :cond_11f

    .line 2173
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v10, v12

    sub-int/2addr v9, v10

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    .line 2174
    iget-boolean v10, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v10, :cond_11f

    .line 2175
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v10, v11

    sub-int/2addr v9, v10

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    goto :goto_87

    :cond_11e
    const/16 v9, 0xe

    .line 2181
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    .line 2184
    :cond_11f
    :goto_87
    iget-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    if-eqz v9, :cond_122

    const/16 v5, 0x1f

    .line 2185
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v0, v5

    .line 2187
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v6, :cond_121

    .line 2188
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    const/16 v6, 0x22

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    .line 2190
    iget-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v5, :cond_139

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v5

    if-nez v5, :cond_139

    .line 2191
    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    const/16 v6, 0xb

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int v23, v23, v6

    sub-int v5, v5, v23

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    .line 2192
    iget-boolean v6, v7, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    if-eqz v6, :cond_120

    .line 2193
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    const/4 v9, 0x5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v6, v10

    sub-int/2addr v5, v6

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    goto/16 :goto_94

    :cond_120
    const/4 v9, 0x5

    .line 2194
    iget-boolean v6, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v6, :cond_139

    .line 2195
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v6, v10

    sub-int/2addr v5, v6

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    .line 2196
    iget-boolean v6, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v6, :cond_139

    .line 2197
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v6, v9

    sub-int/2addr v5, v6

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    goto/16 :goto_94

    :cond_121
    const/16 v6, 0xb

    .line 2203
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->errorLeft:I

    .line 2204
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v6, v5

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2205
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v6, v5

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2206
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    add-int/2addr v6, v5

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 2207
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    add-int/2addr v6, v5

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    goto/16 :goto_94

    :cond_122
    if-nez v5, :cond_125

    if-nez v6, :cond_125

    .line 2209
    iget-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    if-eqz v9, :cond_123

    goto :goto_88

    .line 2299
    :cond_123
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v5

    if-eqz v5, :cond_124

    .line 2300
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v0, v5

    .line 2302
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_124

    .line 2303
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v6, v5

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2304
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v6, v5

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2305
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    add-int/2addr v6, v5

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 2306
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    add-int/2addr v6, v5

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    :cond_124
    const/4 v5, 0x0

    .line 2309
    iput-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    .line 2310
    iput-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    goto/16 :goto_94

    :cond_125
    :goto_88
    if-eqz v5, :cond_129

    const/16 v9, 0xc

    .line 2211
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-double v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v9, v11

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    .line 2212
    new-instance v9, Landroid/text/StaticLayout;

    sget-object v29, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    iget v10, v7, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    sget-object v31, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v32, 0x3f800000    # 1.0f

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v27, v9

    move-object/from16 v28, v5

    move/from16 v30, v10

    invoke-direct/range {v27 .. v34}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v9, v7, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    .line 2213
    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    const/16 v9, 0x12

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v5, v10

    sub-int/2addr v0, v5

    .line 2215
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v9, :cond_127

    .line 2216
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    sub-int/2addr v5, v9

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v5, v9

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    .line 2218
    iget-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v5, :cond_128

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v5

    if-nez v5, :cond_128

    .line 2219
    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    const/high16 v9, 0x40f00000    # 7.5f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int v9, v23, v9

    sub-int/2addr v5, v9

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    .line 2220
    iget-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    if-eqz v9, :cond_126

    .line 2221
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    const/4 v10, 0x5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v9, v11

    sub-int/2addr v5, v9

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    goto :goto_89

    :cond_126
    const/4 v10, 0x5

    .line 2222
    iget-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v9, :cond_128

    .line 2223
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v9, v11

    sub-int/2addr v5, v9

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    .line 2224
    iget-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v9, :cond_128

    .line 2225
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v5, v9

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    goto :goto_89

    .line 2231
    :cond_127
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    .line 2232
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v9, v5

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2233
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v9, v5

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2234
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    add-int/2addr v9, v5

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 2235
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    add-int/2addr v9, v5

    iput v9, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    :cond_128
    :goto_89
    const/4 v5, 0x1

    .line 2237
    iput-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    goto :goto_8a

    :cond_129
    const/4 v5, 0x0

    .line 2239
    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    :goto_8a
    if-eqz v6, :cond_12f

    .line 2242
    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v5, :cond_12a

    const/16 v5, 0xc

    .line 2243
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v5, v10

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    .line 2244
    new-instance v5, Landroid/text/StaticLayout;

    sget-object v29, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    sget-object v31, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v32, 0x3f800000    # 1.0f

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move/from16 v30, v9

    invoke-direct/range {v27 .. v34}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionLayout:Landroid/text/StaticLayout;

    goto :goto_8b

    :cond_12a
    const/16 v5, 0xc

    .line 2246
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    .line 2248
    :goto_8b
    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    const/16 v6, 0x12

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v5, v9

    sub-int/2addr v0, v5

    .line 2250
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v6, :cond_12c

    .line 2251
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    sub-int/2addr v5, v6

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    if-eqz v6, :cond_12b

    const/16 v9, 0x12

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v6, v10

    goto :goto_8c

    :cond_12b
    const/4 v6, 0x0

    :goto_8c
    sub-int/2addr v5, v6

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    .line 2253
    iget-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v5, :cond_12e

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v5

    if-nez v5, :cond_12e

    .line 2254
    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    const/high16 v6, 0x40f00000    # 7.5f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int v6, v23, v6

    sub-int/2addr v5, v6

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    goto :goto_8e

    .line 2258
    :cond_12c
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    if-eqz v9, :cond_12d

    const/16 v10, 0x12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v9, v11

    goto :goto_8d

    :cond_12d
    const/4 v9, 0x0

    :goto_8d
    add-int/2addr v6, v9

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    .line 2259
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v6, v5

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2260
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v6, v5

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2261
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    add-int/2addr v6, v5

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 2262
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    add-int/2addr v6, v5

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    :cond_12e
    :goto_8e
    const/4 v5, 0x1

    .line 2264
    iput-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    goto :goto_8f

    :cond_12f
    const/4 v5, 0x0

    .line 2266
    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    .line 2268
    :goto_8f
    iget-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    if-eqz v5, :cond_139

    const/16 v5, 0x18

    .line 2269
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v0, v5

    .line 2271
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v6, :cond_134

    .line 2272
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    const/16 v6, 0x20

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v5, v9

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    .line 2273
    iget-boolean v6, v7, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    if-eqz v6, :cond_131

    .line 2274
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    if-eqz v6, :cond_130

    const/16 v9, 0x12

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v6, v10

    goto :goto_90

    :cond_130
    const/4 v6, 0x0

    :goto_90
    sub-int/2addr v5, v6

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    .line 2276
    :cond_131
    iget-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    if-eqz v5, :cond_133

    .line 2277
    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    if-eqz v6, :cond_132

    const/16 v9, 0x12

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v6, v9

    goto :goto_91

    :cond_132
    const/4 v6, 0x0

    :goto_91
    sub-int/2addr v5, v6

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    .line 2280
    :cond_133
    iget-boolean v5, v7, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v5, :cond_139

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v5

    if-nez v5, :cond_139

    .line 2281
    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    const/high16 v6, 0x40f00000    # 7.5f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int v23, v23, v6

    sub-int v5, v5, v23

    iput v5, v7, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    goto :goto_94

    .line 2285
    :cond_134
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    .line 2286
    iget-boolean v9, v7, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    if-eqz v9, :cond_136

    .line 2287
    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->mentionWidth:I

    if-eqz v9, :cond_135

    const/16 v10, 0x12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v9, v11

    goto :goto_92

    :cond_135
    const/4 v9, 0x0

    :goto_92
    add-int/2addr v6, v9

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    .line 2289
    :cond_136
    iget-boolean v6, v7, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    if-eqz v6, :cond_138

    .line 2290
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    iget v9, v7, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    if-eqz v9, :cond_137

    const/16 v10, 0x12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_93

    :cond_137
    const/4 v9, 0x0

    :goto_93
    add-int/2addr v6, v9

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    .line 2292
    :cond_138
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v6, v5

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2293
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v6, v5

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2294
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    add-int/2addr v6, v5

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 2295
    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    add-int/2addr v6, v5

    iput v6, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    :cond_139
    :goto_94
    if-eqz v4, :cond_13f

    if-nez v2, :cond_13a

    move-object/from16 v2, v20

    .line 2318
    :cond_13a
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v5, 0x96

    if-le v4, v5, :cond_13b

    const/4 v4, 0x0

    .line 2319
    invoke-interface {v2, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2321
    :cond_13b
    iget-boolean v4, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v4, :cond_13c

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v4, :cond_13d

    :cond_13c
    if-eqz v1, :cond_13e

    .line 2322
    :cond_13d
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_95

    .line 2324
    :cond_13e
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTwoNewLinesToOne(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2326
    :goto_95
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

    .line 2327
    iget-object v4, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_13f

    .line 2328
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_13f

    move-object v2, v4

    :cond_13f
    const/16 v4, 0xc

    .line 2334
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2335
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_141

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_140

    goto :goto_96

    :cond_140
    const/16 v0, 0x3e

    goto :goto_97

    :cond_141
    :goto_96
    const/16 v0, 0x3a

    :goto_97
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonTop:I

    .line 2336
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-eqz v0, :cond_144

    .line 2337
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_143

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_142

    goto :goto_98

    :cond_142
    const/16 v0, 0x27

    .line 2340
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    goto :goto_99

    :cond_143
    :goto_98
    const/16 v0, 0x22

    .line 2338
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    :goto_99
    const/4 v0, 0x0

    .line 2342
    :goto_9a
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v6, v5

    if-ge v0, v6, :cond_14d

    .line 2343
    aget-object v5, v5, v0

    iget v6, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonTop:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9a

    .line 2345
    :cond_144
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_145

    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v5, :cond_149

    :cond_145
    if-eqz v1, :cond_149

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v5, :cond_146

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderDialogsCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_149

    .line 2347
    :cond_146
    :try_start_3
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_147

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v0

    if-eqz v0, :cond_147

    .line 2348
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v0, v5}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_147

    move-object v1, v0

    .line 2353
    :cond_147
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

    goto :goto_9b

    :catch_3
    move-exception v0

    .line 2355
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_9b
    const/16 v0, 0x33

    .line 2357
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    .line 2358
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameIsEllipsized:Z

    if-eqz v0, :cond_148

    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_148

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_9c

    :cond_148
    const/4 v0, 0x0

    :goto_9c
    const/4 v5, 0x0

    .line 2359
    :goto_9d
    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v9, v6

    if-ge v5, v9, :cond_14d

    .line 2360
    aget-object v6, v6, v5

    add-int v9, v8, v0

    const/16 v10, 0x28

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v6, v9}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_9d

    :cond_149
    const/4 v5, 0x0

    .line 2363
    iput-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_14b

    .line 2364
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_14a

    goto :goto_9e

    :cond_14a
    const/16 v0, 0x27

    .line 2371
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    goto :goto_a1

    :cond_14b
    :goto_9e
    const/16 v5, 0x20

    .line 2365
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    .line 2366
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameIsEllipsized:Z

    if-eqz v0, :cond_14c

    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_14c

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_9f

    :cond_14c
    const/4 v0, 0x0

    :goto_9f
    const/4 v5, 0x0

    .line 2367
    :goto_a0
    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v9, v6

    if-ge v5, v9, :cond_14d

    .line 2368
    aget-object v6, v6, v5

    add-int v9, v8, v0

    const/16 v10, 0x15

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v6, v9}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_a0

    .line 2375
    :cond_14d
    :goto_a1
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->twoLinesForName:Z

    if-eqz v0, :cond_14e

    .line 2376
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v0, v5

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    .line 2378
    :cond_14e
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v5, 0x1

    new-array v6, v5, [Landroid/text/Layout;

    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    const/4 v8, 0x0

    aput-object v5, v6, v8

    invoke-static {v8, v7, v0, v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 2382
    :try_start_4
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonCreated:Z

    .line 2383
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14f

    .line 2384
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    const/16 v5, 0x11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    move-object/from16 v6, v35

    invoke-static {v6, v0, v5, v8}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2385
    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    const/16 v6, 0x1a

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int v6, v4, v6

    int-to-float v6, v6

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v5, v6, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 2386
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

    .line 2387
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool2:Ljava/util/Stack;

    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-virtual {v0, v5}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 2388
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2389
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool2:Ljava/util/Stack;

    iget-object v6, v7, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-static {v7, v0, v5, v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;Ljava/util/Stack;Ljava/util/List;)V

    goto :goto_a2

    :cond_14f
    const/4 v5, 0x0

    .line 2391
    iput-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 2396
    :catch_4
    :goto_a2
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v5, 0x1

    new-array v6, v5, [Landroid/text/Layout;

    iget-object v5, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    const/4 v8, 0x0

    aput-object v5, v6, v8

    invoke-static {v8, v7, v0, v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 2399
    :try_start_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_152

    .line 2400
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_151

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_150

    goto :goto_a3

    .line 2403
    :cond_150
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    const/16 v5, 0xc

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int v5, v4, v6

    int-to-float v5, v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v0, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 2404
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v5, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v11, v3, v5

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v0

    move v12, v4

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    goto :goto_a4

    .line 2401
    :cond_151
    :goto_a3
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

    goto :goto_a4

    :catch_5
    move-exception v0

    .line 2408
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2414
    :cond_152
    :goto_a4
    :try_start_6
    instance-of v0, v2, Landroid/text/Spannable;

    if-eqz v0, :cond_155

    .line 2415
    move-object v0, v2

    check-cast v0, Landroid/text/Spannable;

    .line 2416
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0, v6, v3, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    :goto_a5
    if-ge v6, v5, :cond_155

    aget-object v8, v3, v6

    .line 2417
    instance-of v9, v8, Landroid/text/style/ClickableSpan;

    if-nez v9, :cond_153

    instance-of v9, v8, Lorg/telegram/messenger/CodeHighlighting$Span;

    if-nez v9, :cond_153

    instance-of v9, v8, Lorg/telegram/ui/Components/TypefaceSpan;

    if-nez v9, :cond_153

    instance-of v9, v8, Lorg/telegram/messenger/CodeHighlighting$ColorSpan;

    if-nez v9, :cond_153

    instance-of v9, v8, Lorg/telegram/ui/Components/QuoteSpan;

    if-nez v9, :cond_153

    instance-of v9, v8, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    if-nez v9, :cond_153

    instance-of v9, v8, Landroid/text/style/StyleSpan;

    if-eqz v9, :cond_154

    move-object v9, v8

    check-cast v9, Landroid/text/style/StyleSpan;

    invoke-virtual {v9}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_154

    .line 2418
    :cond_153
    invoke-interface {v0, v8}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_154
    add-int/lit8 v6, v6, 0x1

    goto :goto_a5

    .line 2422
    :cond_155
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_156

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v3, :cond_157

    :cond_156
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v3, :cond_157

    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderDialogsCount:I

    const/4 v5, 0x1

    if-le v3, v5, :cond_157

    .line 2425
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v2, v7, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v0, v0, v2

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    move-object v2, v1

    const/4 v1, 0x0

    goto :goto_a6

    :cond_157
    if-nez v0, :cond_158

    .line 2426
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_159

    :cond_158
    if-eqz v1, :cond_15b

    .line 2427
    :cond_159
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-nez v0, :cond_15a

    instance-of v0, v2, Landroid/text/Spanned;

    if-eqz v0, :cond_15a

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

    if-gtz v0, :cond_15a

    .line 2428
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

    goto :goto_a6

    .line 2430
    :cond_15a
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    const/16 v3, 0xc

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int v3, v4, v5

    int-to-float v3, v3

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v0, v3, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2436
    :cond_15b
    :goto_a6
    iget-boolean v0, v7, Lorg/telegram/ui/Cells/DialogCell;->isForum:Z

    if-eqz v0, :cond_15c

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_15c

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_a7

    :cond_15c
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 2437
    :goto_a7
    iget-boolean v3, v7, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v3, :cond_15f

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v3, :cond_15d

    goto :goto_a9

    .line 2443
    :cond_15d
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v1, :cond_15e

    .line 2444
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

    .line 2445
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_15e

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v1

    if-nez v1, :cond_15e

    .line 2446
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

    .line 2449
    :cond_15e
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

    :goto_a8
    move v8, v4

    goto :goto_ab

    :cond_15f
    :goto_a9
    const/4 v6, 0x2

    .line 2438
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v3, :cond_160

    if-eqz v1, :cond_160

    const/4 v3, 0x5

    .line 2439
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v4, v3

    .line 2441
    :cond_160
    iget-object v9, v7, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v13, v5

    const/4 v14, 0x0

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eqz v1, :cond_161

    const/16 v17, 0x1

    goto :goto_aa

    :cond_161
    move/from16 v17, v6

    :goto_aa
    move-object v8, v2

    move v10, v4

    move-object v11, v0

    move/from16 v16, v4

    invoke-static/range {v8 .. v17}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_a8

    .line 2451
    :goto_ab
    :try_start_7
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->spoilersPool:Ljava/util/Stack;

    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 2452
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2453
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

    goto :goto_ae

    :catch_6
    move-exception v0

    goto :goto_ac

    :catch_7
    move-exception v0

    move/from16 v9, v38

    :goto_ac
    move v4, v8

    goto :goto_ad

    :catch_8
    move-exception v0

    move/from16 v9, v38

    :goto_ad
    const/4 v1, 0x0

    .line 2455
    iput-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    .line 2456
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v8, v4

    .line 2458
    :goto_ae
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/Layout;

    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v3, v7, v0, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 2462
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_172

    .line 2463
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_169

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_169

    .line 2464
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v3}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    .line 2465
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v3}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    .line 2466
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    const/16 v4, 0xc

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 2467
    iget-boolean v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v3, :cond_162

    .line 2468
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v3, v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 2470
    :cond_162
    iget-boolean v3, v7, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-nez v3, :cond_163

    iget-boolean v3, v7, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-eqz v3, :cond_164

    :cond_163
    iget-boolean v3, v7, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-nez v3, :cond_164

    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-nez v3, :cond_164

    .line 2471
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

    goto/16 :goto_b0

    .line 2472
    :cond_164
    iget-boolean v3, v7, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v3, :cond_165

    .line 2473
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

    goto :goto_b0

    .line 2474
    :cond_165
    iget-boolean v3, v7, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-eqz v3, :cond_166

    .line 2475
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

    goto :goto_b0

    .line 2476
    :cond_166
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-eqz v3, :cond_168

    .line 2477
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

    if-ne v5, v6, :cond_167

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    goto :goto_af

    :cond_167
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    :goto_af
    invoke-virtual {v5}, Lorg/telegram/ui/Components/ScamDrawable;->getIntrinsicWidth()I

    move-result v5

    int-to-double v5, v5

    sub-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    goto :goto_b0

    .line 2479
    :cond_168
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

    :goto_b0
    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_169

    .line 2482
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v3, v0

    cmpg-double v3, v1, v3

    if-gez v3, :cond_169

    .line 2483
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v3, v3

    int-to-double v5, v0

    sub-double/2addr v5, v1

    add-double/2addr v3, v5

    double-to-int v0, v3

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 2487
    :cond_169
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_16c

    .line 2488
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_16c

    const v1, 0x7fffffff

    move v2, v1

    const/4 v1, 0x0

    :goto_b1
    if-ge v1, v0, :cond_16b

    .line 2492
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_16a

    .line 2494
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    int-to-double v5, v8

    sub-double/2addr v5, v3

    double-to-int v3, v5

    .line 2495
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_b1

    :cond_16a
    const/4 v2, 0x0

    :cond_16b
    const v0, 0x7fffffff

    if-eq v2, v0, :cond_16c

    .line 2502
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    add-int/2addr v0, v2

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2506
    :cond_16c
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_16f

    .line 2507
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_16f

    const v1, 0x7fffffff

    move v2, v1

    const/4 v1, 0x0

    :goto_b2
    if-ge v1, v0, :cond_16e

    .line 2511
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_16d

    .line 2513
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    int-to-double v5, v8

    sub-double/2addr v5, v3

    double-to-int v3, v5

    .line 2514
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_b2

    :cond_16d
    const/4 v2, 0x0

    :cond_16e
    const v0, 0x7fffffff

    if-eq v2, v0, :cond_16f

    .line 2521
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    add-int/2addr v0, v2

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2525
    :cond_16f
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_170

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_170

    .line 2526
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_170

    .line 2528
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    int-to-double v2, v8

    cmpg-double v4, v0, v2

    if-gez v4, :cond_170

    .line 2530
    iget v4, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    int-to-double v4, v4

    sub-double/2addr v2, v0

    add-double/2addr v4, v2

    double-to-int v0, v4

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    .line 2534
    :cond_170
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_17d

    .line 2535
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_17d

    const v1, 0x7fffffff

    const/4 v2, 0x0

    :goto_b3
    if-ge v2, v0, :cond_171

    int-to-float v1, v1

    .line 2539
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

    goto :goto_b3

    .line 2541
    :cond_171
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    add-int/2addr v0, v1

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    goto/16 :goto_b7

    .line 2545
    :cond_172
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_176

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_176

    .line 2546
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v0

    .line 2547
    iget-boolean v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v1, :cond_173

    .line 2548
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-float v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2550
    :cond_173
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_175

    .line 2551
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    .line 2552
    iget-boolean v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v3, :cond_174

    .line 2553
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v3, v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 2557
    :cond_174
    iget v3, v7, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    int-to-double v4, v3

    cmpg-double v4, v1, v4

    if-gez v4, :cond_175

    .line 2558
    iget v4, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-double v4, v4

    int-to-double v10, v3

    sub-double/2addr v10, v1

    sub-double/2addr v4, v10

    double-to-int v1, v4

    iput v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    .line 2562
    :cond_175
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    .line 2565
    :cond_176
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_178

    .line 2566
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_178

    const/high16 v1, 0x4f000000

    const/4 v2, 0x0

    :goto_b4
    if-ge v2, v0, :cond_177

    .line 2570
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_b4

    .line 2572
    :cond_177
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    .line 2575
    :cond_178
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_17a

    .line 2576
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_17a

    const/high16 v1, 0x4f000000

    const/4 v2, 0x0

    :goto_b5
    if-ge v2, v0, :cond_179

    .line 2580
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_b5

    .line 2582
    :cond_179
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    .line 2585
    :cond_17a
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_17c

    .line 2586
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_17c

    const/high16 v1, 0x4f000000

    const/4 v2, 0x0

    :goto_b6
    if-ge v2, v0, :cond_17b

    .line 2590
    iget-object v3, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_b6

    .line 2592
    :cond_17b
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    .line 2595
    :cond_17c
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_17d

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_17d

    .line 2596
    iget v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    int-to-float v0, v0

    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    .line 2599
    :cond_17d
    :goto_b7
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_180

    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    if-ltz v1, :cond_180

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_180

    if-ltz v9, :cond_17e

    add-int/lit8 v6, v9, 0x1

    .line 2601
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v6, v0, :cond_17e

    .line 2602
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 2603
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v6}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v1

    goto :goto_b8

    .line 2605
    :cond_17e
    iget-object v0, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 2606
    iget-object v1, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v1

    :goto_b8
    cmpg-float v2, v0, v1

    if-gez v2, :cond_17f

    .line 2609
    iget v1, v7, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, v7, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableLeft:I

    goto :goto_b9

    .line 2611
    :cond_17f
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

    .line 2614
    :cond_180
    :goto_b9
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

    .line 333
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->computeHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 334
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 5329
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

    .line 5330
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->checkOnTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 5332
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawAvatarOverlays(Landroid/graphics/Canvas;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4353
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->premiumBlockedT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->premiumBlocked:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    const/4 v5, 0x0

    const/16 v6, 0xa

    if-lez v4, :cond_2

    .line 4355
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v3

    const/16 v4, 0x12

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v3, v7

    .line 4356
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v7, v4

    .line 4358
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4359
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    const v4, 0x413547ae    # 11.33f

    .line 4360
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v3, v4, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4361
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    if-nez v4, :cond_0

    .line 4362
    new-instance v4, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient2:I

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    iget-object v14, v0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;-><init>(IIIIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    .line 4364
    :cond_0
    iget-object v15, v0, Lorg/telegram/ui/Cells/DialogCell;->premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v7, v4

    float-to-int v4, v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v3, v8

    float-to-int v8, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v7

    float-to-int v9, v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v3

    float-to-int v10, v10

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v16, v4

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    invoke-virtual/range {v15 .. v21}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->gradientMatrix(IIIIFF)V

    .line 4365
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    iget-object v6, v6, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v3, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4366
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 4367
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_mini_lock2:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 4368
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    const/4 v8, -0x1

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4370
    :cond_1
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 4371
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    const/high16 v9, 0x3f600000    # 0.875f

    mul-float/2addr v6, v9

    mul-float/2addr v6, v2

    sub-float v6, v7, v6

    float-to-int v6, v6

    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 4372
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v8

    mul-float/2addr v10, v9

    mul-float/2addr v10, v2

    sub-float v10, v3, v10

    float-to-int v10, v10

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 4373
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v8

    mul-float/2addr v11, v9

    mul-float/2addr v11, v2

    add-float/2addr v7, v11

    float-to-int v7, v7

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 4374
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v8

    mul-float/2addr v11, v9

    mul-float/2addr v11, v2

    add-float/2addr v3, v11

    float-to-int v3, v3

    .line 4370
    invoke-virtual {v4, v6, v10, v7, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4376
    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4377
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4378
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return v5

    .line 4381
    :cond_2
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v2, :cond_41

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v2, :cond_41

    .line 4382
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    const/4 v4, 0x1

    if-lez v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isOnline()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->hasCall:Z

    if-nez v2, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v5

    :goto_0
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->showTtl:Z

    .line 4383
    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    const/16 v9, 0x9

    if-eqz v7, :cond_f

    if-nez v2, :cond_4

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_f

    .line 4384
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TimerDrawable;->getTime()I

    move-result v2

    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    if-eq v2, v7, :cond_6

    if-lez v7, :cond_6

    .line 4385
    :cond_5
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    invoke-static {v2}, Lorg/telegram/ui/Components/TimerDrawable;->getTtlIconForDialogs(I)Lorg/telegram/ui/Components/TimerDrawable;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    .line 4387
    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_7

    .line 4388
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    .line 4389
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint2:Landroid/graphics/Paint;

    const/high16 v7, 0x32000000

    .line 4390
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 4392
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v2, v7

    float-to-int v2, v2

    .line 4394
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_8

    .line 4395
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v7, v7, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v7, v10

    goto :goto_1

    .line 4397
    :cond_8
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v7, v7, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v7, v10

    :goto_1
    float-to-int v7, v7

    .line 4399
    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    const/16 v11, 0x16

    .line 4400
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    .line 4399
    invoke-virtual {v10, v5, v5, v12, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4403
    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/TimerDrawable;->setTime(I)V

    .line 4404
    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->updateThumbShaderMatrix()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 4405
    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v11, v10, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    if-eqz v11, :cond_9

    .line 4406
    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    .line 4407
    :cond_9
    iget-object v10, v10, Lorg/telegram/messenger/ImageReceiver;->staticThumbShader:Landroid/graphics/BitmapShader;

    if-eqz v10, :cond_d

    .line 4408
    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    .line 4411
    :cond_a
    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 4412
    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_b

    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_b

    .line 4413
    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getDominantColor(Landroid/graphics/Bitmap;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 4414
    :cond_b
    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    instance-of v10, v10, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    if-eqz v10, :cond_c

    .line 4415
    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    .line 4416
    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    iget-object v10, v10, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/GradientTools;->getAverageColor()I

    move-result v10

    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 4418
    :cond_c
    iget-object v10, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor2()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 4421
    :cond_d
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4422
    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v11, v8, v11

    mul-float/2addr v10, v11

    .line 4423
    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v11, :cond_e

    .line 4424
    invoke-virtual {v11}, Lorg/telegram/ui/Components/CheckBox2;->getProgress()F

    move-result v11

    sub-float v11, v8, v11

    mul-float/2addr v10, v11

    :cond_e
    int-to-float v7, v7

    int-to-float v2, v2

    .line 4426
    invoke-virtual {v1, v10, v10, v7, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/high16 v10, 0x41300000    # 11.0f

    .line 4427
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v2, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4428
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->timerPaint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v2, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4429
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4430
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    sub-float/2addr v7, v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    sub-float/2addr v2, v10

    invoke-virtual {v1, v7, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4431
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/TimerDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4432
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4433
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4435
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    const v10, 0x3dda740e

    const/4 v11, 0x6

    const/4 v12, 0x3

    const/4 v13, 0x5

    const/4 v14, 0x4

    if-eqz v2, :cond_1d

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->isSupportUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v2, :cond_1d

    .line 4436
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isOnline()Z

    move-result v2

    .line 4437
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->wasDrawnOnline:Z

    if-nez v2, :cond_10

    .line 4438
    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    cmpl-float v9, v9, v3

    if-eqz v9, :cond_1c

    .line 4439
    :cond_10
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v9, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iget-boolean v15, v0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v15, :cond_12

    sget-boolean v15, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v15, :cond_11

    goto :goto_3

    :cond_11
    const/16 v7, 0x8

    goto :goto_4

    :cond_12
    :goto_3
    move v7, v11

    :goto_4
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v9, v7

    float-to-int v7, v9

    .line 4441
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_15

    .line 4442
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v9, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    iget-boolean v15, v0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v15, :cond_14

    sget-boolean v15, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v15, :cond_13

    goto :goto_5

    :cond_13
    move v6, v11

    :cond_14
    :goto_5
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v9, v6

    goto :goto_7

    .line 4444
    :cond_15
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v9, v9, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-boolean v15, v0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v15, :cond_17

    sget-boolean v15, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v15, :cond_16

    goto :goto_6

    :cond_16
    move v6, v11

    :cond_17
    :goto_6
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v9, v6

    :goto_7
    float-to-int v6, v9

    .line 4447
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v15, v0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v11, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 4449
    iget-boolean v9, v0, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v9, :cond_18

    .line 4450
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

    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    mul-float/2addr v15, v5

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v11, v15, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_18
    int-to-float v5, v6

    int-to-float v9, v7

    const/4 v11, 0x7

    .line 4452
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    iget v15, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    mul-float/2addr v11, v15

    sget-object v15, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v9, v11, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4453
    :goto_8
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chats_onlineCircle:I

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v9, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 4455
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v5, :cond_19

    .line 4456
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    mul-float/2addr v7, v9

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_9

    :cond_19
    int-to-float v5, v6

    int-to-float v6, v7

    .line 4458
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    mul-float/2addr v7, v9

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_9
    if-eqz v2, :cond_1a

    .line 4460
    iget v1, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    cmpg-float v2, v1, v8

    if-gez v2, :cond_1c

    add-float/2addr v1, v10

    .line 4461
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    cmpl-float v1, v1, v8

    if-lez v1, :cond_1b

    .line 4463
    iput v8, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    goto :goto_a

    .line 4468
    :cond_1a
    iget v1, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    cmpl-float v2, v1, v3

    if-lez v2, :cond_1c

    sub-float/2addr v1, v10

    .line 4469
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1b

    .line 4471
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->onlineProgress:F

    :cond_1b
    :goto_a
    move v5, v4

    goto/16 :goto_1c

    :cond_1c
    const/4 v5, 0x0

    goto/16 :goto_1c

    .line 4477
    :cond_1d
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_3c

    .line 4478
    iget-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$Chat;->call_active:Z

    if-eqz v5, :cond_1e

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->call_not_empty:Z

    if-eqz v2, :cond_1e

    move v2, v4

    goto :goto_b

    :cond_1e
    const/4 v2, 0x0

    :goto_b
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->hasCall:Z

    if-nez v2, :cond_1f

    .line 4479
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3c

    :cond_1f
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpg-float v2, v2, v8

    if-gez v2, :cond_3c

    .line 4480
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CheckBox2;->getProgress()F

    move-result v2

    sub-float v2, v8, v2

    goto :goto_c

    :cond_20
    move v2, v8

    .line 4481
    :goto_c
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget-boolean v15, v0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v15, :cond_22

    sget-boolean v15, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v15, :cond_21

    goto :goto_d

    :cond_21
    const/16 v15, 0x8

    goto :goto_e

    :cond_22
    :goto_d
    move v15, v11

    :goto_e
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v5, v15

    float-to-int v5, v5

    .line 4483
    sget-boolean v15, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v15, :cond_25

    .line 4484
    iget-object v15, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v15, v15, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->left:F

    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v6, :cond_24

    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v6, :cond_23

    goto :goto_f

    :cond_23
    move v6, v11

    goto :goto_10

    :cond_24
    :goto_f
    const/16 v6, 0xa

    :goto_10
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v15, v6

    float-to-int v6, v15

    goto :goto_13

    .line 4486
    :cond_25
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-boolean v15, v0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v15, :cond_27

    sget-boolean v15, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v15, :cond_26

    goto :goto_11

    :cond_26
    move/from16 v17, v11

    goto :goto_12

    :cond_27
    :goto_11
    const/16 v17, 0xa

    :goto_12
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v6, v15

    float-to-int v6, v6

    .line 4489
    :goto_13
    iget-boolean v15, v0, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v15, :cond_29

    .line 4490
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 4491
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_28

    .line 4492
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v6, v15

    goto :goto_14

    .line 4494
    :cond_28
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v6, v15

    :goto_14
    float-to-int v6, v6

    .line 4499
    :cond_29
    iget v15, v0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v15, v15, v3

    if-eqz v15, :cond_2a

    .line 4500
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4501
    iget v15, v0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v15, v8, v15

    int-to-float v10, v6

    int-to-float v7, v5

    .line 4502
    invoke-virtual {v1, v15, v15, v10, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4504
    :cond_2a
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v15, v0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v15

    invoke-virtual {v7, v15}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v7, v6

    int-to-float v5, v5

    const/16 v15, 0xb

    .line 4505
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    iget v3, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    mul-float/2addr v15, v3

    mul-float/2addr v15, v2

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v5, v15, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4506
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_chats_onlineCircle:I

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v15, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 4507
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    mul-float/2addr v3, v8

    mul-float/2addr v3, v2

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v5, v3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4508
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    const v3, 0x181e0

    .line 4512
    invoke-static {v3}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_2b

    const v8, 0x3f266666    # 0.65f

    .line 4513
    iput v8, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    .line 4515
    :cond_2b
    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->progressStage:I

    const/4 v9, 0x2

    if-nez v8, :cond_2c

    .line 4516
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float/2addr v10, v11

    add-float/2addr v8, v10

    .line 4517
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    :goto_15
    mul-float/2addr v9, v11

    sub-float/2addr v10, v9

    goto/16 :goto_19

    :cond_2c
    if-ne v8, v4, :cond_2d

    .line 4519
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    .line 4520
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    :goto_16
    mul-float/2addr v10, v11

    add-float/2addr v10, v9

    goto/16 :goto_19

    :cond_2d
    if-ne v8, v9, :cond_2e

    .line 4522
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    .line 4523
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    :goto_17
    mul-float/2addr v10, v11

    sub-float v10, v9, v10

    goto/16 :goto_19

    :cond_2e
    if-ne v8, v12, :cond_2f

    .line 4525
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float/2addr v10, v11

    sub-float/2addr v8, v10

    .line 4526
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    :goto_18
    mul-float/2addr v9, v11

    add-float/2addr v10, v9

    goto/16 :goto_19

    :cond_2f
    if-ne v8, v14, :cond_30

    .line 4528
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float/2addr v10, v11

    add-float/2addr v8, v10

    .line 4529
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    goto/16 :goto_15

    :cond_30
    if-ne v8, v13, :cond_31

    .line 4531
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    .line 4532
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    goto :goto_16

    :cond_31
    if-ne v8, v11, :cond_32

    .line 4534
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    .line 4535
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    goto :goto_17

    .line 4537
    :cond_32
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    mul-float/2addr v10, v11

    sub-float/2addr v8, v10

    .line 4538
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    goto :goto_18

    .line 4541
    :goto_19
    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v9, v9, v11

    if-ltz v9, :cond_33

    cmpg-float v9, v2, v11

    if-gez v9, :cond_34

    .line 4542
    :cond_33
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4543
    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    mul-float v11, v9, v2

    mul-float/2addr v9, v2

    invoke-virtual {v1, v11, v9, v7, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4545
    :cond_34
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int v9, v6, v9

    int-to-float v9, v9

    sub-float v11, v5, v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v6

    int-to-float v14, v14

    add-float/2addr v8, v5

    invoke-virtual {v7, v9, v11, v14, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4546
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v8, v9, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4548
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int v8, v6, v8

    int-to-float v8, v8

    sub-float v9, v5, v10

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int v11, v6, v11

    int-to-float v11, v11

    add-float/2addr v5, v10

    invoke-virtual {v7, v8, v9, v11, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4549
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v8, v10, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4551
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v8, v6

    int-to-float v8, v8

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v6, v10

    int-to-float v6, v6

    invoke-virtual {v7, v8, v9, v6, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4552
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4553
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_35

    cmpg-float v2, v2, v6

    if-gez v2, :cond_36

    .line 4554
    :cond_35
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4557
    :cond_36
    invoke-static {v3}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 4558
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    const v3, 0x3d23d70a    # 0.04f

    add-float/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_37

    const/4 v2, 0x0

    .line 4560
    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->innerProgress:F

    .line 4561
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->progressStage:I

    add-int/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->progressStage:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_37

    const/4 v2, 0x0

    .line 4563
    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->progressStage:I

    :cond_37
    move v5, v4

    goto :goto_1a

    :cond_38
    const/4 v2, 0x0

    move v5, v2

    .line 4569
    :goto_1a
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->hasCall:Z

    if-eqz v2, :cond_3a

    .line 4570
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v6, v2, v3

    if-gez v6, :cond_39

    const v6, 0x3dda740e

    add-float/2addr v2, v6

    .line 4571
    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_39

    .line 4573
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    :cond_39
    const/4 v3, 0x0

    goto :goto_1b

    :cond_3a
    const v6, 0x3dda740e

    .line 4577
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    const/4 v3, 0x0

    cmpl-float v7, v2, v3

    if-lez v7, :cond_3b

    sub-float/2addr v2, v6

    .line 4578
    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3b

    .line 4580
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->chatCallProgress:F

    .line 4586
    :cond_3b
    :goto_1b
    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3d

    .line 4587
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1c

    :cond_3c
    const/4 v2, 0x0

    move v5, v2

    .line 4592
    :cond_3d
    :goto_1c
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell;->showTtl:Z

    if-eqz v1, :cond_3f

    .line 4593
    iget v1, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v2

    if-gez v3, :cond_3e

    const v2, 0x3dda740e

    add-float/2addr v1, v2

    .line 4594
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    move v5, v4

    :cond_3e
    const/4 v3, 0x0

    goto :goto_1d

    :cond_3f
    const v2, 0x3dda740e

    .line 4598
    iget v1, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    const/4 v3, 0x0

    cmpl-float v6, v1, v3

    if-lez v6, :cond_40

    sub-float/2addr v1, v2

    .line 4599
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    move v5, v4

    .line 4603
    :cond_40
    :goto_1d
    iget v1, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlProgress:F

    goto :goto_1e

    :cond_41
    move v2, v5

    move v5, v2

    :goto_1e
    return v5
.end method

.method protected drawLock2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClipProgress()F
    .locals 1

    .line 5355
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    return v0
.end method

.method public getCurrentDialogFolderId()I
    .locals 1

    .line 5371
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    return v0
.end method

.method public getDialogId()J
    .locals 2

    .line 777
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    return-wide v0
.end method

.method public getHasUnread()Z
    .locals 1

    .line 940
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

    .line 944
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    return v0
.end method

.method public getIsPinned()Z
    .locals 1

    .line 948
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

    .line 5379
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .line 781
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->messageId:I

    return v0
.end method

.method public getMessageNameString()Ljava/lang/String;
    .locals 8

    .line 5111
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 5117
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v2

    .line 5118
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSavedDialog:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v0, :cond_1

    .line 5119
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 5121
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    .line 5124
    :cond_1
    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5125
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

    .line 5127
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 5130
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5131
    sget v0, Lorg/telegram/messenger/R$string;->FromYou:I

    const-string v1, "FromYou"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5132
    :cond_3
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->isSavedDialog:Z

    const-string v3, ""

    const-string v4, "\n"

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v2, :cond_4

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

    if-eqz v2, :cond_4

    .line 5133
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5134
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;

    if-eqz v2, :cond_5

    return-object v2

    :cond_5
    if-eqz v1, :cond_9

    .line 5137
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_6

    goto :goto_1

    .line 5144
    :cond_6
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5138
    :cond_7
    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5139
    sget v0, Lorg/telegram/messenger/R$string;->HiddenName:I

    const-string v1, "HiddenName"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5141
    :cond_8
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    if-eqz v0, :cond_a

    .line 5146
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 5147
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    const-string v0, "DELETED"

    return-object v0
.end method

.method public getMessageStringFormatted(ILjava/lang/String;Ljava/lang/CharSequence;Z)Landroid/text/SpannableStringBuilder;
    .locals 11

    .line 5155
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->getCaptionMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 5156
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x1

    .line 5157
    iput-boolean v3, p0, Lorg/telegram/ui/Cells/DialogCell;->applyName:Z

    .line 5158
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5159
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/DialogCell;->formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    goto/16 :goto_b

    .line 5160
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    .line 5162
    iget-object v0, p2, Lorg/telegram/messenger/MessageObject;->messageTextShort:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v1, :cond_2

    goto :goto_1

    .line 5165
    :cond_2
    iget-object v0, p2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 5167
    :cond_3
    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->isTopicActionMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 5168
    invoke-direct {p0, p1, v0, p3}, Lorg/telegram/ui/Cells/DialogCell;->formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 5169
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->topicIconDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object p2, p2, v6

    instance-of p2, p2, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    if-eqz p2, :cond_5

    .line 5170
    iget p2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    neg-long v0, v0

    iget p3, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {p3, v2, v3}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide v2

    invoke-virtual {p2, v0, v1, v2, v3}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 5172
    iget-object p3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object p3, p3, Lorg/telegram/messenger/MessageObject;->topicIconDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object p3, p3, v6

    check-cast p3, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_color:I

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;->setColor(I)V

    goto :goto_2

    .line 5176
    :cond_4
    iput-boolean v6, p0, Lorg/telegram/ui/Cells/DialogCell;->applyName:Z

    .line 5177
    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    :cond_5
    :goto_2
    if-eqz p4, :cond_2e

    .line 5180
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DialogCell;->applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto/16 :goto_b

    :cond_6
    const-string v5, ": "

    const/16 v7, 0x82

    const/16 v8, 0x108

    const/16 v9, 0x96

    if-eqz v0, :cond_14

    .line 5182
    iget-object v10, v0, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v10, :cond_14

    .line 5184
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5186
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->needEmoji:Z

    if-nez v1, :cond_7

    const-string v1, ""

    goto :goto_3

    .line 5188
    :cond_7
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "\ud83d\udcf9 "

    goto :goto_3

    .line 5190
    :cond_8
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "\ud83c\udfa4 "

    goto :goto_3

    .line 5192
    :cond_9
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "\ud83c\udfa7 "

    goto :goto_3

    .line 5194
    :cond_a
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "\ud83d\uddbc "

    goto :goto_3

    :cond_b
    const-string v1, "\ud83d\udcce "

    .line 5199
    :goto_3
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 5200
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlight:Ljava/lang/CharSequence;

    .line 5201
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    iget p4, p0, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 p4, p4, 0x17

    add-int/lit8 p4, p4, 0x18

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    sub-int/2addr p2, p4

    .line 5202
    iget-boolean p4, p0, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    if-eqz p4, :cond_d

    .line 5203
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_c

    int-to-float p2, p2

    .line 5204
    iget-object p4, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p3

    sub-float/2addr p2, p3

    float-to-int p2, p2

    :cond_c
    int-to-float p2, p2

    .line 5206
    iget-object p3, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p3, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p3

    sub-float/2addr p2, p3

    float-to-int p2, p2

    :cond_d
    if-lez p2, :cond_e

    .line 5209
    iget-object p3, v0, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object p4, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-static {p1, p3, p2, p4, v7}, Lorg/telegram/messenger/AndroidUtilities;->ellipsizeCenterEnd(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5211
    :cond_e
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    goto/16 :goto_b

    .line 5213
    :cond_f
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v9, :cond_10

    .line 5214
    invoke-interface {p2, v6, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 5216
    :cond_10
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5218
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->spoilLoginCode()V

    .line 5220
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-static {v4, p2, v3, v8}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/text/Spannable;I)V

    .line 5221
    iget-object p2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p2, :cond_12

    .line 5222
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    if-nez v0, :cond_11

    goto :goto_4

    :cond_11
    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    :goto_4
    invoke-static {p2, v3, v2}, Lorg/telegram/messenger/MediaDataController;->addAnimatedEmojiSpans(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 5224
    :cond_12
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    if-eqz p4, :cond_13

    .line 5226
    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/DialogCell;->applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 5228
    :cond_13
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/DialogCell;->formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    goto/16 :goto_b

    .line 5230
    :cond_14
    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/16 v4, 0xa

    if-eqz v0, :cond_22

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result p2

    if-nez p2, :cond_22

    .line 5231
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object p2, p2, v0

    iput-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    .line 5233
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_attachMessage:I

    .line 5234
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    const/4 v7, 0x2

    const/16 v8, 0x12

    if-eqz v5, :cond_16

    .line 5235
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 5236
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_15

    new-array v0, v3, [Ljava/lang/Object;

    .line 5237
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    aput-object v1, v0, v6

    const-string v1, "\ud83d\udcca \u2068%s\u2069"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_15
    new-array v0, v3, [Ljava/lang/Object;

    .line 5239
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    aput-object v1, v0, v6

    const-string v1, "\ud83d\udcca %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 5241
    :cond_16
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v5, :cond_18

    .line 5242
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_17

    new-array v0, v3, [Ljava/lang/Object;

    .line 5243
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    aput-object v1, v0, v6

    const-string v1, "\ud83c\udfae \u2068%s\u2069"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_17
    new-array v0, v3, [Ljava/lang/Object;

    .line 5245
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    aput-object v1, v0, v6

    const-string v1, "\ud83c\udfae %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 5247
    :cond_18
    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v5, :cond_19

    .line 5248
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    goto/16 :goto_8

    .line 5249
    :cond_19
    iget v2, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v5, 0xe

    if-ne v2, v5, :cond_1b

    .line 5250
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v8, :cond_1a

    new-array v1, v7, [Ljava/lang/Object;

    .line 5251
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

    .line 5253
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

    .line 5255
    :cond_1b
    iget p2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-le p2, v3, :cond_1f

    .line 5256
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    if-eqz p2, :cond_1d

    .line 5257
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

    .line 5259
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

    .line 5261
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionMessage:I

    goto :goto_8

    .line 5263
    :cond_1f
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5264
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionMessage:I

    :goto_8
    const/16 v1, 0x20

    .line 5266
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_20

    .line 5269
    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/DialogCell;->applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5271
    :cond_20
    invoke-direct {p0, p1, v0, p3}, Lorg/telegram/ui/Cells/DialogCell;->formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 5272
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result p4

    if-nez p4, :cond_2e

    .line 5274
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

    .line 5276
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 5279
    :cond_22
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 5281
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result p2

    if-eqz p2, :cond_26

    .line 5282
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageTrimmedToHighlight:Ljava/lang/CharSequence;

    if-eqz p2, :cond_23

    move-object v0, p2

    .line 5285
    :cond_23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v1, v1, 0x17

    add-int/2addr v1, v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr p2, v1

    .line 5286
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->hasNameInMessage:Z

    if-eqz v1, :cond_25

    .line 5287
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    int-to-float p2, p2

    .line 5288
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr p2, v1

    float-to-int p2, p2

    :cond_24
    int-to-float p2, p2

    .line 5290
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr p2, v1

    float-to-int p2, p2

    :cond_25
    if-lez p2, :cond_28

    .line 5293
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

    .line 5296
    :cond_26
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-le p2, v9, :cond_27

    .line 5297
    invoke-interface {v0, v6, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5299
    :cond_27
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5301
    :cond_28
    :goto_9
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5302
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_29

    .line 5303
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->spoilLoginCode()V

    .line 5305
    :cond_29
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-static {v0, p2, v8}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Lorg/telegram/messenger/MessageObject;Landroid/text/Spannable;I)V

    .line 5306
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_2b

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_2b

    .line 5307
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

    .line 5310
    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/DialogCell;->applyThumbs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 5312
    :cond_2c
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/DialogCell;->formatInternal(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    goto :goto_b

    .line 5314
    :cond_2d
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    :cond_2e
    :goto_b
    return-object p1
.end method

.method public getTranslationX()F
    .locals 1

    .line 3320
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

    .line 5531
    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->animationInProgress:Z

    if-eqz v0, :cond_0

    return-void

    .line 5534
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 1

    .line 5539
    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->animationInProgress:Z

    if-eqz v0, :cond_0

    return-void

    .line 5542
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 4850
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4853
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 4851
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    :goto_1
    return-void
.end method

.method public isBlocked()Z
    .locals 1

    .line 478
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->premiumBlocked:Z

    return v0
.end method

.method public isDialogFolder()Z
    .locals 1

    .line 5375
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

    .line 2863
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

    .line 2711
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

    .line 278
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->moving:Z

    return v0
.end method

.method public isPointInsideAvatar(FF)Z
    .locals 3

    .line 2783
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x3c

    if-nez p2, :cond_1

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    .line 2784
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

    .line 2786
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

    .line 823
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 824
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    const/4 v0, 0x0

    move v1, v0

    .line 825
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 826
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 828
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->resetPinnedArchiveState()V

    .line 829
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/text/Layout;

    iget-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    aput-object v4, v3, v0

    invoke-static {v0, p0, v1, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 830
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v3, v2, [Landroid/text/Layout;

    iget-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    aput-object v4, v3, v0

    invoke-static {v0, p0, v1, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 831
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v3, v2, [Landroid/text/Layout;

    iget-object v4, p0, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    aput-object v4, v3, v0

    invoke-static {v0, p0, v1, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 832
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v2, v2, [Landroid/text/Layout;

    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    aput-object v3, v2, v0

    invoke-static {v0, p0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 833
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    .line 834
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .line 790
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 791
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    .line 792
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawRevealBackground:Z

    const/4 v1, 0x0

    .line 793
    iput v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    .line 794
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->attachedToWindow:Z

    .line 795
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

    .line 796
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    move v2, v0

    .line 797
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 798
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 800
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 801
    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 802
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 803
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 804
    iput-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 805
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->translationAnimationStarted:Z

    .line 807
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    if-eqz v0, :cond_3

    .line 808
    iget-wide v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;->remove(J)V

    .line 810
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_4

    .line 811
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    .line 813
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 814
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 815
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 816
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 817
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->onDetachFromWindow()V

    .line 818
    iput-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 41

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    .line 3358
    iget-wide v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    if-nez v0, :cond_0

    return-void

    .line 3361
    :cond_0
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->visibleOnScreen:Z

    if-nez v0, :cond_1

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawingForBlur:Z

    if-nez v0, :cond_1

    return-void

    .line 3367
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

    .line 3368
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawingForBlur:Z

    if-nez v0, :cond_3

    .line 3369
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3370
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOffset:F

    sub-float/2addr v0, v1

    invoke-virtual {v8, v13, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3371
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v8, v15, v15, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3372
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/PullForegroundDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 3373
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void

    .line 3378
    :cond_4
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    cmpl-float v0, v0, v13

    const/16 v12, 0x18

    if-eqz v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v0, v12, :cond_5

    .line 3379
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3380
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

    .line 3384
    :cond_5
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, v0, v13

    const/high16 v20, 0x40000000    # 2.0f

    const/16 v21, 0xa

    const/16 v22, 0x10

    const/4 v11, 0x3

    const/16 v10, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v0, :cond_8

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_6

    goto :goto_0

    .line 3560
    :cond_6
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_7

    .line 3561
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 3562
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 3563
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x0

    .line 3564
    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3565
    iput-boolean v15, v9, Lorg/telegram/ui/Cells/DialogCell;->translationAnimationStarted:Z

    :cond_7
    move v14, v6

    goto/16 :goto_c

    .line 3385
    :cond_8
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3386
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v8, v13, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3390
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeAction:Z

    if-eqz v0, :cond_9

    .line 3391
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionBackgroundColorKey:I

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3392
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionRevealBackgroundColorKey:I

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 3393
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionStringKey:Ljava/lang/String;

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionStringId:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3394
    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->overrideSwipeActionDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    :goto_1
    move v4, v1

    move v1, v3

    move-object v3, v2

    goto/16 :goto_4

    .line 3395
    :cond_9
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_b

    .line 3396
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    if-eqz v0, :cond_a

    .line 3397
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3398
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 3399
    sget v3, Lorg/telegram/messenger/R$string;->UnhideFromTop:I

    const-string v2, "UnhideFromTop"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3400
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unpinArchiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto :goto_1

    .line 3402
    :cond_a
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3403
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 3404
    sget v3, Lorg/telegram/messenger/R$string;->HideOnTop:I

    const-string v2, "HideOnTop"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3405
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinArchiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto :goto_1

    .line 3408
    :cond_b
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->promoDialog:Z

    if-eqz v0, :cond_c

    .line 3409
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3410
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 3411
    sget v3, Lorg/telegram/messenger/R$string;->PsaHide:I

    const-string v2, "PsaHide"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3412
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto :goto_1

    .line 3413
    :cond_c
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    if-nez v0, :cond_15

    .line 3414
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3415
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 3416
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v2

    if-ne v2, v11, :cond_e

    .line 3417
    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-eqz v2, :cond_d

    .line 3418
    sget v3, Lorg/telegram/messenger/R$string;->SwipeUnmute:I

    const-string v2, "SwipeUnmute"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3419
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeUnmuteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3421
    :cond_d
    sget v3, Lorg/telegram/messenger/R$string;->SwipeMute:I

    const-string v2, "SwipeMute"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3422
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeMuteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3424
    :cond_e
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v2

    if-ne v2, v7, :cond_f

    .line 3425
    sget v3, Lorg/telegram/messenger/R$string;->SwipeDeleteChat:I

    const-string v0, "SwipeDeleteChat"

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3426
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSwipeRemove:I

    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3427
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeDeleteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3428
    :cond_f
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v2

    if-ne v2, v14, :cond_12

    .line 3429
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-gtz v2, :cond_11

    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-eqz v2, :cond_10

    goto :goto_2

    .line 3433
    :cond_10
    sget v3, Lorg/telegram/messenger/R$string;->SwipeMarkAsUnread:I

    const-string v2, "SwipeMarkAsUnread"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3434
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeUnreadDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3430
    :cond_11
    :goto_2
    sget v3, Lorg/telegram/messenger/R$string;->SwipeMarkAsRead:I

    const-string v2, "SwipeMarkAsRead"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3431
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeReadDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3436
    :cond_12
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v2

    if-nez v2, :cond_14

    .line 3437
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3438
    sget v3, Lorg/telegram/messenger/R$string;->SwipeUnpin:I

    const-string v2, "SwipeUnpin"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3439
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipeUnpinDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3441
    :cond_13
    sget v3, Lorg/telegram/messenger/R$string;->SwipePin:I

    const-string v2, "SwipePin"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3442
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_swipePinDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3445
    :cond_14
    sget v3, Lorg/telegram/messenger/R$string;->Archive:I

    const-string v2, "Archive"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3446
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3449
    :cond_15
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 3450
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 3451
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    if-ne v2, v6, :cond_16

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

    .line 3452
    :goto_3
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unarchiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_1

    .line 3456
    :goto_4
    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeCanceled:Z

    if-eqz v2, :cond_17

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->lastDrawTranslationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v2, :cond_17

    .line 3457
    iput-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3458
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->lastDrawSwipeMessageStringId:I

    goto :goto_5

    .line 3460
    :cond_17
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->lastDrawTranslationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3461
    iput v1, v9, Lorg/telegram/ui/Cells/DialogCell;->lastDrawSwipeMessageStringId:I

    :goto_5
    move v2, v1

    .line 3464
    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->translationAnimationStarted:Z

    const/16 v16, 0x2b

    if-nez v1, :cond_18

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v1, v1, v6

    if-lez v1, :cond_18

    .line 3465
    iput-boolean v14, v9, Lorg/telegram/ui/Cells/DialogCell;->translationAnimationStarted:Z

    .line 3466
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v13}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 3467
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3468
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 3471
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v6, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    add-float/2addr v6, v1

    .line 3472
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpg-float v1, v1, v5

    if-gez v1, :cond_1a

    .line 3473
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3474
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v6, v0

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    sget-object v23, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    move/from16 v24, v1

    move-object/from16 v1, p1

    move v11, v2

    move v2, v0

    move-object v0, v3

    move/from16 v3, v18

    move v12, v4

    move/from16 v4, v24

    const/high16 v7, 0x3f800000    # 1.0f

    move v7, v6

    const/4 v14, 0x2

    move-object/from16 v6, v23

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3475
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpl-float v1, v1, v13

    if-nez v1, :cond_1b

    .line 3476
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawableRecolored:Z

    if-eqz v1, :cond_19

    .line 3477
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v2

    const-string v3, "Arrow.**"

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3478
    sput-boolean v15, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawableRecolored:Z

    .line 3480
    :cond_19
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawableRecolored:Z

    if-eqz v1, :cond_1b

    .line 3481
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 3482
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v3

    const-string v4, "Line 1.**"

    invoke-virtual {v1, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3483
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v3

    const-string v4, "Line 2.**"

    invoke-virtual {v1, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3484
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v2

    const-string v3, "Line 3.**"

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3485
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    .line 3486
    sput-boolean v15, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawableRecolored:Z

    goto :goto_6

    :cond_1a
    move v11, v2

    move-object v0, v3

    move v12, v4

    move v7, v6

    const/4 v14, 0x2

    .line 3490
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

    div-int/2addr v2, v14

    sub-int/2addr v1, v2

    .line 3491
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    const/16 v3, 0x36

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/2addr v2, v14

    .line 3493
    iget-boolean v3, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v3, :cond_1c

    .line 3494
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 3495
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v9, v2}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result v2

    .line 3498
    :cond_1c
    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result v3

    div-int/2addr v3, v14

    add-int/2addr v3, v1

    .line 3499
    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicHeight()I

    move-result v4

    div-int/2addr v4, v14

    add-int/2addr v4, v2

    .line 3501
    iget v5, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpl-float v5, v5, v13

    if-lez v5, :cond_1e

    .line 3502
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3503
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float v6, v7, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v6, v13, v5, v10}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 3504
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setColor(I)V

    mul-int v5, v3, v3

    .line 3506
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

    .line 3507
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    iget v10, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    invoke-virtual {v6, v10}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v6

    mul-float/2addr v5, v6

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3508
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3510
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawableRecolored:Z

    if-nez v3, :cond_1d

    .line 3511
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v4

    const-string v5, "Arrow.**"

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    const/4 v3, 0x1

    .line 3512
    sput-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveDrawableRecolored:Z

    .line 3514
    :cond_1d
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawableRecolored:Z

    if-nez v3, :cond_1e

    .line 3515
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 3516
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v5

    const-string v6, "Line 1.**"

    invoke-virtual {v3, v6, v5}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3517
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v5

    const-string v6, "Line 2.**"

    invoke-virtual {v3, v6, v5}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3518
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v4

    const-string v5, "Line 3.**"

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 3519
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    const/4 v3, 0x1

    .line 3520
    sput-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_hidePsaDrawableRecolored:Z

    .line 3524
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, v1

    int-to-float v4, v2

    .line 3525
    invoke-virtual {v8, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3526
    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    cmpl-float v4, v3, v13

    if-eqz v4, :cond_1f

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_1f

    .line 3527
    iget-object v5, v9, Lorg/telegram/ui/Cells/DialogCell;->interpolator:Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;->getInterpolation(F)F

    move-result v3

    add-float/2addr v3, v4

    .line 3528
    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result v4

    div-int/2addr v4, v14

    int-to-float v4, v4

    iget-object v5, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicHeight()I

    move-result v5

    div-int/2addr v5, v14

    int-to-float v5, v5

    invoke-virtual {v8, v3, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3530
    :cond_1f
    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v3, v15, v15}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3531
    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 3532
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3534
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v8, v7, v13, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 3536
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 3538
    iget v4, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextId:I

    if-ne v4, v11, :cond_20

    iget v4, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    if-eq v4, v5, :cond_23

    .line 3539
    :cond_20
    iput v11, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextId:I

    .line 3540
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    iput v4, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageWidth:I

    .line 3541
    new-instance v4, Landroid/text/StaticLayout;

    sget-object v25, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveTextPaint:Landroid/text/TextPaint;

    iget-boolean v5, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v5, :cond_21

    move/from16 v26, v3

    goto :goto_7

    :cond_21
    const/16 v5, 0x50

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    move/from16 v26, v5

    :goto_7
    sget-object v27, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v23, v4

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v30}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextLayout:Landroid/text/StaticLayout;

    .line 3543
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_23

    .line 3544
    new-instance v4, Landroid/text/StaticLayout;

    sget-object v25, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveTextPaintSmall:Landroid/text/TextPaint;

    iget-boolean v5, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v5, :cond_22

    goto :goto_8

    :cond_22
    const/16 v5, 0x52

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_8
    move/from16 v26, v3

    sget-object v27, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v23, v4

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v30}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextLayout:Landroid/text/StaticLayout;

    .line 3548
    :cond_23
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_26

    .line 3549
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3550
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    const/4 v3, 0x1

    const/4 v7, 0x4

    if-le v0, v3, :cond_24

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_9

    :cond_24
    move v0, v13

    .line 3552
    :goto_9
    iget-boolean v3, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v3, :cond_25

    .line 3553
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

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

    .line 3555
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

    div-float v3, v3, v20

    sub-float/2addr v1, v3

    const/16 v3, 0x26

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3556
    :goto_a
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->swipeMessageTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3557
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_b

    :cond_26
    const/4 v7, 0x4

    .line 3559
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3568
    :goto_c
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_27

    .line 3569
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3570
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    invoke-virtual {v8, v0, v13}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_27
    const/16 v1, 0x8

    .line 3573
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    mul-float/2addr v0, v1

    .line 3574
    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    if-eqz v1, :cond_28

    .line 3575
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

    .line 3576
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v13, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 3577
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_tabletSeletedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3580
    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3581
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOffset:F

    neg-float v1, v1

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    mul-float/2addr v1, v2

    invoke-virtual {v8, v13, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3582
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v1, :cond_2c

    if-ne v1, v14, :cond_29

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

    .line 3583
    :cond_2b
    :goto_d
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedOverlay:I

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v15, v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3584
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v5, v4, v3

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3585
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

    .line 3586
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v1

    if-nez v1, :cond_2d

    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawPinBackground:Z

    if-eqz v1, :cond_2e

    .line 3587
    :cond_2d
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedOverlay:I

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3588
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v3

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3589
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

    .line 3591
    :cond_2e
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3593
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->updateAnimationValues()V

    .line 3595
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_2f

    .line 3596
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3597
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    invoke-virtual {v8, v13, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3600
    :cond_2f
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v10

    if-eqz v2, :cond_c9

    cmpl-float v2, v1, v13

    const/high16 v23, 0x437f0000    # 255.0f

    if-eqz v2, :cond_31

    const v2, 0x3ecccccd    # 0.4f

    div-float/2addr v1, v2

    .line 3603
    invoke-static {v1, v10, v13}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    .line 3604
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v2

    if-lt v2, v14, :cond_30

    .line 3605
    invoke-static {}, Lorg/telegram/ui/RightSlidingDialogContainer;->getRightPaddingSize()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v3, v4

    sub-float v5, v10, v1

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v1, v10, v1

    mul-float v1, v1, v23

    float-to-int v6, v1

    const/16 v11, 0x1f

    move-object/from16 v1, p1

    move v12, v10

    move v10, v7

    move v7, v11

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v1

    const/16 v11, 0x8

    const/16 v17, 0x1

    goto :goto_f

    :cond_30
    move v12, v10

    move v10, v7

    .line 3607
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3608
    invoke-static {}, Lorg/telegram/ui/RightSlidingDialogContainer;->getRightPaddingSize()I

    move-result v3

    const/16 v17, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const/16 v11, 0x8

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v12, v1

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v8, v3, v13, v1, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    move v1, v2

    .line 3610
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

    move v7, v1

    goto :goto_10

    :cond_31
    move v12, v10

    const/16 v11, 0x8

    const/16 v17, 0x1

    move v10, v7

    const/4 v7, -0x1

    .line 3613
    :goto_10
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v1, v1, v13

    if-nez v1, :cond_32

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_3a

    .line 3614
    :cond_32
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3616
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3617
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

    .line 3618
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v13, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 3619
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3621
    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    if-eqz v1, :cond_33

    .line 3622
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_tabletSeletedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3625
    :cond_33
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v1, :cond_37

    if-ne v1, v14, :cond_34

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

    .line 3626
    :cond_36
    :goto_11
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedOverlay:I

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    invoke-static {v15, v2, v3, v12}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3627
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v5, v12, v3

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3628
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_12

    .line 3629
    :cond_37
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v1

    if-nez v1, :cond_38

    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawPinBackground:Z

    if-eqz v1, :cond_39

    .line 3630
    :cond_38
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedOverlay:I

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3631
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    sub-float v5, v12, v3

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3632
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3634
    :cond_39
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3637
    :cond_3a
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, v0, v13

    const v24, 0x3dda740e

    if-eqz v0, :cond_3b

    .line 3638
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    cmpg-float v1, v0, v12

    if-gez v1, :cond_3d

    add-float v0, v0, v24

    .line 3639
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    cmpl-float v0, v0, v12

    if-lez v0, :cond_3c

    .line 3641
    iput v12, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    goto :goto_13

    .line 3645
    :cond_3b
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    cmpl-float v1, v0, v13

    if-lez v1, :cond_3d

    sub-float v0, v0, v24

    .line 3646
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    cmpg-float v0, v0, v13

    if-gez v0, :cond_3c

    .line 3648
    iput v13, v9, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    :cond_3c
    :goto_13
    move/from16 v25, v17

    goto :goto_14

    :cond_3d
    move/from16 v25, v15

    .line 3655
    :goto_14
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    const/4 v6, -0x1

    if-eq v0, v6, :cond_3e

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-nez v0, :cond_3f

    .line 3656
    :cond_3e
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawNameLock:Z

    if-eqz v0, :cond_3f

    .line 3657
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLockLeft:I

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLockTop:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3658
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3661
    :cond_3f
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_4c

    .line 3662
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v0, :cond_42

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutFits:Z

    if-nez v0, :cond_42

    .line 3663
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeLeft:Z

    if-eqz v0, :cond_40

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_40

    .line 3664
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaint:Landroid/graphics/Paint;

    .line 3665
    new-instance v1, Landroid/graphics/LinearGradient;

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v2, 0x18

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v2, v3

    const/16 v35, 0x0

    new-array v3, v14, [I

    fill-array-data v3, :array_0

    new-array v4, v14, [F

    fill-array-data v4, :array_1

    sget-object v38, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v31, v1

    move/from16 v34, v2

    move-object/from16 v36, v3

    move-object/from16 v37, v4

    invoke-direct/range {v31 .. v38}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3666
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_15

    .line 3667
    :cond_40
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaintBack:Landroid/graphics/Paint;

    if-nez v0, :cond_41

    .line 3668
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaintBack:Landroid/graphics/Paint;

    .line 3669
    new-instance v1, Landroid/graphics/LinearGradient;

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v16, 0x18

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const/16 v35, 0x0

    new-array v3, v14, [I

    fill-array-data v3, :array_2

    new-array v4, v14, [F

    fill-array-data v4, :array_3

    sget-object v38, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v31, v1

    move/from16 v34, v2

    move-object/from16 v36, v3

    move-object/from16 v37, v4

    invoke-direct/range {v31 .. v38}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3670
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

    .line 3672
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    const/16 v0, 0xff

    const/16 v18, 0x1f

    move-object/from16 v1, p1

    move/from16 v19, v6

    move v6, v0

    move/from16 v39, v7

    move/from16 v7, v18

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 3673
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameWidth:I

    add-int/2addr v1, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v8, v0, v15, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_17

    :cond_42
    move/from16 v19, v6

    move/from16 v39, v7

    const/16 v16, 0x18

    .line 3675
    :goto_17
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_43

    .line 3676
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v2, v0, v1

    aget-object v0, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameArchived:I

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_19

    .line 3677
    :cond_43
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v0, :cond_45

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    if-eqz v0, :cond_44

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    if-ne v0, v14, :cond_44

    goto :goto_18

    .line 3680
    :cond_44
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v2, v0, v1

    aget-object v0, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_name:I

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_19

    .line 3678
    :cond_45
    :goto_18
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v2, v0, v1

    aget-object v0, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_secretName:I

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3682
    :goto_19
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3684
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-nez v0, :cond_49

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-ne v0, v14, :cond_46

    goto :goto_1c

    .line 3687
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
    move/from16 v1, v21

    :goto_1b
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1d

    .line 3685
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

    .line 3688
    :goto_1d
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-static {v0, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    .line 3689
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStackName:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const v2, -0x42666666    # -0.075f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/TextPaint;->getColor()I

    move-result v7

    invoke-direct {v9, v15, v7}, Lorg/telegram/ui/Cells/DialogCell;->getAdaptiveEmojiColorFilter(II)Landroid/graphics/ColorFilter;

    move-result-object v7

    move-object/from16 v10, p1

    const/16 v26, 0x3

    move-object v11, v0

    move/from16 v27, v16

    move-object v12, v1

    move v1, v13

    move v13, v2

    move/from16 v2, v17

    move-object v14, v3

    move v3, v15

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v19, v7

    invoke-static/range {v10 .. v19}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 3690
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3691
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    if-eqz v0, :cond_4b

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutFits:Z

    if-nez v0, :cond_4b

    .line 3692
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3693
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeLeft:Z

    if-eqz v0, :cond_4a

    .line 3694
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    int-to-float v0, v0

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 3695
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaint:Landroid/graphics/Paint;

    move v15, v1

    move-object/from16 v1, p1

    move v14, v2

    move v2, v0

    move v13, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1e

    :cond_4a
    move v15, v1

    move v14, v2

    move v13, v3

    .line 3697
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

    .line 3698
    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v4, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, v9, Lorg/telegram/ui/Cells/DialogCell;->fadePaintBack:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3700
    :goto_1e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3701
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1f

    :cond_4b
    move v15, v1

    move v14, v2

    move v13, v3

    goto :goto_1f

    :cond_4c
    move/from16 v39, v7

    move/from16 v14, v17

    const/16 v26, 0x3

    const/16 v27, 0x18

    move/from16 v40, v15

    move v15, v13

    move/from16 v13, v40

    .line 3706
    :goto_1f
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    const/4 v7, -0x1

    if-eq v0, v7, :cond_4d

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-nez v0, :cond_4e

    .line 3707
    :cond_4d
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_4e

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_4e

    .line 3708
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3709
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->timeLeft:I

    int-to-float v0, v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    int-to-float v1, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3710
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    invoke-static {v0, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    .line 3711
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3714
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->drawLock2()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 3715
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lock2Drawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->lock2Left:I

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    .line 3717
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

    .line 3718
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v9, Lorg/telegram/ui/Cells/DialogCell;->timeTop:I

    iget-object v5, v9, Lorg/telegram/ui/Cells/DialogCell;->timeLayout:Landroid/text/StaticLayout;

    .line 3719
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

    .line 3715
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3721
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lock2Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_20

    :cond_4f
    const/4 v6, 0x2

    .line 3724
    :goto_20
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_53

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v0

    if-nez v0, :cond_53

    .line 3725
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_50

    .line 3726
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messageNamePaint:Landroid/text/TextPaint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessageArchived_threeLines:I

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_21

    .line 3727
    :cond_50
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->draftMessage:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    if-eqz v0, :cond_51

    .line 3728
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messageNamePaint:Landroid/text/TextPaint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_draft:I

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_21

    .line 3730
    :cond_51
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messageNamePaint:Landroid/text/TextPaint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessage_threeLines:I

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3732
    :goto_21
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3733
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageNameLeft:I

    int-to-float v0, v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->messageNameTop:I

    int-to-float v1, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3735
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-nez v0, :cond_52

    .line 3737
    :try_start_0
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    invoke-static {v0, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    .line 3738
    iget-object v11, v9, Lorg/telegram/ui/Cells/DialogCell;->messageNameLayout:Landroid/text/StaticLayout;

    iget-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack2:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const v0, -0x42666666    # -0.075f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-virtual {v11}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getColor()I

    move-result v3

    invoke-direct {v9, v14, v3}, Lorg/telegram/ui/Cells/DialogCell;->getAdaptiveEmojiColorFilter(II)Landroid/graphics/ColorFilter;

    move-result-object v19
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v10, p1

    move v5, v13

    move v13, v0

    move v4, v14

    move-object v14, v1

    move v3, v15

    move v15, v2

    :try_start_1
    invoke-static/range {v10 .. v19}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_23

    :catch_0
    move-exception v0

    goto :goto_22

    :catch_1
    move-exception v0

    move v5, v13

    move v4, v14

    move v3, v15

    .line 3740
    :goto_22
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_23

    :cond_52
    move v5, v13

    move v4, v14

    move v3, v15

    .line 3742
    :goto_23
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_24

    :cond_53
    move v5, v13

    move v4, v14

    move v3, v15

    .line 3745
    :goto_24
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    const/16 v28, 0xe

    if-eqz v0, :cond_65

    .line 3746
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_55

    .line 3747
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_54

    .line 3748
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v2, v0, v1

    aget-object v0, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessageArchived:I

    iget-object v10, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_25

    .line 3750
    :cond_54
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v2, v0, v1

    aget-object v0, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_messageArchived:I

    iget-object v10, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_25

    .line 3753
    :cond_55
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->paintIndex:I

    aget-object v2, v0, v1

    aget-object v0, v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message:I

    iget-object v10, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3756
    :goto_25
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v1, v0

    .line 3757
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingOutToTop:Z

    if-eqz v2, :cond_56

    .line 3758
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v2, v2

    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    mul-float/2addr v10, v1

    sub-float/2addr v2, v10

    goto :goto_26

    .line 3760
    :cond_56
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v2, v2

    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    mul-float/2addr v10, v1

    add-float/2addr v2, v10

    .line 3762
    :goto_26
    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_5a

    .line 3763
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3764
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    int-to-float v0, v0

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3765
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v2

    .line 3766
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    int-to-float v10, v2

    iget-object v11, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v11, v11, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    sub-float v11, v15, v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v0, v10}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 3768
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-nez v0, :cond_58

    .line 3769
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_57

    .line 3771
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3772
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-static {v8, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->clipOutCanvas(Landroid/graphics/Canvas;Ljava/util/List;)V

    .line 3773
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-static {v0, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    .line 3774
    iget-object v11, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    iget-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const v13, -0x42666666    # -0.075f

    iget-object v14, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-virtual {v11}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/TextPaint;->getColor()I

    move-result v10

    invoke-direct {v9, v6, v10}, Lorg/telegram/ui/Cells/DialogCell;->getAdaptiveEmojiColorFilter(II)Landroid/graphics/ColorFilter;

    move-result-object v19
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v10, p1

    move v7, v15

    move v15, v0

    :try_start_3
    invoke-static/range {v10 .. v19}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 3775
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move v15, v5

    .line 3777
    :goto_27
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_59

    .line 3778
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 3779
    iget-object v10, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/TextPaint;->getColor()I

    move-result v10

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 3780
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

    .line 3783
    :goto_28
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_29

    :cond_57
    move v7, v15

    .line 3786
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-static {v0, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    .line 3787
    iget-object v11, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    iget-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const v13, -0x42666666    # -0.075f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-virtual {v11}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    invoke-direct {v9, v6, v0}, Lorg/telegram/ui/Cells/DialogCell;->getAdaptiveEmojiColorFilter(II)Landroid/graphics/ColorFilter;

    move-result-object v19

    move-object/from16 v10, p1

    invoke-static/range {v10 .. v19}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    goto :goto_29

    :cond_58
    move v7, v15

    .line 3789
    :cond_59
    :goto_29
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 3790
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2a

    :cond_5a
    move v7, v15

    .line 3793
    :goto_2a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3794
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingOutToTop:Z

    if-eqz v2, :cond_5b

    .line 3795
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v2, v2

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    sub-float v0, v7, v0

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    goto :goto_2b

    .line 3797
    :cond_5b
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v2, v2

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    sub-float v0, v7, v0

    mul-float/2addr v0, v1

    sub-float/2addr v2, v0

    .line 3799
    :goto_2b
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->typingLeft:I

    int-to-float v0, v0

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3801
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-nez v0, :cond_5c

    .line 3802
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_5c

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v2, v2, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5c

    .line 3803
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    .line 3804
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    int-to-float v10, v0

    iget-object v11, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v11, v11, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v2, v10}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 3805
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3806
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 3808
    :cond_5c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3810
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->typingLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_64

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    if-gez v0, :cond_5d

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v10, v2, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    cmpl-float v10, v10, v3

    if-lez v10, :cond_64

    iget v2, v2, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastKnownTypingType:I

    if-ltz v2, :cond_64

    :cond_5d
    if-ltz v0, :cond_5e

    goto :goto_2c

    .line 3811
    :cond_5e
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastKnownTypingType:I

    .line 3812
    :goto_2c
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getChatStatusDrawable(I)Lorg/telegram/ui/Components/StatusDrawable;

    move-result-object v2

    if-eqz v2, :cond_64

    .line 3814
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3815
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionMessage:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    .line 3816
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v12, v12, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {v10, v11}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v10

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/StatusDrawable;->setColor(I)V

    .line 3817
    iget-object v10, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget-boolean v11, v10, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingOutToTop:Z

    if-eqz v11, :cond_5f

    .line 3818
    iget v11, v9, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v11, v11

    iget v10, v10, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    sub-float v10, v7, v10

    mul-float/2addr v1, v10

    add-float/2addr v11, v1

    goto :goto_2d

    .line 3820
    :cond_5f
    iget v11, v9, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v11, v11

    iget v10, v10, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    sub-float v10, v7, v10

    mul-float/2addr v1, v10

    sub-float/2addr v11, v1

    .line 3823
    :goto_2d
    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v1, :cond_60

    .line 3824
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLeft:I

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v5}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-direct {v9, v1}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v1, 0x4

    goto :goto_30

    :cond_60
    const/4 v1, 0x4

    if-eq v0, v4, :cond_62

    if-ne v0, v1, :cond_61

    goto :goto_2e

    .line 3829
    :cond_61
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableLeft:I

    int-to-float v0, v0

    const/16 v10, 0x12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    sub-int/2addr v10, v12

    int-to-float v10, v10

    div-float v10, v10, v20

    add-float/2addr v11, v10

    invoke-virtual {v8, v0, v11}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_30

    .line 3827
    :cond_62
    :goto_2e
    iget v10, v9, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableLeft:I

    int-to-float v10, v10

    if-ne v0, v4, :cond_63

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    goto :goto_2f

    :cond_63
    move v15, v5

    :goto_2f
    int-to-float v0, v15

    add-float/2addr v11, v0

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3831
    :goto_30
    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3832
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    .line 3833
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_31

    :cond_64
    const/4 v1, 0x4

    goto :goto_31

    :cond_65
    const/4 v1, 0x4

    const/high16 v7, 0x3f800000    # 1.0f

    .line 3838
    :goto_31
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_6f

    .line 3839
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3840
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonBackgroundPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_66

    .line 3841
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonBackgroundPaint:Landroid/graphics/Paint;

    .line 3843
    :cond_66
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    if-nez v0, :cond_67

    .line 3844
    new-instance v0, Lorg/telegram/ui/Components/CanvasButton;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/CanvasButton;-><init>(Landroid/view/View;)V

    iput-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    .line 3845
    new-instance v2, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda3;

    invoke-direct {v2, v9}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/CanvasButton;->setDelegate(Ljava/lang/Runnable;)V

    .line 3850
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    new-instance v2, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda4;

    invoke-direct {v2, v9}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/CanvasButton;->setLongPress(Ljava/lang/Runnable;)V

    .line 3857
    :cond_67
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-nez v0, :cond_6c

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->lastTopicMessageUnread:Z

    if-eqz v0, :cond_6c

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicEndIndex:I

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicStartIndex:I

    if-eq v0, v2, :cond_6c

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    if-eqz v0, :cond_68

    const/4 v2, 0x7

    if-eq v0, v2, :cond_68

    const/16 v2, 0x8

    if-ne v0, v2, :cond_6c

    goto :goto_32

    :cond_68
    const/16 v2, 0x8

    .line 3858
    :goto_32
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    iget-object v10, v9, Lorg/telegram/ui/Cells/DialogCell;->currentMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->getColor()I

    move-result v10

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v11

    if-eqz v11, :cond_69

    const/16 v11, 0x24

    goto :goto_33

    :cond_69
    const/16 v11, 0x1a

    :goto_33
    invoke-static {v10, v11}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v10

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/CanvasButton;->setColor(I)V

    .line 3859
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonCreated:Z

    if-nez v0, :cond_6b

    .line 3860
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CanvasButton;->rewind()V

    .line 3861
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicEndIndex:I

    iget v10, v9, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicStartIndex:I

    if-eq v0, v10, :cond_6a

    if-lez v0, :cond_6a

    .line 3862
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v10, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v11, v5}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v11

    add-float/2addr v10, v11

    iget v11, v9, Lorg/telegram/ui/Cells/DialogCell;->messageTop:I

    int-to-float v11, v11

    iget v12, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLeft:I

    int-to-float v12, v12

    iget-object v13, v9, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    invoke-virtual {v13}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    iget v15, v9, Lorg/telegram/ui/Cells/DialogCell;->topMessageTopicEndIndex:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v13

    add-float/2addr v12, v13

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iget v13, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonTop:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3863
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    invoke-virtual {v0, v10, v11}, Landroid/graphics/RectF;->inset(FF)V

    .line 3864
    iget v10, v0, Landroid/graphics/RectF;->right:F

    iget v11, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_6a

    .line 3865
    iget-object v10, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/CanvasButton;->addRect(Landroid/graphics/RectF;)V

    .line 3869
    :cond_6a
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    .line 3870
    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v11, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    int-to-float v11, v11

    add-float/2addr v11, v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    iget v12, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonTop:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    add-int/2addr v12, v13

    int-to-float v12, v12

    iget v13, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    int-to-float v13, v13

    add-float/2addr v13, v0

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    add-float/2addr v13, v0

    const/16 v0, 0xc

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v13, v0

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonTop:I

    iget-object v14, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v14}, Landroid/text/StaticLayout;->getHeight()I

    move-result v14

    add-int/2addr v0, v14

    int-to-float v0, v0

    invoke-virtual {v10, v11, v12, v13, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3871
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v10, v0, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 3872
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/CanvasButton;->addRect(Landroid/graphics/RectF;)V

    .line 3874
    :cond_6b
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/CanvasButton;->draw(Landroid/graphics/Canvas;)V

    .line 3876
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_forum_arrowDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3877
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_forum_arrowDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v10, v2, Landroid/graphics/RectF;->right:F

    const/16 v11, 0x12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_forum_arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v2, v12

    div-float v2, v2, v20

    add-float/2addr v11, v2

    invoke-static {v0, v10, v11}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V

    .line 3878
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_forum_arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3882
    :cond_6c
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLeft:I

    int-to-float v0, v0

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonTop:I

    int-to-float v2, v2

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3883
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 3885
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3886
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-static {v8, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->clipOutCanvas(Landroid/graphics/Canvas;Ljava/util/List;)V

    .line 3887
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-static {v0, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    .line 3888
    iget-object v11, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    iget-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const v13, -0x42666666    # -0.075f

    iget-object v14, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-virtual {v11}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    move/from16 v2, v26

    invoke-direct {v9, v2, v0}, Lorg/telegram/ui/Cells/DialogCell;->getAdaptiveEmojiColorFilter(II)Landroid/graphics/ColorFilter;

    move-result-object v19

    move-object/from16 v10, p1

    invoke-static/range {v10 .. v19}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 3889
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move v15, v5

    .line 3891
    :goto_34
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_6e

    .line 3892
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->spoilers2:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 3893
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 3894
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    add-int/lit8 v15, v15, 0x1

    goto :goto_34

    :catch_4
    move-exception v0

    .line 3897
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_35

    :cond_6d
    move/from16 v2, v26

    .line 3900
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    invoke-static {v0, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    .line 3901
    iget-object v11, v9, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    iget-object v12, v9, Lorg/telegram/ui/Cells/DialogCell;->animatedEmojiStack3:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const v13, -0x42666666    # -0.075f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-virtual {v11}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    invoke-direct {v9, v2, v0}, Lorg/telegram/ui/Cells/DialogCell;->getAdaptiveEmojiColorFilter(II)Landroid/graphics/ColorFilter;

    move-result-object v19

    move-object/from16 v10, p1

    invoke-static/range {v10 .. v19}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 3903
    :cond_6e
    :goto_35
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3907
    :cond_6f
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    const/4 v10, -0x1

    if-eq v0, v10, :cond_70

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-nez v0, :cond_7f

    .line 3908
    :cond_70
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_7f

    .line 3909
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v2, :cond_71

    move v15, v6

    goto :goto_36

    :cond_71
    move v15, v5

    :goto_36
    add-int/2addr v0, v15

    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v2, :cond_72

    move v15, v1

    goto :goto_37

    :cond_72
    move v15, v5

    :goto_37
    add-int/2addr v0, v15

    .line 3910
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    if-ltz v2, :cond_73

    if-eq v2, v0, :cond_73

    iget-boolean v11, v9, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimationInProgress:Z

    if-nez v11, :cond_73

    .line 3911
    invoke-direct {v9, v2, v0}, Lorg/telegram/ui/Cells/DialogCell;->createStatusDrawableAnimator(II)V

    .line 3913
    :cond_73
    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimationInProgress:Z

    if-eqz v2, :cond_74

    .line 3914
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->animateToStatusDrawableParams:I

    :cond_74
    and-int/lit8 v11, v0, 0x1

    if-eqz v11, :cond_75

    move v11, v4

    goto :goto_38

    :cond_75
    move v11, v5

    :goto_38
    and-int/lit8 v12, v0, 0x2

    if-eqz v12, :cond_76

    move v12, v4

    goto :goto_39

    :cond_76
    move v12, v5

    :goto_39
    and-int/2addr v0, v1

    if-eqz v0, :cond_77

    move v0, v4

    goto :goto_3a

    :cond_77
    move v0, v5

    :goto_3a
    if-eqz v2, :cond_7c

    .line 3922
    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->animateFromStatusDrawableParams:I

    and-int/lit8 v13, v2, 0x1

    if-eqz v13, :cond_78

    move v13, v4

    goto :goto_3b

    :cond_78
    move v13, v5

    :goto_3b
    and-int/lit8 v14, v2, 0x2

    if-eqz v14, :cond_79

    move v14, v4

    goto :goto_3c

    :cond_79
    move v14, v5

    :goto_3c
    and-int/2addr v2, v1

    if-eqz v2, :cond_7a

    move v15, v4

    goto :goto_3d

    :cond_7a
    move v15, v5

    :goto_3d
    if-nez v11, :cond_7b

    if-nez v13, :cond_7b

    if-eqz v15, :cond_7b

    if-nez v14, :cond_7b

    if-eqz v12, :cond_7b

    if-eqz v0, :cond_7b

    const/4 v13, 0x1

    .line 3926
    iget v14, v9, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableProgress:F

    move/from16 v16, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v15, v3

    move v3, v11

    move v11, v4

    move v4, v12

    move v12, v5

    move v5, v0

    move v10, v6

    move v6, v13

    move v10, v7

    const/4 v13, -0x1

    move v7, v14

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Cells/DialogCell;->drawCheckStatus(Landroid/graphics/Canvas;ZZZZF)V

    move v14, v11

    move/from16 v40, v15

    move v15, v13

    move/from16 v13, v40

    goto :goto_3e

    :cond_7b
    move/from16 v16, v1

    move v6, v5

    move v5, v4

    move v4, v3

    move/from16 v40, v10

    move v10, v7

    move/from16 v7, v40

    const/16 v18, 0x0

    .line 3928
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableProgress:F

    sub-float v19, v10, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v13

    move v13, v4

    move v4, v14

    move v14, v5

    move v5, v15

    move v15, v6

    move/from16 v6, v18

    move v15, v7

    move/from16 v7, v19

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Cells/DialogCell;->drawCheckStatus(Landroid/graphics/Canvas;ZZZZF)V

    const/4 v6, 0x0

    .line 3929
    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableProgress:F

    move v3, v11

    move v4, v12

    move v5, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Cells/DialogCell;->drawCheckStatus(Landroid/graphics/Canvas;ZZZZF)V

    goto :goto_3e

    :cond_7c
    move/from16 v16, v1

    move v13, v3

    move v14, v4

    move v15, v10

    move v10, v7

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v11

    move v4, v12

    move v5, v0

    .line 3932
    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Cells/DialogCell;->drawCheckStatus(Landroid/graphics/Canvas;ZZZZF)V

    .line 3934
    :goto_3e
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawClock:Z

    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawCheck1:Z

    if-eqz v1, :cond_7d

    const/4 v1, 0x2

    goto :goto_3f

    :cond_7d
    const/4 v1, 0x0

    :goto_3f
    add-int/2addr v0, v1

    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawCheck2:Z

    if-eqz v1, :cond_7e

    move/from16 v1, v16

    goto :goto_40

    :cond_7e
    const/4 v1, 0x0

    :goto_40
    add-int/2addr v0, v1

    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    goto :goto_41

    :cond_7f
    move/from16 v16, v1

    move v13, v3

    move v14, v4

    move v15, v10

    move v10, v7

    .line 3937
    :goto_41
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-nez v0, :cond_81

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-eqz v0, :cond_80

    goto :goto_42

    :cond_80
    const/4 v0, 0x0

    goto :goto_43

    :cond_81
    :goto_42
    move v0, v14

    .line 3939
    :goto_43
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    if-eq v1, v15, :cond_82

    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-nez v1, :cond_aa

    .line 3940
    :cond_82
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/high16 v2, 0x41580000    # 13.5f

    const/4 v3, 0x2

    if-eq v1, v3, :cond_94

    if-nez v0, :cond_83

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    cmpl-float v1, v1, v13

    if-lez v1, :cond_94

    :cond_83
    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-nez v1, :cond_94

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-nez v1, :cond_94

    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-nez v1, :cond_94

    if-eqz v0, :cond_85

    .line 3941
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    cmpl-float v3, v1, v10

    if-eqz v3, :cond_85

    add-float v1, v1, v24

    .line 3942
    iput v1, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    cmpl-float v0, v1, v10

    if-lez v0, :cond_84

    .line 3944
    iput v10, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    goto :goto_44

    .line 3946
    :cond_84
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    goto :goto_44

    :cond_85
    if-nez v0, :cond_87

    .line 3948
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    cmpl-float v1, v0, v13

    if-eqz v1, :cond_87

    sub-float v0, v0, v24

    .line 3949
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    cmpg-float v0, v0, v13

    if-gez v0, :cond_86

    .line 3951
    iput v13, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    goto :goto_44

    .line 3953
    :cond_86
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    .line 3956
    :cond_87
    :goto_44
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v1, :cond_89

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v1, :cond_88

    goto :goto_45

    :cond_88
    move v1, v14

    goto :goto_46

    :cond_89
    :goto_45
    const/4 v1, 0x0

    :goto_46
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 3957
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v1, :cond_8a

    goto :goto_47

    :cond_8a
    const/high16 v2, 0x418c0000    # 17.5f

    :goto_47
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    .line 3959
    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v2, :cond_8d

    .line 3960
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    iget-boolean v4, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v4, :cond_8c

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v4, :cond_8b

    goto :goto_48

    :cond_8b
    move v4, v14

    goto :goto_49

    :cond_8c
    :goto_48
    const/4 v4, 0x0

    :goto_49
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-direct {v9, v4}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_4a

    .line 3962
    :cond_8d
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V

    .line 3964
    :goto_4a
    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v2, :cond_90

    .line 3965
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v2, :cond_8f

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_8e

    goto :goto_4b

    :cond_8e
    move v2, v14

    goto :goto_4c

    :cond_8f
    :goto_4b
    const/4 v2, 0x0

    :goto_4c
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v9, v2}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_4d

    .line 3967
    :cond_90
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V

    .line 3968
    :goto_4d
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_92

    .line 3969
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3970
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

    .line 3971
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-eqz v0, :cond_91

    .line 3972
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    mul-float v1, v1, v23

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3973
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3974
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_4e

    .line 3976
    :cond_91
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    mul-float v1, v1, v23

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3977
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3978
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3980
    :goto_4e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_60

    .line 3982
    :cond_92
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-eqz v0, :cond_93

    .line 3983
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_unmuteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_60

    .line 3985
    :cond_93
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_60

    .line 3989
    :cond_94
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v0, :cond_9b

    .line 3991
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v0, :cond_95

    .line 3992
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-direct {v9, v3}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result v3

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_51

    .line 3994
    :cond_95
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    iget-boolean v3, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v3, :cond_97

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v3, :cond_96

    goto :goto_4f

    :cond_96
    const/high16 v3, 0x41840000    # 16.5f

    goto :goto_50

    :cond_97
    :goto_4f
    move v3, v2

    :goto_50
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 3996
    :goto_51
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v0, :cond_98

    .line 3997
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v9, v2}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_53

    .line 3999
    :cond_98
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    iget-boolean v3, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v3, :cond_9a

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v3, :cond_99

    goto :goto_52

    :cond_99
    const/high16 v2, 0x41840000    # 16.5f

    :cond_9a
    :goto_52
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 4000
    :goto_53
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4001
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_60

    .line 4002
    :cond_9b
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawPremium:Z

    if-eqz v0, :cond_a3

    .line 4003
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_a0

    .line 4004
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    const/4 v2, 0x2

    .line 4005
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    .line 4006
    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v2, :cond_9d

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_9c

    goto :goto_54

    :cond_9c
    const/high16 v2, 0x41780000    # 15.5f

    goto :goto_55

    :cond_9d
    :goto_54
    const/high16 v2, 0x41480000    # 12.5f

    :goto_55
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    const/16 v4, 0x14

    .line 4007
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 4008
    iget-boolean v4, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v4, :cond_9f

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v4, :cond_9e

    goto :goto_56

    :cond_9e
    const/high16 v4, 0x41780000    # 15.5f

    goto :goto_57

    :cond_9f
    :goto_56
    const/high16 v4, 0x41480000    # 12.5f

    :goto_57
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v4, v5

    const/16 v5, 0x16

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 4004
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4010
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 4011
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_60

    .line 4013
    :cond_a0
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarDrawableMini:Landroid/graphics/drawable/Drawable;

    .line 4014
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v2, :cond_a2

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_a1

    goto :goto_58

    :cond_a1
    const/high16 v2, 0x41780000    # 15.5f

    goto :goto_59

    :cond_a2
    :goto_58
    const/high16 v2, 0x41480000    # 12.5f

    :goto_59
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 4015
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_60

    .line 4017
    :cond_a3
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-eqz v0, :cond_aa

    .line 4019
    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v1, :cond_a5

    if-ne v0, v14, :cond_a4

    .line 4020
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    goto :goto_5a

    :cond_a4
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    .line 4021
    :goto_5a
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScamDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v9, v2}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_5e

    :cond_a5
    if-ne v0, v14, :cond_a6

    .line 4023
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    goto :goto_5b

    :cond_a6
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    :goto_5b
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->nameMuteLeft:I

    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->useForceThreeLines:Z

    if-nez v2, :cond_a8

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_a7

    goto :goto_5c

    :cond_a7
    const/16 v2, 0xf

    goto :goto_5d

    :cond_a8
    :goto_5c
    const/16 v2, 0xc

    :goto_5d
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 4024
    :goto_5e
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawScam:I

    if-ne v0, v14, :cond_a9

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    goto :goto_5f

    :cond_a9
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    :goto_5f
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/ScamDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4028
    :cond_aa
    :goto_60
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    if-eq v0, v15, :cond_ab

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-nez v0, :cond_ad

    .line 4029
    :cond_ab
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    if-nez v0, :cond_ac

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_ad

    .line 4030
    :cond_ac
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    mul-float v1, v1, v23

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4031
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 4032
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4035
    :cond_ad
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->printingStringType:I

    if-eq v0, v15, :cond_af

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-nez v0, :cond_ae

    goto :goto_62

    :cond_ae
    :goto_61
    move-object v15, v8

    goto/16 :goto_68

    .line 4036
    :cond_af
    :goto_62
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawError:Z

    const/16 v11, 0x17

    const/high16 v12, 0x41380000    # 11.5f

    if-eqz v0, :cond_b0

    .line 4037
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v5, v10, v1

    mul-float v5, v5, v23

    float-to-int v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4038
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

    .line 4039
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v2, v1, v12

    mul-float/2addr v1, v12

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4040
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

    .line 4041
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_61

    .line 4042
    :cond_b0
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    if-nez v0, :cond_b1

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    if-eqz v0, :cond_b2

    :cond_b1
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawCount2:Z

    if-nez v0, :cond_b4

    :cond_b2
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->countChangeProgress:F

    cmpl-float v0, v0, v10

    if-nez v0, :cond_b4

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    if-nez v0, :cond_b4

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_b3

    goto :goto_63

    .line 4091
    :cond_b3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 4092
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v5, v10, v1

    mul-float v5, v5, v23

    float-to-int v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4093
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->pinLeft:I

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->pinTop:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 4094
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_61

    .line 4044
    :cond_b4
    :goto_63
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_b5

    .line 4045
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->topicMuted:Z

    goto :goto_64

    .line 4047
    :cond_b5
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_b7

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v0, :cond_b7

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-nez v0, :cond_b7

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    if-nez v0, :cond_b6

    move v0, v14

    goto :goto_64

    :cond_b6
    const/4 v0, 0x0

    goto :goto_64

    :cond_b7
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    .line 4049
    :goto_64
    iget v4, v9, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    iget v5, v9, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    iget v6, v9, Lorg/telegram/ui/Cells/DialogCell;->countLeftOld:I

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v0

    move-object v15, v8

    move/from16 v8, v19

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Cells/DialogCell;->drawCounter(Landroid/graphics/Canvas;ZIIIFZ)V

    .line 4050
    iget-boolean v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawMention:Z

    if-eqz v1, :cond_ba

    .line 4051
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v5, v10, v2

    mul-float v5, v5, v23

    float-to-int v2, v5

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4053
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    const/high16 v2, 0x40b00000    # 5.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    .line 4054
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

    if-eqz v0, :cond_b8

    .line 4055
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    if-eqz v0, :cond_b8

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countGrayPaint:Landroid/graphics/Paint;

    goto :goto_65

    :cond_b8
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    .line 4056
    :goto_65
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v3, v2, v12

    mul-float/2addr v2, v12

    invoke-virtual {v15, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4057
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->mentionLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_b9

    .line 4058
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v5, v10, v1

    mul-float v5, v5, v23

    float-to-int v1, v5

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 4060
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4061
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->mentionLeft:I

    int-to-float v0, v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->countTop:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4062
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->mentionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v15}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4063
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_66

    .line 4065
    :cond_b9
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_mentionDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v5, v10, v1

    mul-float v5, v5, v23

    float-to-int v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4067
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

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 4068
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_mentionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4072
    :cond_ba
    :goto_66
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    if-nez v0, :cond_bb

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_be

    .line 4074
    :cond_bb
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsCountPaint:Landroid/graphics/Paint;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v5, v10, v1

    mul-float v5, v5, v23

    float-to-int v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4076
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionLeft:I

    const/high16 v1, 0x40b00000    # 5.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 4077
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

    .line 4078
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsCountPaint:Landroid/graphics/Paint;

    .line 4080
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4081
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    cmpl-float v2, v1, v10

    if-eqz v2, :cond_bd

    .line 4082
    iget-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->drawReactionMention:Z

    if-eqz v2, :cond_bc

    goto :goto_67

    :cond_bc
    sub-float v1, v10, v1

    .line 4083
    :goto_67
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v15, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4085
    :cond_bd
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rect:Landroid/graphics/RectF;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v3, v2, v12

    mul-float/2addr v2, v12

    invoke-virtual {v15, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4086
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsMentionDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    sub-float v5, v10, v1

    mul-float v5, v5, v23

    float-to-int v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4087
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

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 4088
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reactionsMentionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4089
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4098
    :cond_be
    :goto_68
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-nez v0, :cond_c8

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_bf

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isContentHidden()Z

    move-result v0

    if-nez v0, :cond_c8

    .line 4099
    :cond_bf
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-lez v0, :cond_c8

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    cmpl-float v1, v0, v10

    if-eqz v1, :cond_c8

    cmpl-float v1, v0, v13

    if-lez v1, :cond_c1

    sub-float v5, v10, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4103
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v5, v5, v23

    float-to-int v6, v5

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    move v5, v0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 4105
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget-boolean v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingOutToTop:Z

    if-eqz v0, :cond_c0

    .line 4106
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v1, v1, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    goto :goto_69

    .line 4108
    :cond_c0
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v1, v1, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    :goto_69
    mul-float/2addr v0, v1

    .line 4110
    invoke-virtual {v15, v13, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_c1
    const/4 v0, 0x0

    .line 4112
    :goto_6a
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    if-ge v0, v1, :cond_c7

    .line 4113
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImageSeen:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_c2

    goto/16 :goto_6c

    .line 4116
    :cond_c2
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbBackgroundPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_c3

    .line 4117
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v14}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x3fab851f    # 1.34f

    .line 4118
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3eae147b    # 0.34f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x18000000

    invoke-virtual {v1, v2, v13, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 4119
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbBackgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4121
    :cond_c3
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v2, v2, v0

    .line 4122
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v2

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v3, v3, v0

    .line 4123
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v3

    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v4, v4, v0

    .line 4124
    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v4

    iget-object v5, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v5, v5, v0

    .line 4125
    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v5

    .line 4121
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4127
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v2, v2, v0

    .line 4129
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v3, v3, v0

    .line 4130
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v3

    aget v3, v3, v14

    int-to-float v3, v3

    iget-object v4, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbBackgroundPaint:Landroid/graphics/Paint;

    .line 4127
    invoke-virtual {v15, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4133
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v2, v2, v0

    invoke-virtual {v2, v15}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 4134
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->drawSpoiler:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_c5

    .line 4135
    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbPath:Landroid/graphics/Path;

    if-nez v2, :cond_c4

    .line 4136
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbPath:Landroid/graphics/Path;

    goto :goto_6b

    .line 4138
    :cond_c4
    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 4140
    :goto_6b
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

    aget v4, v4, v14

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 4142
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4143
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbPath:Landroid/graphics/Path;

    invoke-virtual {v15, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 4146
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

    .line 4147
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

    .line 4148
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->thumbSpoiler:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v1, v15}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    .line 4149
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    .line 4151
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4153
    :cond_c5
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->drawPlay:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_c6

    .line 4154
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

    .line 4155
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

    .line 4156
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 4157
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v15}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_c6
    :goto_6c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6a

    .line 4161
    :cond_c7
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->updateHelper:Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;

    iget v0, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    cmpl-float v0, v0, v13

    if-lez v0, :cond_c8

    .line 4162
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_c8
    move/from16 v1, v39

    const/4 v2, -0x1

    if-eq v1, v2, :cond_ca

    .line 4167
    invoke-virtual {v15, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_6d

    :cond_c9
    move-object v15, v8

    const/4 v14, 0x1

    const/16 v27, 0x18

    const/16 v25, 0x0

    .line 4171
    :cond_ca
    :goto_6d
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatar:Z

    const/high16 v11, 0x432a0000    # 170.0f

    if-eqz v0, :cond_cb

    .line 4172
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4173
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->interpolator:Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatarProgress:F

    div-float/2addr v1, v11

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/DialogCell$BounceInterpolator;->getInterpolation(F)F

    move-result v0

    add-float/2addr v0, v10

    .line 4174
    iget-object v1, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v1

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v2

    invoke-virtual {v15, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4177
    :cond_cb
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawAvatar:Z

    if-eqz v0, :cond_ce

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_cc

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v0, :cond_cc

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v0, v14, :cond_cc

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz v0, :cond_cc

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->isDraw()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 4178
    :cond_cc
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v1, :cond_cd

    const/4 v2, 0x2

    if-eq v1, v2, :cond_cd

    move v1, v14

    goto :goto_6e

    :cond_cd
    const/4 v1, 0x0

    :goto_6e
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawHiddenStoriesAsSegments:Z

    .line 4179
    iget-wide v1, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    iget-object v3, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v1, v2, v15, v3, v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawAvatarWithStory(JLandroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    .line 4182
    :cond_ce
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatar:Z

    if-eqz v0, :cond_cf

    .line 4183
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4186
    :cond_cf
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 4187
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/Cells/DialogCell;->drawAvatarOverlays(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_d0

    move/from16 v25, v14

    .line 4192
    :cond_d0
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v0, v0, v13

    if-lez v0, :cond_d5

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_d5

    .line 4194
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_d1

    .line 4195
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->topicMuted:Z

    :goto_6f
    move v3, v0

    goto :goto_70

    .line 4197
    :cond_d1
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_d3

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v0, :cond_d3

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-nez v0, :cond_d3

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    if-nez v0, :cond_d2

    move v0, v14

    goto :goto_6f

    :cond_d2
    const/4 v0, 0x0

    goto :goto_6f

    :cond_d3
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    goto :goto_6f

    .line 4199
    :goto_70
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

    .line 4200
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

    .line 4201
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

    .line 4203
    iget-boolean v4, v9, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v4, :cond_d4

    .line 4204
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 4205
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v1, v4

    const/4 v4, 0x5

    .line 4206
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v2, v4

    :cond_d4
    move v5, v0

    move v6, v1

    move v4, v2

    .line 4209
    iget v7, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Cells/DialogCell;->drawCounter(Landroid/graphics/Canvas;ZIIIFZ)V

    .line 4212
    :cond_d5
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_d6

    .line 4213
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4216
    :cond_d6
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_d7

    .line 4217
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4219
    :cond_d7
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawArchive:Z

    if-eqz v0, :cond_d9

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v0, :cond_d8

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v0, :cond_d9

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v0, :cond_d9

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v0, v14, :cond_d9

    :cond_d8
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, v0, v13

    if-nez v0, :cond_d9

    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz v0, :cond_d9

    .line 4220
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4221
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->translateY:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOffset:F

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {v15, v13, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4222
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v15, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4223
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Components/PullForegroundDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4224
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4227
    :cond_d9
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    if-eqz v0, :cond_df

    .line 4229
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fullSeparator:Z

    if-nez v0, :cond_dc

    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v0, :cond_da

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    if-eqz v0, :cond_da

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fullSeparator2:Z

    if-eqz v0, :cond_dc

    :cond_da
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->fullSeparator2:Z

    if-eqz v0, :cond_db

    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    if-nez v0, :cond_db

    goto :goto_71

    .line 4232
    :cond_db
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_72

    :cond_dc
    :goto_71
    const/4 v0, 0x0

    .line 4235
    :goto_72
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v1, v1, v10

    if-eqz v1, :cond_df

    .line 4236
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    .line 4237
    iget v1, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v2, v1, v13

    if-eqz v2, :cond_dd

    .line 4238
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    int-to-float v3, v7

    sub-float v5, v10, v1

    mul-float/2addr v3, v5

    float-to-int v1, v3

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4240
    :cond_dd
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v14

    int-to-float v1, v1

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOffset:F

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    mul-float/2addr v2, v3

    sub-float v5, v1, v2

    .line 4241
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_de

    const/4 v2, 0x0

    .line 4242
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v4, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_73

    :cond_de
    int-to-float v2, v0

    .line 4244
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 4246
    :goto_73
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_df

    .line 4247
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4252
    :cond_df
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_e1

    .line 4253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v1, v27

    if-eq v0, v1, :cond_e0

    .line 4254
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_74

    .line 4256
    :cond_e0
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v2, v9, Lorg/telegram/ui/Cells/DialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4257
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

    .line 4258
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

    .line 4262
    :cond_e1
    :goto_74
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    const v1, 0x3dc0c0c1

    if-nez v0, :cond_e2

    iget v2, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    cmpl-float v2, v2, v13

    if-eqz v2, :cond_e5

    :cond_e2
    if-eqz v0, :cond_e3

    .line 4264
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    cmpg-float v2, v0, v10

    if-gez v2, :cond_e5

    add-float/2addr v0, v1

    .line 4265
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_e4

    .line 4267
    iput v10, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    goto :goto_75

    .line 4272
    :cond_e3
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    cmpl-float v2, v0, v13

    if-lez v2, :cond_e5

    sub-float/2addr v0, v1

    .line 4273
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    cmpg-float v0, v0, v13

    if-gez v0, :cond_e4

    .line 4275
    iput v13, v9, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    :cond_e4
    :goto_75
    move/from16 v25, v14

    .line 4282
    :cond_e5
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveHidden:Z

    if-eqz v0, :cond_e7

    .line 4283
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    cmpl-float v2, v0, v13

    if-lez v2, :cond_ea

    const v2, 0x3d8e7835

    sub-float/2addr v0, v2

    .line 4284
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    cmpg-float v0, v0, v13

    if-gez v0, :cond_e6

    .line 4286
    iput v13, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    .line 4288
    :cond_e6
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarDrawable;->getAvatarType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_e9

    .line 4289
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setArchivedAvatarHiddenProgress(F)V

    goto :goto_76

    .line 4294
    :cond_e7
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    cmpg-float v2, v0, v10

    if-gez v2, :cond_ea

    const v2, 0x3d8e7835

    add-float/2addr v0, v2

    .line 4295
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_e8

    .line 4297
    iput v10, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    .line 4299
    :cond_e8
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarDrawable;->getAvatarType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_e9

    .line 4300
    iget-object v0, v9, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v3, v9, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setArchivedAvatarHiddenProgress(F)V

    :cond_e9
    :goto_76
    move/from16 v25, v14

    .line 4306
    :cond_ea
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatar:Z

    if-eqz v0, :cond_ec

    .line 4307
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatarProgress:F

    const/high16 v2, 0x41800000    # 16.0f

    add-float/2addr v0, v2

    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatarProgress:F

    cmpl-float v0, v0, v11

    if-ltz v0, :cond_eb

    .line 4309
    iput v11, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatarProgress:F

    const/4 v2, 0x0

    .line 4310
    iput-boolean v2, v9, Lorg/telegram/ui/Cells/DialogCell;->animatingArchiveAvatar:Z

    :cond_eb
    move/from16 v25, v14

    .line 4314
    :cond_ec
    iget-boolean v0, v9, Lorg/telegram/ui/Cells/DialogCell;->drawRevealBackground:Z

    if-eqz v0, :cond_ee

    .line 4315
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    cmpg-float v2, v0, v10

    if-gez v2, :cond_ed

    add-float/2addr v0, v1

    .line 4316
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_ed

    .line 4318
    iput v10, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    move/from16 v25, v14

    .line 4322
    :cond_ed
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpg-float v1, v0, v10

    if-gez v1, :cond_f0

    const v1, 0x3d5a740e

    add-float/2addr v0, v1

    .line 4323
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_f1

    .line 4325
    iput v10, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    goto :goto_77

    .line 4330
    :cond_ee
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    cmpl-float v0, v0, v10

    if-nez v0, :cond_ef

    .line 4331
    iput v13, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    move/from16 v25, v14

    .line 4334
    :cond_ef
    iget v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpl-float v1, v0, v13

    if-lez v1, :cond_f0

    const v1, 0x3d5a740e

    sub-float/2addr v0, v1

    .line 4335
    iput v0, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    cmpg-float v0, v0, v13

    if-gez v0, :cond_f1

    .line 4337
    iput v13, v9, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    goto :goto_77

    :cond_f0
    move/from16 v14, v25

    :cond_f1
    :goto_77
    if-eqz v14, :cond_f2

    .line 4344
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    :cond_f2
    return-void

    nop

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

    .line 4873
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4874
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

    .line 4875
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x10

    .line 4877
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x20

    .line 4878
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 4879
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 4880
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v1, Lorg/telegram/messenger/R$id;->acc_action_chat_preview:I

    sget v2, Lorg/telegram/messenger/R$string;->AccActionChatPreview:I

    const-string v3, "AccActionChatPreview"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4883
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "android.widget.CheckBox"

    .line 4884
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 4885
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 4886
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 5321
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

    .line 5324
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 898
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    if-nez p1, :cond_0

    return-void

    .line 901
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 p3, 0x0

    if-eqz p1, :cond_9

    .line 902
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

    .line 904
    iget-boolean p5, p0, Lorg/telegram/ui/Cells/DialogCell;->inPreviewMode:Z

    if-eqz p5, :cond_3

    const/16 p1, 0x8

    .line 905
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 906
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    iget-object p4, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p2, p4

    shr-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 908
    :cond_3
    sget-boolean p5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p5, :cond_4

    sub-int/2addr p4, p2

    sub-int p1, p4, p1

    .line 909
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

    .line 912
    :goto_4
    iget-boolean p4, p0, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz p4, :cond_8

    .line 913
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz p2, :cond_7

    .line 914
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/DialogCell;->calcCompactDrawingElementTop(I)I

    move-result p2

    goto :goto_5

    :cond_7
    const/16 p1, 0x25

    .line 916
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const/16 p2, 0x17

    .line 917
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 921
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

    .line 923
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x10

    .line 924
    iget p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSize:I

    if-ne p1, p2, :cond_a

    iget-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->updateLayout:Z

    if-eqz p2, :cond_b

    .line 925
    :cond_a
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/DialogCell;->updateLayout:Z

    .line 926
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSize:I

    .line 928
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 930
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_b
    :goto_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 856
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p2, :cond_0

    const/16 v0, 0x18

    .line 858
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 859
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 857
    invoke-virtual {p2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 862
    :cond_0
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz p2, :cond_4

    .line 863
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

    .line 864
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkTwoLinesForName()V

    .line 867
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->computeHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    const/4 p1, 0x0

    .line 868
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->topClip:I

    .line 869
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->bottomClip:I

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7

    .line 4892
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4894
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, ". "

    if-eq v1, v3, :cond_9

    if-ne v1, v2, :cond_0

    goto/16 :goto_2

    .line 4898
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v1, :cond_1

    .line 4899
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrSecretChat:I

    const-string v2, "AccDescrSecretChat"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4900
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4902
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v1, :cond_2

    .line 4903
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrTopic:I

    const-string v2, "AccDescrTopic"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4904
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4905
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4906
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 4907
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_7

    .line 4908
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4909
    sget v1, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    const-string v2, "RepliesTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4910
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isAnonymous(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4911
    sget v1, Lorg/telegram/messenger/R$string;->AnonymousForward:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4913
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v1, :cond_5

    .line 4914
    sget v1, Lorg/telegram/messenger/R$string;->Bot:I

    const-string v2, "Bot"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4915
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4917
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v2, :cond_6

    .line 4918
    sget v1, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v2, "SavedMessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4920
    :cond_6
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4923
    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 4924
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_b

    .line 4925
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    if-eqz v1, :cond_8

    .line 4926
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrChannel:I

    const-string v2, "AccDescrChannel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4928
    :cond_8
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrGroup:I

    const-string v2, "AccDescrGroup"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4930
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4931
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4932
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_9
    :goto_2
    if-ne v1, v2, :cond_a

    .line 4895
    sget v1, Lorg/telegram/messenger/R$string;->hidden_chats_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_a
    sget v1, Lorg/telegram/messenger/R$string;->ArchivedChats:I

    const-string v2, "ArchivedChats"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4896
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4935
    :cond_b
    :goto_4
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->drawVerified:Z

    if-eqz v1, :cond_c

    .line 4936
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrVerified:I

    const-string v2, "AccDescrVerified"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4937
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4939
    :cond_c
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-eqz v1, :cond_d

    .line 4940
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrNotificationsMuted:I

    const-string v2, "AccDescrNotificationsMuted"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4941
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4943
    :cond_d
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4944
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrUserOnline:I

    const-string v2, "AccDescrUserOnline"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4945
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4947
    :cond_e
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    const/4 v2, 0x0

    if-lez v1, :cond_f

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "NewMessages"

    .line 4948
    invoke-static {v6, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4949
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4951
    :cond_f
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    if-lez v1, :cond_10

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "AccDescrMentionCount"

    .line 4952
    invoke-static {v6, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4953
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4955
    :cond_10
    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-lez v1, :cond_11

    .line 4956
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrMentionReaction:I

    const-string v5, "AccDescrMentionReaction"

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4957
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4959
    :cond_11
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_1e

    iget v5, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v5, :cond_12

    goto/16 :goto_8

    .line 4964
    :cond_12
    iget v5, p0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    if-nez v5, :cond_13

    .line 4966
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    :cond_13
    int-to-long v5, v5

    .line 4968
    invoke-static {v5, v6, v3}, Lorg/telegram/messenger/LocaleController;->formatDateAudio(JZ)Ljava/lang/String;

    move-result-object v1

    .line 4969
    iget-object v5, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 4970
    sget v5, Lorg/telegram/messenger/R$string;->AccDescrSentDate:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v1, "AccDescrSentDate"

    invoke-static {v1, v5, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 4972
    :cond_14
    sget v5, Lorg/telegram/messenger/R$string;->AccDescrReceivedDate:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v1, "AccDescrReceivedDate"

    invoke-static {v1, v5, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4974
    :goto_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4975
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-nez v1, :cond_15

    .line 4976
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

    if-eqz v1, :cond_15

    .line 4978
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v3, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4979
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4982
    :cond_15
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v1, :cond_1d

    .line 4983
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4984
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4985
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v3

    if-nez v3, :cond_17

    .line 4986
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->getCaptionMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 4987
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 4988
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_16

    .line 4989
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4991
    :cond_16
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4994
    :cond_17
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->messageLayout:Landroid/text/StaticLayout;

    if-nez v3, :cond_18

    const/4 v3, -0x1

    goto :goto_6

    :cond_18
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    :goto_6
    if-lez v3, :cond_1c

    .line 4996
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const-string v5, "\n"

    .line 4997
    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-ge v5, v4, :cond_19

    if-ltz v5, :cond_19

    move v4, v5

    :cond_19
    const-string v5, "\t"

    .line 4999
    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-ge v5, v4, :cond_1a

    if-ltz v5, :cond_1a

    move v4, v5

    :cond_1a
    const-string v5, " "

    .line 5001
    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ge v3, v4, :cond_1b

    if-ltz v3, :cond_1b

    move v4, v3

    .line 5003
    :cond_1b
    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 5005
    :cond_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 5008
    :cond_1d
    :goto_7
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5009
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 4960
    :cond_1e
    :goto_8
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4961
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onReorderStateChanged(ZZ)V
    .locals 2

    .line 4829
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    if-ne v0, p1, :cond_3

    .line 4830
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->getIsPinned()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 4831
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    :cond_2
    return-void

    .line 4835
    :cond_3
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->drawReorder:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    if-eqz p1, :cond_4

    move v0, v1

    .line 4837
    :cond_4
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    move v0, v1

    .line 4839
    :goto_0
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->reorderIconProgress:F

    .line 4841
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 5337
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

    .line 5340
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->delegate:Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;->canClickButtonInside()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5341
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastTopicMessageUnread:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogCell;->buttonLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    if-nez v2, :cond_2

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CanvasButton;->checkTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5345
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 4864
    sget v0, Lorg/telegram/messenger/R$id;->acc_action_chat_preview:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->parentFragment:Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_0

    .line 4865
    invoke-virtual {v0, p0}, Lorg/telegram/ui/DialogsActivity;->showChatPreview(Lorg/telegram/ui/Cells/DialogCell;)Z

    const/4 p1, 0x1

    return p1

    .line 4868
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public resetPinnedArchiveState()V
    .locals 4

    .line 839
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

    .line 840
    :goto_1
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archiveBackgroundProgress:F

    .line 841
    iget-object v3, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setArchivedAvatarHiddenProgress(F)V

    .line 842
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    const/4 v0, 0x0

    .line 843
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    .line 844
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

    .line 845
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->attachedToWindow:Z

    .line 846
    iput v2, p0, Lorg/telegram/ui/Cells/DialogCell;->cornerProgress:F

    .line 847
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Cells/DialogCell;->setTranslationX(F)V

    .line 848
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 849
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->attachedToWindow:Z

    if-eqz v1, :cond_3

    .line 850
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    :cond_3
    return-void
.end method

.method public setArchivedPullAnimation(Lorg/telegram/ui/Components/PullForegroundDrawable;)V
    .locals 0

    .line 5367
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    return-void
.end method

.method public setBottomClip(I)V
    .locals 0

    .line 5363
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->bottomClip:I

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 4

    .line 2813
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_2

    .line 2817
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

    .line 2824
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 2825
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 2826
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 2827
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2829
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 2830
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkTtl()V

    return-void
.end method

.method public setClipProgress(F)V
    .locals 0

    .line 5350
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->clipProgress:F

    .line 5351
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method

.method public setCompactMode(Z)V
    .locals 1

    .line 158
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setCompactMode(Z)V

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    goto :goto_0

    :cond_0
    const/16 p1, 0x15

    .line 161
    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CheckBox2;->setSize(I)V

    :cond_1
    return-void
.end method

.method public setDialog(JLorg/telegram/messenger/MessageObject;IZZ)V
    .locals 2

    .line 754
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 755
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    .line 757
    :cond_0
    iput-wide p1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    .line 758
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Cells/DialogCell;->lastDialogChangedTime:J

    .line 759
    iput-object p3, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    .line 760
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/DialogCell;->useMeForMyMessages:Z

    const/4 p1, 0x0

    .line 761
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    .line 762
    iput p4, p0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    if-eqz p3, :cond_1

    .line 763
    iget-object p2, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    .line 764
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 765
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-eqz p3, :cond_2

    .line 766
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    goto :goto_0

    :cond_2
    move p2, p1

    :goto_0
    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->messageId:I

    .line 767
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 768
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-eqz p3, :cond_3

    .line 769
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    move p2, p1

    :goto_1
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 770
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz p2, :cond_4

    .line 771
    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    .line 773
    :cond_4
    invoke-virtual {p0, p1, p6}, Lorg/telegram/ui/Cells/DialogCell;->update(IZ)Z

    return-void
.end method

.method public setDialog(Lorg/telegram/tgnet/TLRPC$Dialog;IIZ)V
    .locals 4

    .line 659
    iget-wide v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 660
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 661
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 662
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 664
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->statusDrawableAnimationInProgress:Z

    const/4 v0, -0x1

    .line 665
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    .line 667
    :cond_1
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    iput-wide v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    .line 668
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastDialogChangedTime:J

    const/4 v0, 0x1

    .line 669
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    .line 670
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    if-eqz v2, :cond_2

    .line 671
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    .line 672
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;->folder:Lorg/telegram/tgnet/TLRPC$TL_folder;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_folder;->id:I

    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    .line 673
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz p1, :cond_3

    .line 674
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setCell(Landroid/view/View;)V

    goto :goto_0

    .line 677
    :cond_2
    iput v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    .line 679
    :cond_3
    :goto_0
    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 p1, 0x3

    if-ne p2, p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    .line 680
    :goto_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/DialogCell;->showPremiumBlocked(Z)V

    .line 681
    iput p3, p0, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    .line 682
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/DialogCell;->isForward:Z

    .line 683
    iput v1, p0, Lorg/telegram/ui/Cells/DialogCell;->messageId:I

    .line 684
    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/Cells/DialogCell;->update(IZ)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 685
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 687
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkOnline()V

    .line 688
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkGroupCall()V

    .line 689
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkChatTheme()V

    .line 690
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkTtl()V

    return-void
.end method

.method public setDialog(Lorg/telegram/ui/Cells/DialogCell$CustomDialog;)V
    .locals 0

    .line 698
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    const/4 p1, 0x0

    .line 699
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->messageId:I

    .line 700
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/DialogCell;->update(I)Z

    .line 701
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkOnline()V

    .line 702
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkGroupCall()V

    .line 703
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkChatTheme()V

    .line 704
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DialogCell;->checkTtl()V

    return-void
.end method

.method public setDialogCellDelegate(Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;)V
    .locals 0

    .line 5383
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->delegate:Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;

    return-void
.end method

.method public setDialogSelected(Z)V
    .locals 1

    .line 2791
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    if-eq v0, p1, :cond_0

    .line 2792
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    .line 2794
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->isSelected:Z

    return-void
.end method

.method public setDialogsType(I)V
    .locals 0

    .line 166
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    return-void
.end method

.method public setForumTopic(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;JLorg/telegram/messenger/MessageObject;ZZ)V
    .locals 5

    .line 282
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 283
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    .line 284
    iget-wide v2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    cmp-long v2, v2, p2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 285
    iput v3, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    .line 287
    :cond_1
    iget-object v2, p4, Lorg/telegram/messenger/MessageObject;->topicIconDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v2, v1

    instance-of v4, v4, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    if-eqz v4, :cond_2

    .line 288
    aget-object v2, v2, v1

    check-cast v2, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_color:I

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;->setColor(I)V

    .line 290
    :cond_2
    iput-wide p2, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastDialogChangedTime:J

    .line 292
    iput-object p4, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    .line 293
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    .line 294
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/DialogCell;->showTopicIconInName:Z

    .line 296
    iget-object p2, p4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p3, p2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput p3, p0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 297
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    .line 298
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    .line 299
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->messageId:I

    .line 300
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v0

    goto :goto_1

    :cond_3
    move p2, v1

    :goto_1
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 302
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz p2, :cond_4

    .line 303
    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput p2, p0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    :cond_4
    if-nez p6, :cond_5

    .line 306
    iput v3, p0, Lorg/telegram/ui/Cells/DialogCell;->lastStatusDrawableParams:I

    :cond_5
    if-eqz p1, :cond_6

    .line 309
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->groupedMessages:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    .line 311
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz p1, :cond_7

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne p1, v0, :cond_7

    .line 312
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz p1, :cond_7

    .line 313
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setCell(Landroid/view/View;)V

    .line 316
    :cond_7
    invoke-virtual {p0, v1, p6}, Lorg/telegram/ui/Cells/DialogCell;->update(IZ)Z

    return-void
.end method

.method public setIsTransitionSupport(Z)V
    .locals 0

    .line 327
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->isTransitionSupport:Z

    return-void
.end method

.method public setMoving(Z)V
    .locals 0

    .line 274
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->moving:Z

    return-void
.end method

.method public setPinForced(Z)V
    .locals 0

    .line 952
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->drawPinForced:Z

    .line 953
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    if-lez p1, :cond_0

    .line 954
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    .line 956
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method

.method public setPreloader(Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;)V
    .locals 0

    .line 785
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->preloader:Lorg/telegram/ui/Adapters/DialogsAdapter$DialogsPreloader;

    return-void
.end method

.method public setRightFragmentOpenedProgress(F)V
    .locals 1

    .line 320
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 321
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOpenedProgress:F

    .line 322
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

    .line 4845
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    return-void
.end method

.method public setTopClip(I)V
    .locals 0

    .line 5359
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->topClip:I

    return-void
.end method

.method public setTranslationX(F)V
    .locals 6

    .line 3325
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 3328
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    .line 3329
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->translationDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    cmpl-float p1, p1, v3

    if-nez p1, :cond_2

    .line 3330
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    .line 3331
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->translationAnimationStarted:Z

    .line 3332
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

    .line 3333
    iput v3, p0, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    .line 3334
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    .line 3336
    :cond_2
    iget p1, p0, Lorg/telegram/ui/Cells/DialogCell;->translationX:F

    cmpl-float v0, p1, v3

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 3337
    iput-boolean v4, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    goto :goto_1

    .line 3339
    :cond_3
    iput v3, p0, Lorg/telegram/ui/Cells/DialogCell;->currentRevealBounceProgress:F

    .line 3340
    iput v3, p0, Lorg/telegram/ui/Cells/DialogCell;->currentRevealProgress:F

    .line 3341
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/DialogCell;->drawRevealBackground:Z

    .line 3343
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->isSliding:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->swipeCanceled:Z

    if-nez v0, :cond_6

    .line 3344
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->drawRevealBackground:Z

    .line 3345
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

    .line 3346
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

    .line 3348
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3352
    :catch_0
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 343
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell;->visibleOnScreen:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 346
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell;->visibleOnScreen:Z

    if-eqz p1, :cond_1

    .line 348
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    :cond_1
    return-void
.end method

.method public showPremiumBlocked(Z)V
    .locals 2

    .line 5659
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->unsubscribePremiumBlocked:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eq p1, v1, :cond_2

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 5661
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 5662
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->unsubscribePremiumBlocked:Ljava/lang/Runnable;

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 5664
    iget p1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->userIsPremiumBlockedUpadted:I

    new-instance v1, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {p1, p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->listen(Landroid/view/View;ILorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell;->unsubscribePremiumBlocked:Ljava/lang/Runnable;

    :cond_2
    :goto_1
    return-void
.end method

.method public startOutAnimation()V
    .locals 3

    .line 4809
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz v0, :cond_2

    .line 4810
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x18

    .line 4811
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outCy:F

    .line 4812
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outCx:F

    .line 4813
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outRadius:F

    .line 4814
    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outImageSize:F

    goto :goto_0

    .line 4816
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outCy:F

    .line 4817
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outCx:F

    .line 4818
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outRadius:F

    .line 4819
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->hasHiddenStories()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4820
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    iget v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outRadius:F

    const/high16 v2, 0x40600000    # 3.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outRadius:F

    .line 4822
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/PullForegroundDrawable;->outImageSize:F

    .line 4824
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->archivedChatsDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->startOutAnimation()V

    :cond_2
    return-void
.end method

.method public update(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 2867
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/DialogCell;->update(IZ)Z

    move-result p1

    return p1
.end method

.method public update(IZ)Z
    .locals 33

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 2874
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v2

    const/4 v3, 0x0

    .line 2876
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    .line 2878
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->customDialog:Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_2

    .line 2879
    iget v9, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    iput v9, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 2880
    iget v9, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    if-eqz v9, :cond_0

    move v10, v8

    goto :goto_0

    :cond_0
    move v10, v3

    :goto_0
    iput-boolean v10, v0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 2881
    iput v9, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2882
    iget-boolean v9, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    iput-boolean v9, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    .line 2883
    iget-boolean v9, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    iput-boolean v9, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    .line 2884
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    .line 2885
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v10, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    int-to-long v10, v10

    iget-object v4, v4, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    invoke-virtual {v9, v10, v11, v4, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 2886
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v13, 0x0

    iget-object v15, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-string v14, "50_50"

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/messenger/ImageReceiver;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;J)V

    move v4, v3

    .line 2887
    :goto_1
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell;->thumbImage:[Lorg/telegram/messenger/ImageReceiver;

    array-length v10, v9

    if-ge v4, v10, :cond_1

    .line 2888
    aget-object v9, v9, v4

    invoke-virtual {v9, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2890
    :cond_1
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 2891
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    move v5, v3

    const/4 v4, 0x0

    goto/16 :goto_2c

    .line 2893
    :cond_2
    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2894
    iget v9, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-eqz v9, :cond_3

    move v9, v8

    goto :goto_2

    :cond_3
    move v9, v3

    .line 2895
    :goto_2
    iget-boolean v10, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    .line 2896
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    const/4 v11, -0x1

    .line 2897
    iput v11, v0, Lorg/telegram/ui/Cells/DialogCell;->readOutboxMaxId:I

    .line 2898
    iget-boolean v11, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v11, :cond_18

    .line 2899
    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v11, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v5, :cond_16

    .line 2901
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->read_outbox_max_id:I

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->readOutboxMaxId:I

    .line 2902
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->ttl_period:I

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->ttlPeriod:I

    if-nez p1, :cond_17

    .line 2904
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v12, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v6, v12, v13}, Lorg/telegram/messenger/MessagesController;->isClearingDialog(J)Z

    move-result v6

    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->clearingDialog:Z

    .line 2905
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogMessage:Landroidx/collection/LongSparseArray;

    iget-wide v12, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v6, v12, v13}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 2906
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    goto :goto_3

    :cond_4
    move-object v6, v7

    :goto_3
    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_5

    .line 2907
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v8

    goto :goto_4

    :cond_5
    move v6, v3

    :goto_4
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    .line 2908
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v12, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v6, v12}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 2909
    iget-boolean v12, v6, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v12, :cond_6

    iget-boolean v12, v0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    :cond_6
    if-eqz v6, :cond_8

    .line 2910
    iget-boolean v12, v6, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v12, :cond_8

    .line 2911
    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v12

    iget-wide v14, v6, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v12, v14, v15}, Lorg/telegram/messenger/TopicsController;->getForumUnreadCount(J)[I

    move-result-object v6

    .line 2912
    aget v12, v6, v3

    iput v12, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2913
    aget v12, v6, v8

    iput v12, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    const/4 v12, 0x2

    .line 2914
    aget v14, v6, v12

    iput v14, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    const/4 v11, 0x3

    .line 2915
    aget v6, v6, v11

    if-eqz v6, :cond_7

    move v6, v8

    goto :goto_5

    :cond_7
    move v6, v3

    :goto_5
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    goto :goto_7

    .line 2916
    :cond_8
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    if-eqz v6, :cond_a

    .line 2917
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    if-ne v6, v8, :cond_9

    move v6, v3

    goto :goto_6

    :cond_9
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessagesStorage;->getArchiveUnreadCount()I

    move-result v6

    :goto_6
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2918
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 2919
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    goto :goto_7

    .line 2921
    :cond_a
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2922
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mentions_count:I

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 2923
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_reactions_count:I

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    .line 2925
    :goto_7
    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mark:Z

    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    .line 2926
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_b

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    .line 2927
    :cond_b
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->last_message_date:I

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 2929
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    if-nez v6, :cond_d

    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lcom/iMe/fork/controller/ForkTopicsController;->getInstance(I)Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v6

    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    if-ne v12, v8, :cond_c

    move v12, v8

    goto :goto_8

    :cond_c
    move v12, v3

    :goto_8
    invoke-virtual {v6, v12}, Lcom/iMe/fork/controller/ForkTopicsController;->hasSelectedTopic(Z)Z

    move-result v6

    if-nez v6, :cond_e

    :cond_d
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lcom/iMe/fork/controller/HiddenChatsController;->getInstance(I)Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v14

    invoke-virtual {v6, v14, v15}, Lcom/iMe/fork/controller/HiddenChatsController;->isChatHidden(J)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2930
    :cond_e
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    goto :goto_e

    .line 2932
    :cond_f
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v12, 0x7

    if-eq v6, v12, :cond_12

    const/16 v12, 0x8

    if-ne v6, v12, :cond_10

    goto :goto_a

    .line 2936
    :cond_10
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v6, :cond_11

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->pinned:Z

    if-eqz v5, :cond_11

    move v5, v8

    goto :goto_9

    :cond_11
    move v5, v3

    :goto_9
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    goto :goto_e

    .line 2933
    :cond_12
    :goto_a
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-boolean v12, v0, Lorg/telegram/ui/Cells/DialogCell;->isForward:Z

    iget v14, v0, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    if-ne v14, v8, :cond_13

    move v14, v8

    goto :goto_b

    :cond_13
    move v14, v3

    :goto_b
    invoke-virtual {v6, v12, v14}, Lorg/telegram/messenger/MessagesController;->getSelectedDialogFilter(ZZ)[Lorg/telegram/messenger/MessagesController$DialogFilter;

    move-result-object v6

    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/16 v14, 0x8

    if-ne v12, v14, :cond_14

    move v12, v8

    goto :goto_c

    :cond_14
    move v12, v3

    :goto_c
    aget-object v6, v6, v12

    if-eqz v6, :cond_15

    .line 2934
    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v14, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v6, v14, v15}, Lorg/telegram/messenger/support/LongSparseIntArray;->indexOfKey(J)I

    move-result v5

    if-ltz v5, :cond_15

    move v5, v8

    goto :goto_d

    :cond_15
    move v5, v3

    :goto_d
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    .line 2938
    :goto_e
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_17

    .line 2939
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    goto :goto_f

    .line 2943
    :cond_16
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2944
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 2945
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    .line 2947
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageDate:I

    .line 2948
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->clearingDialog:Z

    .line 2950
    :cond_17
    :goto_f
    iget-wide v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const-wide/16 v14, 0x0

    cmp-long v12, v5, v14

    if-eqz v12, :cond_19

    sget-wide v14, Lorg/telegram/ui/RightSlidingDialogContainer;->fragmentDialogId:J

    cmp-long v5, v5, v14

    goto :goto_10

    .line 2952
    :cond_18
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    .line 2954
    :cond_19
    :goto_10
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v5, :cond_1a

    .line 2955
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 2956
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_mentions_count:I

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 2957
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_reactions_count:I

    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    .line 2959
    :cond_1a
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogsType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1b

    .line 2960
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawPin:Z

    :cond_1b
    if-eqz p1, :cond_3c

    .line 2965
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

    .line 2966
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v14, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 2967
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->wasDrawnOnline:Z

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isOnline()Z

    move-result v6

    if-eq v5, v6, :cond_1c

    move v5, v8

    goto :goto_11

    :cond_1c
    move v5, v3

    .line 2971
    :goto_11
    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_EMOJI_STATUS:I

    and-int v6, p1, v6

    if-eqz v6, :cond_24

    .line 2972
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v6, :cond_22

    .line 2973
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v14, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 2975
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled()Z

    move-result v5

    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumBadgeEnabled:Z

    .line 2976
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled()Z

    move-result v5

    iput-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumStatusEnabled:Z

    .line 2977
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

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v14, v12, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v5, v5, v14

    if-eqz v5, :cond_1e

    const-wide/16 v5, 0x0

    cmp-long v12, v14, v5

    if-eqz v12, :cond_1e

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

    if-eqz v5, :cond_21

    .line 2981
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumStatusEnabled:Z

    if-eqz v5, :cond_1f

    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_1f

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v5}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v5

    const-wide/16 v14, 0x0

    cmp-long v5, v5, v14

    if-eqz v5, :cond_1f

    .line 2982
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 2983
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v6}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v14

    invoke-virtual {v5, v14, v15, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    goto :goto_13

    .line 2985
    :cond_1f
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 2987
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->isShowPremiumBadgeEnabled:Z

    if-nez v5, :cond_20

    .line 2988
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 2989
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v5, v7, v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_13

    .line 2991
    :cond_20
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarDrawableMini:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    :cond_21
    :goto_13
    move v5, v8

    .line 2995
    :cond_22
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v6, :cond_24

    .line 2996
    iget v5, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v14, v6, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_23

    .line 2997
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v5}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v5

    const-wide/16 v14, 0x0

    cmp-long v5, v5, v14

    if-eqz v5, :cond_23

    .line 2998
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 2999
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v6}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v14

    invoke-virtual {v5, v14, v15, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    goto :goto_14

    .line 3001
    :cond_23
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->nameLayoutEllipsizeByGradient:Z

    .line 3002
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarDrawableMini:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    :goto_14
    move v5, v8

    .line 3007
    :cond_24
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-nez v6, :cond_25

    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-eqz v6, :cond_29

    .line 3008
    :cond_25
    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_USER_PRINT:I

    and-int v6, p1, v6

    if-eqz v6, :cond_29

    .line 3009
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v19

    iget-wide v14, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result v6

    int-to-long v11, v6

    const/16 v24, 0x1

    move-wide/from16 v20, v14

    move-wide/from16 v22, v11

    invoke-virtual/range {v19 .. v24}, Lorg/telegram/messenger/MessagesController;->getPrintingString(JJZ)Ljava/lang/CharSequence;

    move-result-object v6

    .line 3010
    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->lastPrintString:Ljava/lang/CharSequence;

    if-eqz v11, :cond_26

    if-eqz v6, :cond_28

    :cond_26
    if-nez v11, :cond_27

    if-nez v6, :cond_28

    :cond_27
    if-eqz v11, :cond_29

    invoke-virtual {v11, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29

    :cond_28
    move v6, v8

    goto :goto_15

    :cond_29
    move v6, v3

    :goto_15
    if-nez v6, :cond_2a

    .line 3015
    sget v11, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_MESSAGE_TEXT:I

    and-int v11, p1, v11

    if-eqz v11, :cond_2a

    .line 3016
    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v11, :cond_2a

    iget-object v11, v11, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->lastMessageString:Ljava/lang/CharSequence;

    if-eq v11, v12, :cond_2a

    move v6, v8

    :cond_2a
    if-nez v6, :cond_2c

    .line 3020
    sget v11, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT:I

    and-int v11, p1, v11

    if-eqz v11, :cond_2c

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v11, :cond_2c

    .line 3021
    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v14, v12, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v11

    .line 3022
    iget-boolean v12, v11, Lorg/telegram/tgnet/TLRPC$Chat;->call_active:Z

    if-eqz v12, :cond_2b

    iget-boolean v11, v11, Lorg/telegram/tgnet/TLRPC$Chat;->call_not_empty:Z

    if-eqz v11, :cond_2b

    move v11, v8

    goto :goto_16

    :cond_2b
    move v11, v3

    :goto_16
    iget-boolean v12, v0, Lorg/telegram/ui/Cells/DialogCell;->hasCall:Z

    if-eq v11, v12, :cond_2c

    move v6, v8

    :cond_2c
    if-nez v6, :cond_2d

    .line 3026
    sget v11, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int v11, p1, v11

    if-eqz v11, :cond_2d

    .line 3027
    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v11, :cond_2d

    move v6, v8

    :cond_2d
    if-nez v6, :cond_2e

    .line 3031
    sget v11, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int v11, p1, v11

    if-eqz v11, :cond_2e

    .line 3032
    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v11, :cond_2e

    move v6, v8

    :cond_2e
    if-nez v6, :cond_2f

    .line 3036
    sget v11, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT_AVATAR:I

    and-int v11, p1, v11

    if-eqz v11, :cond_2f

    .line 3037
    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v11, :cond_2f

    move v6, v8

    :cond_2f
    if-nez v6, :cond_30

    .line 3041
    sget v11, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT_NAME:I

    and-int v11, p1, v11

    if-eqz v11, :cond_30

    .line 3042
    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v11, :cond_30

    move v6, v8

    :cond_30
    if-nez v6, :cond_39

    .line 3047
    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v11, :cond_31

    iget-boolean v12, v0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v11

    if-eq v12, v11, :cond_31

    .line 3048
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v6

    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->lastUnreadState:Z

    move v6, v8

    .line 3051
    :cond_31
    iget-boolean v11, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v11, :cond_39

    .line 3052
    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v14, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-virtual {v11, v14, v15}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v11, :cond_32

    move-object v12, v7

    goto :goto_17

    .line 3057
    :cond_32
    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-wide v14, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v14, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v12

    :goto_17
    if-eqz v12, :cond_34

    .line 3058
    iget-boolean v14, v12, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v14, :cond_34

    .line 3059
    iget v14, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v14

    iget-wide v7, v12, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v14, v7, v8}, Lorg/telegram/messenger/TopicsController;->getForumUnreadCount(J)[I

    move-result-object v7

    .line 3060
    aget v8, v7, v3

    const/4 v12, 0x1

    .line 3061
    aget v14, v7, v12

    const/4 v12, 0x2

    .line 3062
    aget v20, v7, v12

    const/4 v12, 0x3

    .line 3063
    aget v7, v7, v12

    if-eqz v7, :cond_33

    const/4 v7, 0x1

    goto :goto_18

    :cond_33
    move v7, v3

    :goto_18
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell;->hasUnmutedTopics:Z

    move/from16 v7, v20

    goto :goto_1a

    .line 3064
    :cond_34
    instance-of v7, v11, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    if-eqz v7, :cond_36

    .line 3065
    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->folderId:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_35

    move v8, v3

    goto :goto_19

    :cond_35
    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MessagesStorage;->getArchiveUnreadCount()I

    move-result v7

    move v8, v7

    :goto_19
    move v7, v3

    move v14, v7

    goto :goto_1a

    :cond_36
    if-eqz v11, :cond_37

    .line 3068
    iget v8, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    .line 3069
    iget v14, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mentions_count:I

    .line 3070
    iget v7, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_reactions_count:I

    goto :goto_1a

    :cond_37
    move v7, v3

    move v8, v7

    move v14, v8

    :goto_1a
    if-eqz v11, :cond_39

    .line 3075
    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-ne v12, v8, :cond_38

    iget-boolean v12, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    iget-boolean v13, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mark:Z

    if-ne v12, v13, :cond_38

    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    if-ne v12, v14, :cond_38

    iget v12, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-eq v12, v7, :cond_39

    .line 3076
    :cond_38
    iput v8, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    .line 3077
    iput v14, v0, Lorg/telegram/ui/Cells/DialogCell;->mentionCount:I

    .line 3078
    iget-boolean v6, v11, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mark:Z

    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    .line 3079
    iput v7, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    const/4 v6, 0x1

    :cond_39
    if-nez v6, :cond_3a

    .line 3084
    sget v7, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_SEND_STATE:I

    and-int v7, p1, v7

    if-eqz v7, :cond_3a

    .line 3085
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v7, :cond_3a

    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eq v8, v7, :cond_3a

    .line 3086
    iput v7, v0, Lorg/telegram/ui/Cells/DialogCell;->lastSendState:I

    const/4 v6, 0x1

    :cond_3a
    if-nez v6, :cond_3b

    .line 3093
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    return v3

    :cond_3b
    const/4 v6, 0x0

    goto :goto_1b

    :cond_3c
    move v5, v3

    move-object v6, v7

    .line 3099
    :goto_1b
    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 3100
    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3101
    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 3104
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-eqz v6, :cond_3e

    .line 3105
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    .line 3106
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    .line 3107
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->findFolderTopMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_3d

    .line 3109
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    goto :goto_1c

    :cond_3d
    const-wide/16 v6, 0x0

    :goto_1c
    const-wide/16 v11, 0x0

    goto :goto_1f

    .line 3114
    :cond_3e
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    .line 3115
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v6, :cond_40

    .line 3116
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    const-wide/16 v11, 0x0

    invoke-virtual {v6, v7, v8, v11, v12}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v6

    .line 3117
    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v11, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v13, v8

    invoke-virtual {v7, v11, v12, v13, v14}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v7

    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell;->topicMuted:Z

    if-ne v6, v7, :cond_3f

    .line 3119
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    .line 3120
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    goto :goto_1e

    .line 3122
    :cond_3f
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    const/4 v6, 0x1

    xor-int/2addr v7, v6

    .line 3123
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    goto :goto_1e

    .line 3126
    :cond_40
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v6, :cond_41

    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getTopicId()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v6, v7, v8, v11, v12}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v6

    if-eqz v6, :cond_41

    const/4 v6, 0x1

    goto :goto_1d

    :cond_41
    move v6, v3

    :goto_1d
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    .line 3129
    :goto_1e
    iget-wide v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogId:J

    goto :goto_1c

    :goto_1f
    cmp-long v8, v6, v11

    if-eqz v8, :cond_45

    .line 3133
    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 3134
    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v6, :cond_44

    .line 3136
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

    goto :goto_20

    .line 3138
    :cond_42
    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v8

    if-eqz v8, :cond_43

    .line 3139
    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_20

    .line 3141
    :cond_43
    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3142
    iget-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-nez v7, :cond_44

    if-eqz v6, :cond_44

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v6, :cond_44

    .line 3143
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

    if-eqz v6, :cond_44

    .line 3145
    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3149
    :cond_44
    :goto_20
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->useMeForMyMessages:Z

    if-eqz v6, :cond_45

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v6, :cond_45

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v6

    if-eqz v6, :cond_45

    .line 3150
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

    .line 3154
    :cond_45
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    const/16 v7, 0xc

    if-eqz v6, :cond_46

    .line 3155
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3156
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 3157
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

    goto/16 :goto_21

    .line 3159
    :cond_46
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->useFromUserAsAvatar:Z

    if-eqz v6, :cond_47

    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_47

    .line 3160
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getFromPeerObject()Lorg/telegram/tgnet/TLObject;

    move-result-object v6

    invoke-virtual {v8, v11, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLObject;)V

    .line 3161
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getFromPeerObject()Lorg/telegram/tgnet/TLObject;

    move-result-object v8

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v6, v8, v11}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_21

    .line 3162
    :cond_47
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v6, :cond_4c

    .line 3163
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-virtual {v8, v11, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    .line 3164
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 3165
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 3166
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

    goto/16 :goto_21

    .line 3167
    :cond_48
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->isAnonymous(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 3168
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v8, 0x15

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 3169
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

    goto/16 :goto_21

    .line 3170
    :cond_49
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v6

    if-eqz v6, :cond_4a

    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->isSavedDialog:Z

    if-eqz v6, :cond_4a

    .line 3171
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v8, 0x16

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 3172
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

    goto/16 :goto_21

    .line 3173
    :cond_4a
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v6

    if-eqz v6, :cond_4b

    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->useMeForMyMessages:Z

    if-nez v6, :cond_4b

    .line 3174
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 3175
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

    goto :goto_21

    .line 3177
    :cond_4b
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

    goto :goto_21

    .line 3179
    :cond_4c
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v6, :cond_4e

    .line 3180
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v11, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-virtual {v8, v11, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    .line 3182
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v11, v8, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v6, v11, v12}, Lorg/telegram/messenger/ChatObject;->isTemplatesChat(IJ)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 3183
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v8, 0x65

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 3184
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

    goto :goto_21

    .line 3186
    :cond_4d
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v6, v8, v11}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    :cond_4e
    :goto_21
    const-wide/16 v11, 0x96

    const-wide/16 v13, 0xdc

    if-eqz v1, :cond_5b

    .line 3190
    iget v8, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-ne v4, v8, :cond_4f

    iget-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-eq v10, v8, :cond_5b

    :cond_4f
    iget-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell;->isDialogCell:Z

    if-eqz v8, :cond_50

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    iget-wide v6, v0, Lorg/telegram/ui/Cells/DialogCell;->lastDialogChangedTime:J

    sub-long v17, v17, v6

    const-wide/16 v6, 0x64

    cmp-long v6, v17, v6

    if-lez v6, :cond_5b

    .line 3191
    :cond_50
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_51

    .line 3192
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_51
    const/4 v6, 0x2

    new-array v7, v6, [F

    .line 3194
    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    iput-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    .line 3195
    new-instance v8, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda2;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3199
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Lorg/telegram/ui/Cells/DialogCell$3;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Cells/DialogCell$3;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v4, :cond_52

    .line 3209
    iget-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-eqz v7, :cond_53

    :cond_52
    iget-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell;->markUnread:Z

    if-nez v7, :cond_55

    if-nez v10, :cond_53

    goto :goto_22

    .line 3212
    :cond_53
    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-nez v7, :cond_54

    .line 3213
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3214
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_23

    .line 3216
    :cond_54
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v11, 0x1ae

    invoke-virtual {v7, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3217
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_23

    .line 3210
    :cond_55
    :goto_22
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3211
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v8}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3219
    :goto_23
    iget-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount:Z

    if-eqz v7, :cond_59

    iget-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell;->drawCount2:Z

    if-eqz v7, :cond_59

    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    if-eqz v7, :cond_59

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    .line 3220
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v3

    const-string v10, "%d"

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v11, v7, [Ljava/lang/Object;

    .line 3221
    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v11, v3

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3223
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v10, v11, :cond_58

    .line 3224
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3225
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3226
    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move v6, v3

    .line 3227
    :goto_24
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v6, v15, :cond_57

    .line 3228
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v15, v13, :cond_56

    .line 3229
    new-instance v13, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v13}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v10, v13, v6, v14, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3230
    new-instance v13, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v13}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    invoke-virtual {v11, v13, v6, v14, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_25

    .line 3232
    :cond_56
    new-instance v13, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v13}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v12, v13, v6, v14, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_25
    add-int/lit8 v6, v6, 0x1

    const-wide/16 v13, 0xdc

    goto :goto_24

    :cond_57
    const/16 v6, 0xc

    .line 3236
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3237
    new-instance v7, Landroid/text/StaticLayout;

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    sget-object v23, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v19, v7

    move-object/from16 v20, v10

    move/from16 v22, v6

    invoke-direct/range {v19 .. v26}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    .line 3238
    new-instance v7, Landroid/text/StaticLayout;

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    sget-object v23, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object/from16 v19, v7

    move-object/from16 v20, v12

    invoke-direct/range {v19 .. v26}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationStableLayout:Landroid/text/StaticLayout;

    .line 3239
    new-instance v7, Landroid/text/StaticLayout;

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    sget-object v23, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object/from16 v19, v7

    move-object/from16 v20, v11

    invoke-direct/range {v19 .. v26}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationInLayout:Landroid/text/StaticLayout;

    goto :goto_26

    .line 3241
    :cond_58
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countLayout:Landroid/text/StaticLayout;

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countOldLayout:Landroid/text/StaticLayout;

    .line 3244
    :cond_59
    :goto_26
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidth:I

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countWidthOld:I

    .line 3245
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countLeft:I

    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell;->countLeftOld:I

    .line 3246
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->unreadCount:I

    if-le v6, v4, :cond_5a

    const/4 v12, 0x1

    goto :goto_27

    :cond_5a
    move v12, v3

    :goto_27
    iput-boolean v12, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimationIncrement:Z

    .line 3247
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 3250
    :cond_5b
    iget v4, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionMentionCount:I

    if-eqz v4, :cond_5c

    const/4 v12, 0x1

    goto :goto_28

    :cond_5c
    move v12, v3

    :goto_28
    if-eqz v1, :cond_5f

    if-eq v12, v9, :cond_5f

    .line 3252
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_5d

    .line 3253
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5d
    const/4 v4, 0x0

    .line 3255
    iput v4, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsChangeProgress:F

    const/4 v6, 0x2

    new-array v6, v6, [F

    .line 3256
    fill-array-data v6, :array_1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    .line 3257
    new-instance v7, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3261
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lorg/telegram/ui/Cells/DialogCell$4;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Cells/DialogCell$4;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v12, :cond_5e

    .line 3269
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0xdc

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3270
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v7}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_29

    .line 3272
    :cond_5e
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0x96

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3273
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3275
    :goto_29
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->reactionsMentionsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2a

    :cond_5f
    const/4 v4, 0x0

    .line 3278
    :goto_2a
    iget-object v6, v0, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v7, :cond_61

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v7, :cond_61

    iget v7, v0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v7, :cond_61

    iget-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell;->useFromUserAsAvatar:Z

    if-nez v7, :cond_61

    iget-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell;->isCompactMode:Z

    if-eqz v7, :cond_60

    const/16 v7, 0x8

    goto :goto_2b

    :cond_60
    const/16 v7, 0x10

    goto :goto_2b

    :cond_61
    const/16 v7, 0x1c

    :goto_2b
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 3280
    :goto_2c
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell;->isTopic:Z

    if-nez v6, :cond_63

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    if-nez v6, :cond_62

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    if-eqz v6, :cond_63

    :cond_62
    const/4 v12, 0x1

    goto :goto_2d

    :cond_63
    move v12, v3

    :goto_2d
    if-nez v5, :cond_66

    .line 3284
    iget-object v5, v0, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget v5, v5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    if-nez v5, :cond_64

    const/4 v5, 0x1

    goto :goto_2e

    :cond_64
    move v5, v3

    .line 3285
    :goto_2e
    iget v6, v0, Lorg/telegram/ui/Cells/DialogCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/Stories/StoriesUtilities;->getPredictiveUnreadState(Lorg/telegram/ui/Stories/StoriesController;J)I

    move-result v6

    if-nez v6, :cond_65

    const/4 v6, 0x1

    goto :goto_2f

    :cond_65
    move v6, v3

    :cond_66
    :goto_2f
    if-nez v1, :cond_69

    .line 3292
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMuted:Z

    if-nez v5, :cond_68

    iget-boolean v5, v0, Lorg/telegram/ui/Cells/DialogCell;->drawUnmute:Z

    if-eqz v5, :cond_67

    goto :goto_30

    :cond_67
    move v5, v4

    goto :goto_31

    :cond_68
    :goto_30
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_31
    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell;->dialogMutedProgress:F

    .line 3293
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell;->countAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_69

    .line 3294
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3298
    :cond_69
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    .line 3300
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v4

    if-eq v4, v2, :cond_6a

    const/4 v3, 0x1

    :cond_6a
    if-eqz v12, :cond_6c

    .line 3304
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->attachedToWindow:Z

    if-eqz v2, :cond_6b

    .line 3305
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    goto :goto_32

    :cond_6b
    const/4 v2, 0x1

    .line 3307
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->updateLayout:Z

    .line 3310
    :cond_6c
    :goto_32
    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/DialogCell;->updatePremiumBlocked(Z)V

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

    .line 5038
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    return-void

    .line 5041
    :cond_0
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 5042
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

    .line 5043
    iput v7, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    .line 5044
    iput-boolean v7, p0, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    .line 5045
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda5;->INSTANCE:Lorg/telegram/ui/Cells/DialogCell$$ExternalSyntheticLambda5;

    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_0
    const/4 v0, 0x3

    .line 5046
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v7, v0, :cond_9

    .line 5047
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->groupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_4

    .line 5048
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

    .line 5049
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

    .line 5050
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

    .line 5051
    :cond_3
    invoke-direct {p0, v7, v0}, Lorg/telegram/ui/Cells/DialogCell;->setThumb(ILorg/telegram/messenger/MessageObject;)V

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 5055
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_9

    iget v1, p0, Lorg/telegram/ui/Cells/DialogCell;->currentDialogFolderId:I

    if-nez v1, :cond_9

    .line 5056
    iput v7, p0, Lorg/telegram/ui/Cells/DialogCell;->thumbsCount:I

    .line 5057
    iput-boolean v7, p0, Lorg/telegram/ui/Cells/DialogCell;->hasVideoThumb:Z

    .line 5058
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

    .line 5059
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

    .line 5060
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

    .line 5061
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, v7, v0}, Lorg/telegram/ui/Cells/DialogCell;->setThumb(ILorg/telegram/messenger/MessageObject;)V

    :cond_9
    return-void
.end method
