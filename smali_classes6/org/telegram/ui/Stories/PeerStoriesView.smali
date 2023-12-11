.class public Lorg/telegram/ui/Stories/PeerStoriesView;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "PeerStoriesView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;,
        Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;,
        Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;,
        Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;,
        Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;
    }
.end annotation


# static fields
.field private static activeCount:I


# instance fields
.field private BIG_SCREEN:Z

.field private allowDrawSurface:Z

.field allowDrawSurfaceRunnable:Ljava/lang/Runnable;

.field private allowShare:Z

.field private allowShareLink:Z

.field private alpha:F

.field animateKeyboardOpening:Z

.field private animatingKeyboardHeight:F

.field private attachedToWindow:Z

.field private final avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private final bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

.field private cancellableViews:Ljava/lang/Runnable;

.field private changeBoundAnimator:Landroid/animation/ValueAnimator;

.field chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field private chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

.field checkBlackoutMode:Z

.field private classGuid:I

.field count:I

.field private currentAccount:I

.field private currentImageTime:J

.field public final currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

.field day:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

.field private deletedPeer:Z

.field private dialogId:J

.field documentsToPrepare:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private drawAnimatedEmojiAsMovingReaction:Z

.field private drawReactionEffect:Z

.field public editOpened:Z

.field editStoryItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private editedPrivacy:Z

.field private emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

.field private emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

.field private enterViewBottomOffset:I

.field private failView:Lorg/telegram/ui/Stories/StoryFailView;

.field private failViewAnimator:Landroid/view/ViewPropertyAnimator;

.field public forceUpdateOffsets:Z

.field headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

.field private imageChanged:Z

.field private final imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field inBlackoutMode:Z

.field inputBackgroundPaint:Landroid/graphics/Paint;

.field private instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

.field isActive:Z

.field private isCaptionPartVisible:Z

.field isChannel:Z

.field private isEditing:Z

.field private isFailed:Z

.field private isLongPressed:Z

.field private isRecording:Z

.field isSelf:Z

.field private isUploading:Z

.field private isVisible:Z

.field keyboardAnimator:Landroid/animation/ValueAnimator;

.field public keyboardVisible:Z

.field lastAnimatingKeyboardHeight:F

.field private lastDrawTime:J

.field lastKeyboardHeight:I

.field private lastNoThumb:Z

.field lastOpenedKeyboardHeight:I

.field private final leftPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private final likeButtonContainer:Landroid/widget/FrameLayout;

.field private likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

.field private likesReactionShowProgress:F

.field private likesReactionShowing:Z

.field private linesAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private linesCount:I

.field private linesPosition:I

.field private listPosition:I

.field private mediaBanTooltip:Lorg/telegram/ui/Components/HintView;

.field private mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

.field private messageSent:Z

.field private movingReaction:Z

.field private movingReactionFromSize:I

.field private movingReactionFromX:I

.field private movingReactionFromY:I

.field private movingReactionProgress:F

.field private final muteIconContainer:Landroid/widget/FrameLayout;

.field private final muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

.field private muteIconViewAlpha:F

.field private final noSoundIconView:Landroid/widget/ImageView;

.field final notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field private onImageReceiverThumbLoaded:Ljava/lang/Runnable;

.field private final optionsIconView:Landroid/widget/ImageView;

.field private outAnimator:Landroid/animation/ValueAnimator;

.field private outT:F

.field outlineProvider:Lorg/telegram/ui/Stories/RoundRectOutlineProvider;

.field private paused:Z

.field public pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

.field final playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

.field popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

.field private final preloadReactionHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;",
            ">;"
        }
    .end annotation
.end field

.field private prevToHideProgress:F

.field private final privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

.field private privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

.field progressToDismiss:F

.field private progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

.field progressToKeyboard:F

.field progressToRecording:Lorg/telegram/ui/Components/AnimatedFloat;

.field progressToReply:F

.field progressToStickerExpanded:Lorg/telegram/ui/Components/AnimatedFloat;

.field progressToTextA:Lorg/telegram/ui/Components/AnimatedFloat;

.field private reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private reactionMoveDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field private reactionMoveImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private reactionsContainerIndex:I

.field reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

.field private reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private reactionsCounterProgress:Lorg/telegram/ui/Components/AnimatedFloat;

.field private reactionsCounterVisible:Z

.field private reactionsLongpressTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private reactionsTooltipRunnable:Ljava/lang/Runnable;

.field private realKeyboardHeight:I

.field private replyDisabledTextView:Landroid/widget/TextView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final rightPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private selectedPosition:I

.field private selfAvatarsContainer:Landroid/view/View;

.field private selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

.field private selfStatusView:Landroid/widget/TextView;

.field private selfView:Landroid/widget/FrameLayout;

.field public shareAlert:Lorg/telegram/ui/Components/ShareAlert;

.field private final shareButton:Landroid/widget/ImageView;

.field final sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

.field private shiftDp:I

.field private final showTapToSoundHint:Ljava/lang/Runnable;

.field showViewsProgress:Z

.field private soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private stealthModeIsActive:Z

.field storiesController:Lorg/telegram/ui/Stories/StoriesController;

.field private storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

.field private storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

.field private final storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

.field public storyContainer:Landroid/widget/FrameLayout;

.field private storyEditCaptionView:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

.field final storyItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_stories$StoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private final storyLines:Lorg/telegram/ui/Stories/StoryLinesDrawable;

.field private storyPositionView:Lorg/telegram/ui/Stories/StoryPositionView;

.field private final storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

.field private switchEventSent:Z

.field private totalStoriesCount:I

.field public unsupported:Z

.field private unsupportedContainer:Landroid/widget/FrameLayout;

.field updateStealthModeTimer:Ljava/lang/Runnable;

.field final uploadingStories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/StoriesController$UploadingStory;",
            ">;"
        }
    .end annotation
.end field

.field uriesToPrepare:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private userCanSeeViews:Z

.field userStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

.field public videoDuration:J

.field private viewsThumbAlpha:F

.field private viewsThumbImageReceiver:Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

.field private viewsThumbScale:F


# direct methods
.method public static synthetic $r8$lambda$2AxTnGevNRRHrgS1JCErOVRsrXw(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$createStealthModeItem$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2IbZa3z9Wx0OFZyS0GqqFs8JdwI(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$2Kcd3EP0ts1bOAhbGhJFDfxJjG4(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$5(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3TSH-6iD2Oc1EFwvdDYoObX5UBE(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$5Hde2xyzsA1jhR4nL4Qe4Z2B9rU(Lorg/telegram/ui/Stories/PeerStoriesView;ZLandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$saveToGallery$19(ZLandroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5zaJyiTVW3GUVuXROXk-SRDzjEQ(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$deleteStory$23(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9nkGBZaF6z8aCRPyAeHSZ8VCcss(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$editPrivacy$31(Ljava/lang/Runnable;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BvkGOTJiqIFE_7D1VS9Cq0eKJig(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$animateOut$34(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C0VLExqvIeetMa_CcG9MoF3vA-Y(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$onMeasure$28(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CQzmuBNdUfqFrOmm03ULj0oWx_Q(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CiNrZK1EqFiL6URRe0o4nbF_klQ(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$4(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Lw2PZSnsTjmkA9OhvG8A3T4aMW4(Lorg/telegram/messenger/MessagesController;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$toggleArchiveForStory$13(Lorg/telegram/messenger/MessagesController;JZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q4B6DZUHn3xALKv3fe_ZUTTGV4E(Lorg/telegram/ui/Stories/PeerStoriesView;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$checkRecordLocked$33(ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QrWfvjP-5ccb5vUELAEFDjYcRcg(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VI1RyczaXXcVlF6osgMKE6CFAlU(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;ZZLorg/telegram/tgnet/TLRPC$InputPeer;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$editPrivacy$32(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;ZZLorg/telegram/tgnet/TLRPC$InputPeer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VTxprxRX0iUhGRJaXogQxTr8yaA(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$applyMessageToChat$18(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VXv0oD9RRJ312eKfWRVI3-8msDw(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$needEnterText$29()V

    return-void
.end method

.method public static synthetic $r8$lambda$VkSF25CZJ0GTT61Vi-INWo_bjNU(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$showLikesReaction$12(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$amvQelmE2F-JV6FNdGCtLUKpQZE(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$b1F_G4JLQp-Ek35ZMVeyEPQ9y2E(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$updatePosition$26()V

    return-void
.end method

.method public static synthetic $r8$lambda$bgXae1ogq5gKtXbvYn5aipW8KcY(Lorg/telegram/messenger/MessagesController;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$toggleArchiveForStory$14(Lorg/telegram/messenger/MessagesController;JZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$cl6UHnjK2heqj3w9UbnDcqQy31o(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$createUnsupportedContainer$20(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dzQ8LrjsNoyl4P2z2qeibymt7PI(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$6(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eIW-qmHoBhhhsIKJ0T_1ZJAEF4k(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$createSelfPeerView$21(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g5gnmmkLeAt5Zlcc9XAEwYIR2bQ(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hZ43Oq7g2eYg0v-Ze8Bec7nc2DY(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$applyMessageToChat$17(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iKEr6Bl5dThY1k_A_DBU2UYQKx8(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/messenger/MessagesController;JZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$toggleArchiveForStory$15(Lorg/telegram/messenger/MessagesController;JZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jKGk7HPCbQLxV6bO73E2J5dnDxk(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$editPrivacy$30(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kzCMRja-UKZPMxg5Ei3jEKxRQis(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$27()V

    return-void
.end method

.method public static synthetic $r8$lambda$lWDRhbPZn-wZjygad7Mh3ad-mcc(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$deleteStory$22(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$uTOy00fh2mZKtg5qZ-EyOkbMAlU(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uuMTRC8t9bevERVFhW2GKqvfcnU(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$9(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vItQ9iREJxDM2iJ94Rmv19hf474(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$updatePosition$25()V

    return-void
.end method

.method public static synthetic $r8$lambda$wstdGs3Z5S8f0x7Xy_M5xeNRW68(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->openChat()V

    return-void
.end method

.method public static synthetic $r8$lambda$xnRoF_53V9RKWO-umJ1jp55e1S0(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$createFailView$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yFZtuIDMve0UC_FXXoxbsgSIcq4(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$createStealthModeItem$10(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 24

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 351
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    .line 220
    iput-boolean v11, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurface:Z

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadReactionHolders:Ljava/util/ArrayList;

    const/4 v0, -0x5

    .line 240
    iput v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->shiftDp:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 257
    iput v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->alpha:F

    .line 265
    new-instance v12, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-direct {v12, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iput-object v12, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    const/high16 v1, -0x40800000    # -1.0f

    .line 284
    iput v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    .line 285
    iput v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToDismiss:F

    .line 286
    iput v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->lastAnimatingKeyboardHeight:F

    .line 292
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result v1

    iput v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->classGuid:I

    .line 310
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 311
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->linesAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 318
    new-instance v1, Lorg/telegram/ui/PinchToZoomHelper;

    invoke-direct {v1}, Lorg/telegram/ui/PinchToZoomHelper;-><init>()V

    iput-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    .line 326
    iput v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconViewAlpha:F

    .line 3173
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda26;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStealthModeTimer:Ljava/lang/Runnable;

    .line 3618
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda28;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->showTapToSoundHint:Ljava/lang/Runnable;

    .line 3640
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->uriesToPrepare:Ljava/util/ArrayList;

    .line 3641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->documentsToPrepare:Ljava/util/ArrayList;

    .line 4370
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$29;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$29;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurfaceRunnable:Ljava/lang/Runnable;

    .line 5141
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToRecording:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 5142
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToTextA:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 5143
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToStickerExpanded:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 352
    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$1;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PinchToZoomHelper;->setCallback(Lorg/telegram/ui/PinchToZoomHelper$Callback;)V

    .line 363
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    .line 364
    new-instance v0, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    .line 368
    new-instance v13, Lorg/telegram/ui/Stories/PeerStoriesView$2;

    invoke-direct {v13, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$2;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iput-object v13, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v14, 0x0

    .line 380
    invoke-virtual {v13, v14}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    .line 381
    invoke-virtual {v13, v11}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 382
    iput-boolean v11, v13, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    .line 383
    invoke-virtual {v13, v14}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    .line 385
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, v6}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 386
    invoke-virtual {v0, v11}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 387
    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-boolean v11, v0, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    const/4 v15, 0x3

    .line 388
    invoke-virtual {v0, v15}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    .line 390
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, v6}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 391
    invoke-virtual {v0, v11}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 392
    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-boolean v11, v0, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    .line 393
    invoke-virtual {v0, v15}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    .line 395
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->leftPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 396
    invoke-virtual {v0, v11}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 397
    iput-boolean v11, v0, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    .line 398
    invoke-virtual {v0, v14}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    .line 400
    new-instance v1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->rightPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 401
    invoke-virtual {v1, v11}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 402
    iput-boolean v11, v1, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    .line 403
    invoke-virtual {v1, v14}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/telegram/messenger/ImageReceiver;

    aput-object v0, v2, v14

    aput-object v1, v2, v11

    .line 404
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v13, v0}, Lorg/telegram/messenger/ImageReceiver;->setPreloadingReceivers(Ljava/util/List;)V

    .line 406
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 407
    iput-object v8, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    .line 408
    iput-object v9, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    .line 409
    iget-object v0, v9, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    .line 410
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    .line 411
    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$100(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 412
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    .line 413
    iput-object v10, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 414
    invoke-virtual {v6, v14}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 416
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$3;

    invoke-direct {v0, v6, v7, v10, v8}, Lorg/telegram/ui/Stories/PeerStoriesView$3;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    .line 446
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;

    invoke-direct {v0, v6, v7, v9, v8}, Lorg/telegram/ui/Stories/PeerStoriesView$4;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Lorg/telegram/ui/Stories/StoryViewer;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    .line 794
    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 795
    new-instance v0, Lorg/telegram/ui/EmojiAnimationsOverlay;

    iget-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget v2, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/EmojiAnimationsOverlay;-><init>(Landroid/widget/FrameLayout;I)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    .line 797
    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    const/4 v5, -0x1

    invoke-static {v5, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 799
    new-instance v4, Lorg/telegram/ui/Stories/PeerStoriesView$5;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v8, Lorg/telegram/ui/Stories/StoryViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v14, v4

    move-object/from16 v4, p2

    move/from16 v16, v5

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$5;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v14, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    .line 915
    iget-object v0, v14, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda13;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 928
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    .line 929
    iget-object v0, v9, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->shareDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v4, 0x8

    .line 930
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 931
    invoke-virtual {v5, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 932
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda10;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 935
    invoke-static {v5}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 937
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    .line 938
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda14;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 947
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda20;

    invoke-direct {v1, v6, v8}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 961
    new-instance v1, Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-direct {v1, v7, v9}, Lorg/telegram/ui/Stories/StoriesLikeButton;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    .line 962
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 963
    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    const/16 v1, 0x28

    invoke-static {v1, v1, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x3e99999a    # 0.3f

    const/high16 v1, 0x40a00000    # 5.0f

    .line 964
    invoke-static {v3, v0, v1}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 966
    invoke-virtual {v13, v11}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 967
    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v13, v0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 968
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 969
    new-instance v0, Lorg/telegram/ui/Stories/RoundRectOutlineProvider;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/RoundRectOutlineProvider;-><init>(I)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->outlineProvider:Lorg/telegram/ui/Stories/RoundRectOutlineProvider;

    .line 970
    iget-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 971
    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 973
    :cond_0
    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 974
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-direct {v0, v7, v12}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    .line 975
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda18;

    invoke-direct {v1, v6, v8}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 993
    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x11

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v17, 0x28

    const/16 v18, 0x28

    const/16 v19, 0x5

    const/16 v20, 0xa

    const/16 v21, 0xa

    const/16 v22, 0x32

    const/16 v23, 0xa

    .line 996
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v5, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v22, 0xa

    .line 997
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 999
    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v11, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    .line 1000
    iget-object v0, v9, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->optionsDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1001
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v11, v0, v1, v2, v12}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1002
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1003
    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    const/16 v19, 0x35

    const/16 v20, 0x2

    const/16 v21, 0xf

    const/16 v22, 0x2

    const/16 v23, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1005
    new-instance v12, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda17;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object v10, v3

    move-object/from16 v3, p1

    move v13, v4

    move-object/from16 v4, p2

    move-object v15, v5

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1443
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    .line 1444
    iget-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    const/16 v22, 0x2a

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1446
    new-instance v1, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x6

    .line 1447
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v1, v3, v4, v5, v12}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1448
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1450
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->noSoundIconView:Landroid/widget/ImageView;

    .line 1451
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1452
    iget-object v2, v9, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->noSoundDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1453
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1454
    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1456
    new-instance v1, Lorg/telegram/ui/Stories/StoryPrivacyButton;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Stories/StoryPrivacyButton;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    .line 1457
    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda9;

    invoke-direct {v2, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1509
    iget-object v2, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    const/16 v17, 0x3c

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1511
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda19;

    invoke-direct {v1, v6, v8}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1522
    new-instance v1, Lorg/telegram/ui/Stories/StoryLinesDrawable;

    invoke-direct {v1, v6, v9}, Lorg/telegram/ui/Stories/StoryLinesDrawable;-><init>(Landroid/view/View;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyLines:Lorg/telegram/ui/Stories/StoryLinesDrawable;

    .line 1524
    iget-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x40

    const/16 v22, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x14

    .line 1526
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0x64

    move/from16 v4, v16

    invoke-static {v4, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    const/4 v8, 0x0

    invoke-static {v2, v8, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1527
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v4, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-static {v0, v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1528
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v4, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-static {v0, v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1529
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v4, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-static {v0, v8, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1531
    iget-object v0, v14, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1533
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 1534
    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1536
    :cond_1
    iget-object v0, v14, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$7;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$7;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setCallback(Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;)V

    .line 1542
    iget-object v0, v14, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setParentView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/PeerStoriesView;)Ljava/lang/Runnable;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->onImageReceiverThumbLoaded:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 179
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->onImageReceiverThumbLoaded:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 179
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastNoThumb:Z

    return p0
.end method

.method static synthetic access$10000(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 179
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z
    .locals 0

    .line 179
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastNoThumb:Z

    return p1
.end method

.method static synthetic access$10100(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Ljava/util/ArrayList;
    .locals 0

    .line 179
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->getAnimatedEmojiSets(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$10200(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V
    .locals 0

    .line 179
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->shareStory(Z)V

    return-void
.end method

.method static synthetic access$10300(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->saveToGallery()V

    return-void
.end method

.method static synthetic access$10400(Lorg/telegram/ui/Stories/PeerStoriesView;J)V
    .locals 0

    .line 179
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->toggleArchiveForStory(J)V

    return-void
.end method

.method static synthetic access$10500(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->deleteStory()V

    return-void
.end method

.method static synthetic access$10600(Lorg/telegram/ui/Stories/PeerStoriesView;)I
    .locals 0

    .line 179
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shiftDp:I

    return p0
.end method

.method static synthetic access$10602(Lorg/telegram/ui/Stories/PeerStoriesView;I)I
    .locals 0

    .line 179
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shiftDp:I

    return p1
.end method

.method static synthetic access$10700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static synthetic access$10800(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 0

    .line 179
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->editPrivacy(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    return-void
.end method

.method static synthetic access$10900(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStoryItems()V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Stories/PeerStoriesView;)F
    .locals 0

    .line 179
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getHideInterfaceAlpha()F

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 179
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 179
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->hideCaptionWithInterface()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Stories/PeerStoriesView;)F
    .locals 0

    .line 179
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbAlpha:F

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbImageReceiver:Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Stories/PeerStoriesView;)F
    .locals 0

    .line 179
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbScale:F

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 0

    .line 179
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->likeStory(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 179
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isRecording:Z

    return p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z
    .locals 0

    .line 179
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isRecording:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 179
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isCaptionPartVisible:Z

    return p0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z
    .locals 0

    .line 179
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isCaptionPartVisible:Z

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 179
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->paused:Z

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 179
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isUploading:Z

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 179
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 179
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isFailed:Z

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Stories/PeerStoriesView;)J
    .locals 2

    .line 179
    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastDrawTime:J

    return-wide v0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/Stories/PeerStoriesView;J)J
    .locals 0

    .line 179
    iput-wide p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastDrawTime:J

    return-wide p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Stories/PeerStoriesView;)J
    .locals 2

    .line 179
    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentImageTime:J

    return-wide v0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Stories/PeerStoriesView;J)J
    .locals 0

    .line 179
    iput-wide p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentImageTime:J

    return-wide p1
.end method

.method static synthetic access$2714(Lorg/telegram/ui/Stories/PeerStoriesView;J)J
    .locals 2

    .line 179
    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentImageTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentImageTime:J

    return-wide v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 179
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->switchEventSent:Z

    return p0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z
    .locals 0

    .line 179
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->switchEventSent:Z

    return p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 179
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isLongPressed:Z

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/EmojiAnimationsOverlay;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryPositionView;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyPositionView:Lorg/telegram/ui/Stories/StoryPositionView;

    return-object p0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryPositionView;)Lorg/telegram/ui/Stories/StoryPositionView;
    .locals 0

    .line 179
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyPositionView:Lorg/telegram/ui/Stories/StoryPositionView;

    return-object p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Stories/PeerStoriesView;)F
    .locals 0

    .line 179
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->alpha:F

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Stories/PeerStoriesView;)F
    .locals 0

    .line 179
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    return p0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/Stories/PeerStoriesView;F)F
    .locals 0

    .line 179
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    return p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Stories/PeerStoriesView;)I
    .locals 0

    .line 179
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->listPosition:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedFloat;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->linesAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Stories/PeerStoriesView;)I
    .locals 0

    .line 179
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->linesPosition:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Stories/PeerStoriesView;)I
    .locals 0

    .line 179
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->linesCount:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryLinesDrawable;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyLines:Lorg/telegram/ui/Stories/StoryLinesDrawable;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 179
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->drawLinesAsCounter()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I
    .locals 0

    .line 179
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/ReactionsContainerLayout;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    return-object p0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/Stories/PeerStoriesView;F)F
    .locals 0

    .line 179
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionShowProgress:F

    return p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;)Z
    .locals 0

    .line 179
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->applyMessageToChat(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->changeBoundAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$4402(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 179
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->changeBoundAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 179
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurface:Z

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Stories/PeerStoriesView;)J
    .locals 2

    .line 179
    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    return-wide v0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/AccountInstance;
    .locals 0

    .line 179
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->afterMessageSend()V

    return-void
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/MentionsContainerView;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    return-object p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createMentionsContainer()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 179
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageChanged:Z

    return p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->openAttachMenu()V

    return-void
.end method

.method static synthetic access$602(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z
    .locals 0

    .line 179
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageChanged:Z

    return p1
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkInstantCameraView()V

    return-void
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/InstantCameraView;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    return-object p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/HintView;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mediaBanTooltip:Lorg/telegram/ui/Components/HintView;

    return-object p0
.end method

.method static synthetic access$6302(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Components/HintView;)Lorg/telegram/ui/Components/HintView;
    .locals 0

    .line 179
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mediaBanTooltip:Lorg/telegram/ui/Components/HintView;

    return-object p1
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/BitmapShaderTools;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    return-object p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryViewer;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    return-object p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/ChatAttachAlert;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    return-object p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->onLickCopied()V

    return-void
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/view/View;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$7302(Lorg/telegram/ui/Stories/PeerStoriesView;F)F
    .locals 0

    .line 179
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    return p1
.end method

.method static synthetic access$7700(Lorg/telegram/ui/Stories/PeerStoriesView;)I
    .locals 0

    .line 179
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->classGuid:I

    return p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->openChat()V

    return-void
.end method

.method static synthetic access$7902(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z
    .locals 0

    .line 179
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReaction:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    return-object p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoriesLikeButton;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    return-object p0
.end method

.method static synthetic access$8002(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoriesLikeButton;)Lorg/telegram/ui/Stories/StoriesLikeButton;
    .locals 0

    .line 179
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    return-object p1
.end method

.method static synthetic access$8100(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    return-object p0
.end method

.method static synthetic access$8202(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;
    .locals 0

    .line 179
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    return-object p1
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    return-object p0
.end method

.method static synthetic access$8302(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;)Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;
    .locals 0

    .line 179
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    return-object p1
.end method

.method static synthetic access$8402(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z
    .locals 0

    .line 179
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawAnimatedEmojiAsMovingReaction:Z

    return p1
.end method

.method static synthetic access$8500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V
    .locals 0

    .line 179
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateUserViews(Z)V

    return-void
.end method

.method static synthetic access$8802(Lorg/telegram/ui/Stories/PeerStoriesView;I)I
    .locals 0

    .line 179
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionFromX:I

    return p1
.end method

.method static synthetic access$8902(Lorg/telegram/ui/Stories/PeerStoriesView;I)I
    .locals 0

    .line 179
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionFromY:I

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryMediaAreasView;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    return-object p0
.end method

.method static synthetic access$9002(Lorg/telegram/ui/Stories/PeerStoriesView;I)I
    .locals 0

    .line 179
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionFromSize:I

    return p1
.end method

.method static synthetic access$9100(Lorg/telegram/ui/Stories/PeerStoriesView;)F
    .locals 0

    .line 179
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionProgress:F

    return p0
.end method

.method static synthetic access$9102(Lorg/telegram/ui/Stories/PeerStoriesView;F)F
    .locals 0

    .line 179
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionProgress:F

    return p1
.end method

.method static synthetic access$9202(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z
    .locals 0

    .line 179
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawReactionEffect:Z

    return p1
.end method

.method static synthetic access$9300(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V
    .locals 0

    .line 179
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->showLikesReaction(Z)V

    return-void
.end method

.method static synthetic access$9400(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/ImageView;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/Stories/PeerStoriesView;)F
    .locals 0

    .line 179
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconViewAlpha:F

    return p0
.end method

.method static synthetic access$9600(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$9700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryPrivacyButton;
    .locals 0

    .line 179
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    return-object p0
.end method

.method static synthetic access$9800(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V
    .locals 0

    .line 179
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->createStealthModeItem(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    return-void
.end method

.method static synthetic access$9900(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 179
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    return p0
.end method

.method private afterMessageSend()V
    .locals 9

    .line 5413
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5414
    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView;->resetCameraFile()V

    .line 5415
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->cancel(Z)V

    .line 5417
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Stories/StoryViewer;->clearDraft(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    const/4 v0, 0x1

    .line 5418
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->messageSent:Z

    .line 5419
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->closeKeyboardOrEmoji()Z

    .line 5420
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5422
    sget v4, Lorg/telegram/messenger/R$raw;->forward:I

    sget v0, Lorg/telegram/messenger/R$string;->MessageSent:I

    const-string v2, "MessageSent"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget v0, Lorg/telegram/messenger/R$string;->ViewInChat:I

    const-string v2, "ViewInChat"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1388

    new-instance v8, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda30;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    .line 5424
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lorg/telegram/messenger/MessagesController;->ensureMessagesLoaded(JILorg/telegram/messenger/MessagesController$MessagesLoadedCallback;)V

    return-void
.end method

.method private animateLikeButton()V
    .locals 8

    .line 1687
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    .line 1688
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v4, Lorg/telegram/ui/Stories/PeerStoriesView$11;

    invoke-direct {v4, p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$11;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x96

    .line 1693
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/16 v0, 0x8

    .line 1694
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 1695
    new-instance v1, Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-direct {v1, v6, v7}, Lorg/telegram/ui/Stories/StoriesLikeButton;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    .line 1696
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 1697
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1698
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 1699
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1700
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1701
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    const/16 v2, 0x28

    const/4 v3, 0x3

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 1702
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawReactionEffect:Z

    return-void
.end method

.method private applyMessageToChat(Ljava/lang/Runnable;)Z
    .locals 5

    .line 2233
    sget v0, Lorg/telegram/messenger/SharedConfig;->stealthModeSendMessageConfirm:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->stealthModeIsActive:Z

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    .line 2234
    sput v0, Lorg/telegram/messenger/SharedConfig;->stealthModeSendMessageConfirm:I

    .line 2235
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->updateStealthModeSendMessageConfirm(I)V

    .line 2236
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2237
    sget v2, Lorg/telegram/messenger/R$string;->StealthModeConfirmTitle:I

    const-string v3, "StealthModeConfirmTitle"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2238
    sget v2, Lorg/telegram/messenger/R$string;->StealthModeConfirmMessage:I

    const-string v3, "StealthModeConfirmMessage"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2239
    sget v2, Lorg/telegram/messenger/R$string;->Proceed:I

    const-string v3, "Proceed"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda3;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2242
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda7;->INSTANCE:Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda7;

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2243
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto :goto_0

    .line 2245
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return v1
.end method

.method private bindInternal(I)V
    .locals 12

    const/4 v0, 0x0

    .line 2552
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->deletedPeer:Z

    const/4 v1, 0x1

    .line 2553
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 2554
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userCanSeeViews:Z

    .line 2555
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    .line 2556
    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const/16 v7, 0xff

    const/16 v8, 0x10

    const/4 v9, 0x0

    if-ltz v6, :cond_4

    .line 2557
    iget v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v10

    cmp-long v2, v2, v10

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    .line 2558
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 2559
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 2560
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v2, v6}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    .line 2561
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v3, :cond_1

    .line 2562
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v3, Lorg/telegram/messenger/R$string;->SelfStoryTitle:I

    const-string v6, "SelfStoryTitle"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 2563
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_1
    if-eqz v2, :cond_2

    .line 2565
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-eqz v3, :cond_2

    .line 2566
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/R$drawable;->verified_profile:I

    invoke-static {v3, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2567
    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2568
    new-instance v6, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v6, v3, v9}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2569
    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 2570
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v6, v3, v7}, Lorg/telegram/ui/Components/CombinedDrawable;->setCustomSize(II)V

    .line 2571
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 2573
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    if-eqz v2, :cond_3

    .line 2576
    invoke-static {v2}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    .line 2577
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2578
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_2

    .line 2580
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_2

    .line 2584
    :cond_4
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    .line 2585
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    .line 2591
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    neg-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 2592
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 2593
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v2, v6}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    .line 2594
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 2596
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    if-eqz v2, :cond_5

    .line 2597
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->verified_profile:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2598
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2599
    new-instance v3, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v3, v2, v9}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2600
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 2601
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v3, v2, v6}, Lorg/telegram/ui/Components/CombinedDrawable;->setCustomSize(II)V

    .line 2602
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 2604
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2607
    :goto_2
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v2, :cond_7

    .line 2608
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v2, v6, v7, v1}, Lorg/telegram/ui/Stories/StoriesController;->pollViewsForSelfStories(JZ)V

    .line 2610
    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStoryItems()V

    .line 2611
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    if-gez p1, :cond_8

    .line 2613
    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    .line 2615
    :cond_8
    iput-wide v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentImageTime:J

    .line 2616
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->switchEventSent:Z

    .line 2617
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    const/4 v3, -0x1

    const/16 v4, 0x8

    if-eqz v2, :cond_c

    .line 2618
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createSelfPeerView()V

    .line 2619
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_9

    .line 2620
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    .line 2622
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-nez v0, :cond_a

    .line 2623
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$24;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$24;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    .line 2629
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-interface {v1, v2}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 2630
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/16 v1, 0xe

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 2631
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounterProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    :cond_a
    if-ne p1, v3, :cond_b

    .line 2634
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateSelectedPosition()V

    .line 2636
    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    .line 2637
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoriesCount()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->count:I

    .line 2638
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2639
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto/16 :goto_9

    .line 2640
    :cond_c
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v2, :cond_15

    .line 2641
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createSelfPeerView()V

    .line 2642
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2643
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v2, :cond_d

    .line 2644
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    :cond_d
    if-ne p1, v3, :cond_14

    .line 2647
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    if-eqz p1, :cond_10

    .line 2648
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_f

    .line 2650
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 2651
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_e

    move p1, v0

    goto :goto_3

    .line 2653
    :cond_e
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_f

    .line 2654
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    .line 2658
    :cond_f
    :goto_3
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    goto :goto_6

    .line 2659
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_11

    .line 2660
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    goto :goto_6

    .line 2662
    :cond_11
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_14

    .line 2663
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->justUploaded:Z

    if-nez p1, :cond_13

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result v1

    if-le p1, v1, :cond_12

    goto :goto_5

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2664
    :cond_13
    :goto_5
    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    .line 2670
    :cond_14
    :goto_6
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    .line 2671
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2672
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto/16 :goto_9

    .line 2674
    :cond_15
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-nez v1, :cond_16

    .line 2675
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createEnterView()V

    .line 2677
    :cond_16
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    if-eqz v1, :cond_17

    .line 2678
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_17
    if-ne p1, v3, :cond_18

    .line 2681
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateSelectedPosition()V

    .line 2683
    :cond_18
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    .line 2684
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p1, :cond_1b

    .line 2685
    iget-wide v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v1

    if-eqz v1, :cond_19

    move v1, v4

    goto :goto_7

    :cond_19
    move v1, v0

    :goto_7
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    .line 2686
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Stories/StoryViewer;->getDraft(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2687
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-virtual {p1, v1, v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setDialogId(JI)V

    .line 2688
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 2690
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, v9, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordButton(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$UserFull;)V

    goto :goto_8

    .line 2692
    :cond_1a
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 2693
    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->classGuid:I

    invoke-virtual {v1, p1, v2, v0}, Lorg/telegram/messenger/MessagesController;->loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZ)V

    .line 2696
    :cond_1b
    :goto_8
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoriesCount()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->count:I

    .line 2697
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1c

    .line 2698
    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2701
    :cond_1c
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2702
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :goto_9
    return-void
.end method

.method private cancelWaiting()V
    .locals 2

    .line 3781
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->cancellableViews:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3782
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 3783
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->cancellableViews:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x0

    .line 3785
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->showViewsProgress:Z

    .line 3786
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v1, :cond_1

    .line 3787
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsWaiting(Z)V

    :cond_1
    return-void
.end method

.method private checkInstantCameraView()V
    .locals 4

    .line 5355
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    if-eqz v0, :cond_0

    return-void

    .line 5359
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$31;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$31;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/InstantCameraView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/InstantCameraView$Delegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v1, 0x0

    .line 5407
    iput-boolean v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->drawBlur:Z

    .line 5408
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getRecordCircle()Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 5409
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    const/16 v2, 0x33

    const/4 v3, -0x1

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private checkStealthMode(Z)V
    .locals 11

    .line 3176
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isVisible:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->attachedToWindow:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3179
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStealthModeTimer:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3180
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getStealthMode()Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3181
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;->active_until_date:I

    if-ge v2, v0, :cond_2

    const/4 v2, 0x1

    .line 3182
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->stealthModeIsActive:Z

    .line 3183
    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    sub-int/2addr v0, v3

    .line 3184
    div-int/lit8 v3, v0, 0x3c

    .line 3185
    rem-int/lit8 v0, v0, 0x3c

    .line 3186
    sget v4, Lorg/telegram/messenger/R$string;->StealthModeActiveHintShort:I

    new-array v5, v2, [Ljava/lang/Object;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const/16 v9, 0x63

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    const-string v9, "%02d:%02d"

    invoke-static {v6, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v1

    const-string v8, "StealthModeActiveHint"

    invoke-static {v8, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 3187
    iget-object v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    const v10, 0x3f99999a    # 1.2f

    mul-float/2addr v5, v10

    .line 3188
    iget-object v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v5, v5, v10

    if-ltz v5, :cond_1

    .line 3189
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    new-array v8, v2, [Ljava/lang/Object;

    const-string v10, ""

    aput-object v10, v8, v1

    const-string v10, "StealthModeActiveHintShort"

    invoke-static {v10, v4, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v6, v9, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v4, v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setOverrideHint(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 3191
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v5, Lorg/telegram/messenger/R$string;->StealthModeActiveHint:I

    new-array v10, v2, [Ljava/lang/Object;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v6, v9, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v1

    invoke-static {v8, v5, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setOverrideHint(Ljava/lang/CharSequence;Z)V

    .line 3193
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStealthModeTimer:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 3195
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->stealthModeIsActive:Z

    .line 3196
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v1, Lorg/telegram/messenger/R$string;->ReplyPrivately:I

    const-string v2, "ReplyPrivately"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setOverrideHint(Ljava/lang/CharSequence;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private createChatAttachView()V
    .locals 9

    .line 2298
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-nez v0, :cond_0

    .line 2299
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$17;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Stories/PeerStoriesView$17;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    .line 2323
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$18;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$18;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V

    .line 2422
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loadGalleryPhotos()V

    .line 2423
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowEnterCaption(Z)V

    .line 2424
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->init()V

    .line 2425
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$19;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDocumentsDelegate(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;)V

    .line 2450
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentTextView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private createEnterView()V
    .locals 10

    .line 1863
    new-instance v6, Lorg/telegram/ui/Stories/PeerStoriesView$12;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$12;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1869
    new-instance v7, Lorg/telegram/ui/Stories/PeerStoriesView$13;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/PeerStoriesView$13;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 1984
    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->useAnimatedTextDrawable()V

    .line 1985
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setOverrideKeyboardAnimation(Z)V

    .line 1986
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 1987
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$14;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$14;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setDelegate(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    .line 2159
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    .line 2160
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldDrawBackground:Z

    .line 2161
    iput-boolean v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldDrawRecordedAudioPanelInParent:Z

    .line 2162
    invoke-virtual {v0, v1, v1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setAllowStickersAndGifs(ZZZ)V

    .line 2163
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateColors()V

    .line 2164
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/16 v5, 0x53

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2166
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->classGuid:I

    iput v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingGuid:I

    .line 2167
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->viewsToInvalidate:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2168
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->viewsToInvalidate:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2169
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->attachedToWindow:Z

    if-eqz v0, :cond_0

    .line 2170
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onResume()V

    .line 2172
    :cond_0
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkStealthMode(Z)V

    .line 2174
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerIndex:I

    return-void
.end method

.method private createFailView()V
    .locals 8

    .line 1847
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    if-eqz v0, :cond_0

    return-void

    .line 1850
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/StoryFailView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/StoryFailView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    .line 1851
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoryFailView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1857
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1858
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1859
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x53

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createMentionsContainer()V
    .locals 10

    .line 2178
    new-instance v9, Lorg/telegram/ui/Stories/PeerStoriesView$15;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stories/PeerStoriesView$15;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;JILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    .line 2191
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$16;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$16;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/MentionsContainerView;->withDelegate(Lorg/telegram/ui/Components/MentionsContainerView$Delegate;)V

    .line 2229
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    const/4 v1, -0x1

    const/16 v2, 0x53

    invoke-static {v1, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createReplyDisabledView()V
    .locals 8

    .line 3624
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-void

    .line 3627
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$28;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$28;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    .line 3633
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3634
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    const/4 v2, -0x1

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3635
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 3636
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->StoryReplyDisabled:I

    const-string v2, "StoryReplyDisabled"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3637
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/4 v1, -0x2

    const/16 v2, 0x28

    const/4 v3, 0x3

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createSelfPeerView()V
    .locals 11

    .line 2841
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    return-void

    .line 2844
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$25;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$25;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    .line 2858
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2859
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    const/16 v3, 0x30

    const/16 v4, 0x30

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x60

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2861
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$26;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$26;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    .line 2888
    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2891
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    const/4 v3, -0x1

    const/16 v4, 0x20

    const/16 v6, 0x9

    const/16 v7, 0xb

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2893
    new-instance v0, Lorg/telegram/ui/Stories/HwAvatarsImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Stories/HwAvatarsImageView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 v2, 0x12

    .line 2894
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarsImageView;->setAvatarsTextSize(I)V

    .line 2895
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/4 v4, -0x1

    const/16 v5, 0x1c

    const/4 v6, 0x0

    const/16 v7, 0xd

    const/16 v8, 0xd

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2897
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    .line 2898
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2899
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2900
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/16 v10, 0x9

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2902
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2903
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2913
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    const/16 v4, 0xf

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/16 v5, 0x78

    invoke-static {v1, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    invoke-static {v4, v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2914
    invoke-static {v1, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->createCircleSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private createStealthModeItem(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V
    .locals 6

    .line 1546
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1547
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_stories_stealth2:I

    sget v2, Lorg/telegram/messenger/R$string;->StealthModeButton:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0, v2, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1559
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_gallery_locked2:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1560
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const/4 v3, -0x1

    const/high16 v4, -0x1000000

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v3, v4, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1561
    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$8;

    .line 1562
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_stealth_locked:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$8;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1570
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_stories_stealth2:I

    sget v3, Lorg/telegram/messenger/R$string;->StealthModeButton:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0, v3, v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    .line 1571
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1578
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private createUnsupportedContainer()V
    .locals 13

    .line 2707
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupportedContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    return-void

    .line 2710
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2712
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 2713
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2715
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "fonts/rmedium.ttf"

    .line 2716
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2717
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v5, 0x41800000    # 16.0f

    .line 2718
    invoke-virtual {v3, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2719
    sget v5, Lorg/telegram/messenger/R$string;->StoryUnsupported:I

    const-string v6, "StoryUnsupported"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2720
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2722
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2723
    invoke-static {v5}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 2724
    sget v6, Lorg/telegram/messenger/R$string;->AppUpdate:I

    const-string v7, "AppUpdate"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2725
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v7, 0x10

    .line 2726
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    const/16 v9, 0xc

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v5, v8, v10, v7, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v7, 0x11

    .line 2727
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 2728
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v4, 0x41700000    # 15.0f

    .line 2729
    invoke-virtual {v5, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v2, 0x8

    .line 2731
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 2732
    invoke-static {v4, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 2733
    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    const/16 v7, 0x1e

    invoke-static {v6, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    .line 2731
    invoke-static {v2, v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2730
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2735
    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, -0x1

    const/4 v4, -0x2

    .line 2746
    invoke-static {v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, -0x1

    const/4 v7, -0x2

    const/4 v8, 0x0

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 2747
    invoke-static/range {v6 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v8, 0x11

    const/16 v9, 0x48

    const/16 v11, 0x48

    const/4 v12, 0x0

    .line 2749
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2750
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2751
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupportedContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method private deleteStory()V
    .locals 3

    .line 2918
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2919
    sget v1, Lorg/telegram/messenger/R$string;->DeleteStoryTitle:I

    const-string v2, "DeleteStoryTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2920
    sget v1, Lorg/telegram/messenger/R$string;->DeleteStorySubtitle:I

    const-string v2, "DeleteStorySubtitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2921
    sget v1, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v2, "Delete"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2935
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda6;->INSTANCE:Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda6;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2938
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 2939
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    .line 2940
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->redPositive()V

    return-void
.end method

.method private drawLinesAsCounter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private editPrivacy(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 5

    .line 5814
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z

    if-eqz v3, :cond_0

    const v3, 0x7fffffff

    goto :goto_0

    :cond_0
    iget v3, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->expire_date:I

    iget v4, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->date:I

    sub-int/2addr v3, v4

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 5815
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->setValue(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    const/4 v1, 0x0

    .line 5816
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->enableSharing(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    const/4 v2, 0x1

    .line 5818
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->isEdit(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda35;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 5819
    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->whenSelectedRules(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$DoneCallback;Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    .line 5814
    invoke-interface {v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method private getAccountInstance()Lorg/telegram/messenger/AccountInstance;
    .locals 1

    .line 5439
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    return-object v0
.end method

.method private getAnimatedEmojiSets(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$InputStickerSet;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_15

    .line 1707
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1708
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1709
    iget-object v2, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    move v2, v3

    .line 1710
    :goto_0
    iget-object v4, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 1711
    iget-object v4, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    .line 1712
    instance-of v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;

    if-eqz v5, :cond_3

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz v5, :cond_3

    .line 1713
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    .line 1714
    iget v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v6, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 1718
    :cond_0
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 1722
    :cond_1
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 1725
    :cond_2
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1726
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1730
    :cond_4
    iget-object v2, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->entities:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1731
    :goto_2
    iget-object v2, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_14

    .line 1732
    iget-object v2, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 1733
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    if-nez v4, :cond_5

    goto :goto_3

    .line 1736
    :cond_5
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v4, :cond_6

    .line 1738
    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    :cond_6
    if-nez v4, :cond_7

    goto :goto_3

    .line 1743
    :cond_7
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v2

    .line 1744
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    .line 1747
    :cond_8
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1748
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1750
    :cond_9
    iget-object v2, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v2, :cond_14

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v2, :cond_14

    .line 1751
    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v2, :cond_e

    move v2, v3

    .line 1752
    :goto_4
    iget-object v4, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_e

    .line 1753
    iget-object v4, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    .line 1754
    iget-byte v5, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/4 v6, 0x4

    if-ne v5, v6, :cond_d

    iget-object v4, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    if-eqz v4, :cond_d

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz v5, :cond_d

    .line 1755
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    .line 1756
    iget v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v6, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    if-nez v4, :cond_a

    goto :goto_5

    .line 1760
    :cond_a
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v4

    if-nez v4, :cond_b

    goto :goto_5

    .line 1764
    :cond_b
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_5

    .line 1767
    :cond_c
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1768
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1772
    :cond_e
    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    .line 1773
    instance-of v2, p1, Landroid/text/Spanned;

    if-nez v2, :cond_f

    return-object v1

    .line 1776
    :cond_f
    move-object v2, p1

    check-cast v2, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v2, v3, p1, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-nez p1, :cond_10

    return-object v1

    .line 1780
    :cond_10
    :goto_6
    array-length v2, p1

    if-ge v3, v2, :cond_14

    .line 1781
    aget-object v2, p1, v3

    iget-object v2, v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v2, :cond_11

    .line 1783
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    aget-object v4, p1, v3

    iget-wide v4, v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    :cond_11
    if-nez v2, :cond_12

    goto :goto_7

    .line 1788
    :cond_12
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v2

    .line 1789
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_7

    .line 1792
    :cond_13
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1793
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_14
    return-object v1

    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method private getHideInterfaceAlpha()F
    .locals 3

    .line 5288
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoryViewer;->getProgressToSelfViews()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public static getStoryId(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 4915
    iget p0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 4916
    iget-object p0, p1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p0, :cond_1

    .line 4917
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryId:I

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private hideCaptionWithInterface()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private hitButton(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 4363
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    .line 4365
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_0

    .line 4366
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v1, p1

    cmpg-float p1, p2, v1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic lambda$animateOut$34(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 5900
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    .line 5901
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 5902
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5903
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    mul-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 5904
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v1, v2, v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 5905
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    mul-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 5906
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconViewAlpha:F

    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v3, v2, v3

    mul-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5907
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 5908
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    mul-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 5909
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v1, v2, v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5911
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    if-eqz p1, :cond_1

    .line 5912
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 5913
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v0, v2, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 5915
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float/2addr v2, v0

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5916
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$applyMessageToChat$17(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2240
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$applyMessageToChat$18(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2242
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$checkRecordLocked$33(ZLandroid/content/DialogInterface;I)V
    .locals 0

    .line 5877
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 5879
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    goto :goto_0

    .line 5881
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelRecordingAudioVideo()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$createFailView$16(Landroid/view/View;)V
    .locals 0

    .line 1852
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz p1, :cond_0

    .line 1853
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->tryAgain()V

    .line 1854
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createSelfPeerView$21(Landroid/view/View;)V
    .locals 0

    .line 2889
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showUserViewsDialog()V

    return-void
.end method

.method private synthetic lambda$createStealthModeItem$10(Landroid/view/View;)V
    .locals 3

    .line 1548
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->stealthModeIsActive:Z

    if-eqz p1, :cond_0

    .line 1549
    invoke-static {}, Lorg/telegram/ui/Stories/StealthModeAlert;->showStealthModeEnabledBulletin()V

    goto :goto_0

    .line 1551
    :cond_0
    new-instance p1, Lorg/telegram/ui/Stories/StealthModeAlert;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v0, v1, v2}, Lorg/telegram/ui/Stories/StealthModeAlert;-><init>(Landroid/content/Context;FLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1552
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    .line 1554
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_1

    .line 1555
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createStealthModeItem$11(Landroid/view/View;)V
    .locals 3

    .line 1572
    new-instance p1, Lorg/telegram/ui/Stories/StealthModeAlert;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v0, v1, v2}, Lorg/telegram/ui/Stories/StealthModeAlert;-><init>(Landroid/content/Context;FLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1573
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    .line 1574
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_0

    .line 1575
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createUnsupportedContainer$20(Landroid/view/View;)V
    .locals 1

    .line 2736
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isStandaloneBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2737
    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 2738
    invoke-virtual {p1, v0}, Lorg/telegram/ui/LaunchActivity;->checkAppUpdate(Z)V

    goto :goto_0

    .line 2740
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->isHuaweiStoreApp()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2741
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lorg/telegram/messenger/BuildVars;->HUAWEI_STORE_URL:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2743
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lorg/telegram/messenger/BuildVars;->PLAYSTORE_APP_URL:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$deleteStory$22(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2922
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->cancelOrDelete()V

    .line 2923
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStoryItems()V

    .line 2924
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->count:I

    if-nez p1, :cond_0

    .line 2925
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->switchToNextAndRemoveCurrentPeer()V

    return-void

    .line 2928
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    iget p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->count:I

    if-lt p1, p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    .line 2929
    iput p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 2931
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    .line 2933
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    return-void
.end method

.method private static synthetic lambda$deleteStory$23(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2936
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$editPrivacy$30(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 5827
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    if-eqz p2, :cond_2

    .line 5829
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "STORY_NOT_MODIFIED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 5858
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget p3, Lorg/telegram/messenger/R$string;->UnknownError:I

    const-string p4, "UnknownError"

    invoke-static {p4, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto/16 :goto_5

    .line 5831
    :cond_2
    :goto_0
    iput-object p4, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->parsedPrivacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    .line 5832
    invoke-virtual {p4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->toValue()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->privacy:Ljava/util/ArrayList;

    .line 5833
    iget p1, p4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->type:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, p2

    :goto_1
    iput-boolean v1, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->close_friends:Z

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    move v2, p2

    .line 5834
    :goto_2
    iput-boolean v2, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->contacts:Z

    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    move p1, v0

    goto :goto_3

    :cond_5
    move p1, p2

    .line 5835
    :goto_3
    iput-boolean p1, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->selected_contacts:Z

    .line 5836
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    iget-wide v3, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {p1, v3, v4, p3}, Lorg/telegram/ui/Stories/StoriesController;->updateStoryItem(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 5837
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->editedPrivacy:Z

    .line 5839
    iget p1, p4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->type:I

    const/4 p3, 0x4

    if-ne p1, p3, :cond_6

    .line 5840
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->contact_check:I

    const-string p3, "StorySharedToEveryone"

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto/16 :goto_5

    :cond_6
    if-ne p1, v0, :cond_7

    .line 5842
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->contact_check:I

    const-string p3, "StorySharedToCloseFriends"

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto/16 :goto_5

    :cond_7
    if-ne p1, v1, :cond_9

    .line 5844
    iget-object p1, p4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 5845
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->contact_check:I

    const-string p3, "StorySharedToAllContacts"

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_5

    .line 5847
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$raw;->contact_check:I

    iget-object p4, p4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "StorySharedToAllContactsExcluded"

    invoke-static {v0, p4, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_5

    :cond_9
    if-ne p1, v2, :cond_b

    .line 5850
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 5851
    iget-object p3, p4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 5852
    iget-object p3, p4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/ArrayList;

    .line 5853
    invoke-virtual {p1, p4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 5855
    :cond_a
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p3, p4}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/R$raw;->contact_check:I

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "StorySharedToContacts"

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p4, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 5861
    :cond_b
    :goto_5
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    return-void
.end method

.method private synthetic lambda$editPrivacy$31(Ljava/lang/Runnable;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 5825
    new-instance p4, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda31;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$editPrivacy$32(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;ZZLorg/telegram/tgnet/TLRPC$InputPeer;Ljava/lang/Runnable;)V
    .locals 2

    .line 5820
    new-instance p3, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;

    invoke-direct {p3}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;-><init>()V

    .line 5821
    iget p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget-wide v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {p4, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p4

    iput-object p4, p3, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 5822
    iget p4, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput p4, p3, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->id:I

    .line 5823
    iget p4, p3, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    or-int/lit8 p4, p4, 0x4

    iput p4, p3, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    .line 5824
    iget-object p4, p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    iput-object p4, p3, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->privacy_rules:Ljava/util/ArrayList;

    .line 5825
    iget p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance p5, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda34;

    invoke-direct {p5, p0, p6, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V

    invoke-virtual {p4, p3, p5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$needEnterText$29()V
    .locals 2

    .line 5718
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->requestAdjust(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 916
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/StoryCaptionView;->expanded:Z

    if-eqz v0, :cond_1

    .line 917
    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 918
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryCaptionView;->collapse()V

    goto :goto_0

    .line 920
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryCaptionView;->checkCancelTextSelection()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 923
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->checkBlackoutMode:Z

    .line 924
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryCaptionView;->expand()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 933
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->shareStory(Z)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    const/4 v0, 0x0

    .line 941
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->likeStory(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    return-void
.end method

.method private synthetic lambda$new$24()V
    .locals 1

    const/4 v0, 0x1

    .line 3173
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkStealthMode(Z)V

    return-void
.end method

.method private synthetic lambda$new$27()V
    .locals 4

    const/4 v0, 0x0

    .line 3619
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showNoSoundHint(Z)V

    .line 3620
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "taptostorysoundhint"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    .line 939
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-nez p1, :cond_0

    .line 940
    new-instance p1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda23;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->applyMessageToChat(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 944
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->likeStory(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$4(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)Z
    .locals 1

    .line 948
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsTooltipRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    .line 949
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    .line 950
    iput-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsTooltipRunnable:Ljava/lang/Runnable;

    :cond_0
    const/4 p2, 0x1

    .line 952
    invoke-static {p2}, Lorg/telegram/messenger/SharedConfig;->setStoriesReactionsLongPressHintUsed(Z)V

    .line 953
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsLongpressTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_1

    .line 954
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 956
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkReactionsLayoutForLike()V

    .line 957
    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->emptyMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 958
    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->showLikesReaction(Z)V

    return p2
.end method

.method private synthetic lambda$new$5(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V
    .locals 4

    .line 976
    iget p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    iget-wide v0, p2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 977
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    const-string v1, "type"

    .line 978
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 979
    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const-string v2, "dialog_id"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 980
    new-instance v0, Lorg/telegram/ui/Components/MediaActivity;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lorg/telegram/ui/Components/MediaActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    .line 981
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long p2, v2, v0

    if-lez p2, :cond_1

    .line 984
    invoke-static {v2, v3}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_0

    .line 986
    :cond_1
    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$6(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Landroid/view/View;)V
    .locals 13

    move-object v10, p0

    .line 1006
    iget-object v0, v10, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setPopupIsVisible(Z)V

    const/4 v0, 0x0

    .line 1007
    iput-object v0, v10, Lorg/telegram/ui/Stories/PeerStoriesView;->editStoryItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-array v9, v1, [Z

    const/4 v11, 0x0

    aput-boolean v11, v9, v11

    .line 1009
    iget-boolean v0, v10, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v0, :cond_0

    .line 1010
    iget v0, v10, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->loadBlocklistAtFirst()V

    .line 1011
    iget v0, v10, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->loadSendAs()V

    .line 1012
    iget v0, v10, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/DraftsController;->load()V

    .line 1014
    :cond_0
    new-instance v12, Lorg/telegram/ui/Stories/PeerStoriesView$6;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v4, v10, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    move-object v0, v12

    move-object v1, p0

    move-object v3, p1

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Stories/PeerStoriesView$6;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;[Z)V

    iput-object v12, v10, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    .line 1440
    iget-object v0, v10, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    neg-int v1, v1

    const/4 v2, 0x6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v12, v0, v11, v1}, Lorg/telegram/ui/Components/CustomPopupMenu;->show(Landroid/view/View;II)V

    return-void
.end method

.method private synthetic lambda$new$7()V
    .locals 2

    .line 1470
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsHintVisible(Z)V

    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/View;)V
    .locals 12

    .line 1458
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez p1, :cond_0

    return-void

    .line 1462
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v0, :cond_1

    .line 1463
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->privacy:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(ILjava/util/ArrayList;)V

    .line 1464
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->editPrivacy(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    goto/16 :goto_3

    .line 1466
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 1467
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    .line 1468
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1469
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    new-instance v4, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda24;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    .line 1470
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1471
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v4, v3, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1472
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v5, -0x1

    const/16 v6, 0x3c

    const/16 v7, 0x37

    const/4 v8, 0x0

    const/16 v9, 0x34

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1474
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 1478
    :cond_3
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    const/16 v4, 0x20

    .line 1480
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_4

    .line 1481
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1485
    :cond_4
    iget-boolean v4, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->close_friends:Z

    const/16 v5, 0xf

    if-eqz v4, :cond_5

    .line 1486
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1, v5, v1, v5, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setInnerPadding(IIII)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1487
    sget p1, Lorg/telegram/messenger/R$string;->StoryCloseFriendsHint:I

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "StoryCloseFriendsHint"

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    :goto_0
    move v0, v2

    goto :goto_1

    .line 1488
    :cond_5
    iget-boolean v4, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->contacts:Z

    if-eqz v4, :cond_6

    .line 1489
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, 0x6

    const/4 v4, 0x7

    const/16 v5, 0xb

    invoke-virtual {p1, v5, v1, v5, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setInnerPadding(IIII)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1490
    sget p1, Lorg/telegram/messenger/R$string;->StoryContactsHint:I

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "StoryContactsHint"

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    move v0, v3

    goto :goto_1

    .line 1492
    :cond_6
    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->selected_contacts:Z

    if-eqz p1, :cond_9

    .line 1493
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1, v5, v1, v5, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setInnerPadding(IIII)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1494
    sget p1, Lorg/telegram/messenger/R$string;->StorySelectedContactsHint:I

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "StorySelectedContactsHint"

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    goto :goto_0

    .line 1498
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-static {p1, v1, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1499
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v0

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    :goto_2
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMaxWidthPx(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1500
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1501
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->getCenterX()F

    move-result v3

    sub-float/2addr v1, v3

    neg-float v1, v1

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1502
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsHintVisible(Z)V

    .line 1503
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1504
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_LIGHT:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    .line 1506
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_9
    :goto_3
    return-void
.end method

.method private synthetic lambda$new$9(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V
    .locals 1

    .line 1512
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->hasSound()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1513
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->toggleSilentMode()V

    .line 1514
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->soundEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1515
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 p2, 0x3

    const-string v0, "taptostorysoundhint"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1518
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->showNoSoundHint(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onMeasure$28(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 5008
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    .line 5009
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$saveToGallery$19(ZLandroid/net/Uri;)V
    .locals 1

    .line 2261
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSaveToGalleryBulletin(Landroid/widget/FrameLayout;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$showLikesReaction$12(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1596
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionShowProgress:F

    .line 1597
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTransitionProgress(F)V

    return-void
.end method

.method private static synthetic lambda$toggleArchiveForStory$13(Lorg/telegram/messenger/MessagesController;JZ)V
    .locals 6

    .line 1827
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    xor-int/lit8 v3, p3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesController;->toggleHidden(JZZZ)V

    return-void
.end method

.method private static synthetic lambda$toggleArchiveForStory$14(Lorg/telegram/messenger/MessagesController;JZ)V
    .locals 6

    .line 1830
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-wide v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesController;->toggleHidden(JZZZ)V

    return-void
.end method

.method private synthetic lambda$toggleArchiveForStory$15(Lorg/telegram/messenger/MessagesController;JZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 6

    .line 1824
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-wide v1, p2

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesController;->toggleHidden(JZZZ)V

    .line 1825
    new-instance v0, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;

    invoke-direct {v0}, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;-><init>()V

    .line 1826
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda21;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/messenger/MessagesController;JZ)V

    iput-object v1, v0, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;->onUndo:Ljava/lang/Runnable;

    .line 1829
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda22;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/messenger/MessagesController;JZ)V

    iput-object v1, v0, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;->onAction:Ljava/lang/Runnable;

    const/16 p1, 0xa

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_0

    .line 1834
    sget p4, Lorg/telegram/messenger/R$string;->StoriesMovedToDialogs:I

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p5, p2, p1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p3

    const-string p1, "StoriesMovedToDialogs"

    invoke-static {p1, p4, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    goto :goto_0

    .line 1836
    :cond_0
    sget p4, Lorg/telegram/messenger/R$string;->StoriesMovedToContacts:I

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p5, p2, p1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p3

    const-string p1, "StoriesMovedToContacts"

    invoke-static {p1, p4, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 1838
    :goto_0
    iget-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object p5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p4, p5}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p4

    new-array p5, v1, [Lorg/telegram/tgnet/TLObject;

    aput-object p6, p5, p3

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p4, p3, p1, p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/BulletinFactory$UndoObject;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->setTag(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$updatePosition$25()V
    .locals 2

    .line 3574
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$updatePosition$26()V
    .locals 11

    .line 3595
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3598
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsTooltipRunnable:Ljava/lang/Runnable;

    .line 3599
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsLongpressTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 3600
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x3e500000    # -22.0f

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsLongpressTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v2, -0x1000000

    const/4 v3, -0x1

    const v4, 0x3e051eb8    # 0.13f

    .line 3601
    invoke-static {v2, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    const/16 v3, 0xf0

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setBgColor(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 3602
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsLongpressTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setBounce(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 3603
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsLongpressTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    sget v3, Lorg/telegram/messenger/R$string;->ReactionLongTapHint:I

    const-string v4, "ReactionLongTapHint"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 3604
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsLongpressTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 3605
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsLongpressTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x55

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-boolean v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eqz v10, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x38

    :goto_0
    move v10, v2

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3607
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsLongpressTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 3608
    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->setStoriesReactionsLongPressHintUsed(Z)V

    return-void
.end method

.method private likeStory(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 13

    .line 1630
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1633
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 1634
    :goto_0
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    .line 1655
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->animateLikeButton()V

    .line 1656
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v7, v7, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {p1, v5, v6, v7, v4}, Lorg/telegram/ui/Stories/StoriesController;->setStoryReaction(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    goto :goto_2

    :cond_3
    :goto_1
    if-nez p1, :cond_5

    .line 1637
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object p1

    const-string v5, "\u2764"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz p1, :cond_6

    .line 1639
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawAnimatedEmojiAsMovingReaction:Z

    .line 1640
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->around_animation:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1641
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->getFilterForAroundAnimation()Ljava/lang/String;

    move-result-object v8

    .line 1642
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 1643
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1644
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v5

    invoke-virtual {v5, v1, v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 1646
    :cond_4
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawReactionEffect:Z

    .line 1647
    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p1

    .line 1648
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v8, v8, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v5, v6, v7, v8, p1}, Lorg/telegram/ui/Stories/StoriesController;->setStoryReaction(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    goto :goto_2

    .line 1651
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->animateLikeButton()V

    .line 1652
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v8, v8, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v5, v6, v7, v8, p1}, Lorg/telegram/ui/Stories/StoriesController;->setStoryReaction(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    .line 1660
    :cond_6
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    xor-int/lit8 v3, v3, 0x1

    .line 1669
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p1

    invoke-virtual {v4, p1}, Lorg/telegram/ui/Stories/StoriesLikeButton;->setReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    const/4 p1, 0x3

    .line 1670
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    move p1, v2

    goto :goto_4

    .line 1664
    :cond_8
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Stories/StoriesLikeButton;->setReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    move p1, v1

    .line 1673
    :goto_4
    iget-boolean v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v4, :cond_b

    if-eqz v3, :cond_b

    .line 1674
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    if-nez v4, :cond_9

    .line 1675
    new-instance v4, Lorg/telegram/tgnet/tl/TL_stories$TL_storyViews;

    invoke-direct {v4}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyViews;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    .line 1677
    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    if-eqz p1, :cond_a

    move p1, v2

    goto :goto_5

    :cond_a
    const/4 p1, -0x1

    :goto_5
    add-int/2addr v4, p1

    iput v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    if-gez v4, :cond_b

    .line 1679
    iput v1, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    .line 1682
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->applyForStoryViews(Lorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/tgnet/tl/TL_stories$StoryViews;)V

    .line 1683
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateUserViews(Z)V

    return-void
.end method

.method private onLickCopied()V
    .locals 4

    .line 2517
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v0, :cond_0

    return-void

    .line 2520
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_exportStoryLink;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_exportStoryLink;-><init>()V

    .line 2521
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_exportStoryLink;->id:I

    .line 2522
    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_exportStoryLink;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2523
    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$23;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$23;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private openAttachMenu()V
    .locals 3

    .line 2282
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-nez v0, :cond_0

    return-void

    .line 2285
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createChatAttachView()V

    .line 2286
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loadGalleryPhotos()V

    .line 2287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-ne v0, v1, :cond_2

    .line 2288
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    .line 2290
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setMaxSelectedPhotos(IZ)V

    .line 2291
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->init()V

    .line 2292
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentTextView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    .line 2293
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDialogId(J)V

    .line 2294
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method private openChat()V
    .locals 4

    .line 5428
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5429
    iget-wide v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const-string v3, "user_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5430
    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getDialog(J)Lorg/telegram/tgnet/TLRPC$Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5432
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->top_message:I

    const-string v2, "message_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5434
    :cond_0
    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 5435
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method private requestVideoPlayer(J)V
    .locals 11

    const-string v0, "UTF-8"

    .line 3894
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 3896
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 3898
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3899
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-wide/16 v3, 0x0

    .line 3900
    iput-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->videoDuration:J

    move-object v7, v0

    move-object v6, v2

    goto/16 :goto_2

    .line 3901
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_3

    .line 3902
    iget-wide v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iput-wide v4, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    .line 3904
    :try_start_0
    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3905
    :try_start_1
    iget v5, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fileReference:I

    if-nez v5, :cond_1

    .line 3906
    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v6, v6, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/FileLoader;->getFileReference(Ljava/lang/Object;)I

    move-result v5

    iput v5, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fileReference:I

    .line 3908
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "?account="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "&id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "&hash="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "&dc="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "&size="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "&mime="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 3913
    invoke-static {v5, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&rid="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v5, v5, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fileReference:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "&name="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3915
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&reference="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3916
    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-array v0, v3, [B

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tg://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3918
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getDocumentDuration(Lorg/telegram/tgnet/TLRPC$Document;)D

    move-result-wide v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    mul-double/2addr v5, v7

    double-to-long v5, v5

    iput-wide v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->videoDuration:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v0

    goto :goto_1

    :catch_0
    move-object v4, v2

    :catch_1
    move-object v7, v2

    :goto_1
    move-object v6, v4

    goto :goto_2

    :cond_3
    move-object v6, v2

    move-object v7, v6

    .line 3923
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    iget-object v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    move-wide v8, p1

    invoke-interface/range {v5 .. v10}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->requestPlayer(Lorg/telegram/tgnet/TLRPC$Document;Landroid/net/Uri;JLorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;)V

    .line 3924
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_3

    .line 3926
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    invoke-interface/range {v4 .. v9}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->requestPlayer(Lorg/telegram/tgnet/TLRPC$Document;Landroid/net/Uri;JLorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;)V

    .line 3927
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iput-object v2, p1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    .line 3928
    iput-boolean v3, p1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    goto :goto_3

    .line 3931
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iput-object v2, p1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    :goto_3
    return-void
.end method

.method private saveToGallery()V
    .locals 8

    .line 2251
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v1, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-nez v2, :cond_0

    return-void

    .line 2254
    :cond_0
    instance-of v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-eqz v1, :cond_1

    return-void

    .line 2257
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getPath()Ljava/io/File;

    move-result-object v0

    .line 2258
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo()Z

    move-result v4

    if-eqz v0, :cond_2

    .line 2259
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2260
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda33;

    invoke-direct {v7, p0, v4}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_0

    .line 2264
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showDownloadAlert()V

    :goto_0
    return-void
.end method

.method private sendUriAsDocument(Landroid/net/Uri;)V
    .locals 19

    move-object/from16 v1, p0

    if-nez p1, :cond_0

    return-void

    .line 4253
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v12, :cond_8

    .line 4254
    instance-of v0, v12, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 4257
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.google.android.apps.photos.contentprovider"

    .line 4258
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    :try_start_0
    const-string v2, "/1/"

    .line 4260
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    const-string v2, "/ACTUAL"

    .line 4261
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    .line 4263
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    .line 4264
    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4265
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p1

    :goto_0
    move-object v5, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 4268
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    move-object/from16 v5, p1

    .line 4271
    :goto_1
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 4274
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    if-nez v0, :cond_6

    .line 4277
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file"

    .line 4278
    invoke-static {v5, v2}, Lorg/telegram/messenger/MediaController;->copyFileToCache(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 4281
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showAttachmentError()V

    return-void

    :cond_5
    move v3, v4

    move-object v4, v0

    move-object v0, v2

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_2
    move-object v4, v0

    :goto_3
    if-eqz v3, :cond_7

    .line 4286
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-wide v8, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v2 .. v18}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocument(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Lorg/telegram/messenger/MessageObject;ZILandroidx/core/view/inputmethod/InputContentInfoCompat;Ljava/lang/String;)V

    goto :goto_4

    .line 4288
    :cond_7
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-wide v8, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v3, v0

    invoke-static/range {v2 .. v18}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocument(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Lorg/telegram/messenger/MessageObject;ZILandroidx/core/view/inputmethod/InputContentInfoCompat;Ljava/lang/String;)V

    :cond_8
    :goto_4
    return-void
.end method

.method private setStoryImage(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v5, p3

    .line 3735
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v1, v2, v3, v12}, Lorg/telegram/ui/Stories/StoriesController;->findEditingStory(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v2, p2

    .line 3737
    invoke-direct {v0, v1, v2, v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->setStoryImage(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object/from16 v2, p2

    .line 3740
    iget-object v1, v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3742
    :goto_0
    iget-object v3, v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    const-string v4, "_pframe"

    if-eqz v3, :cond_4

    .line 3743
    iget-object v6, v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v6, :cond_2

    .line 3744
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".mp4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    .line 3747
    iget-object v1, v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->firstFramePath:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object/from16 v5, p3

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-wide v9, v10

    move-object v11, v12

    move-object v12, v13

    move v13, v14

    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 3749
    :cond_3
    iget-object v1, v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v1, p2

    move-object v2, v3

    move-object/from16 v3, p3

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v8

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_2

    :cond_4
    if-eqz v1, :cond_5

    .line 3753
    iget-object v1, v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v3, 0x3e8

    invoke-static {v1, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 3754
    iget-object v3, v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1, v6}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object/from16 v5, p3

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-wide v9, v10

    move-object v11, v13

    move-object/from16 v12, p1

    move v13, v14

    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_2

    .line 3756
    :cond_5
    iget-object v1, v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_7

    .line 3757
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    const v4, 0x7fffffff

    .line 3758
    invoke-static {v3, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 3759
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v6, 0x320

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 3763
    invoke-static {v3, v1}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, p2

    move-object v2, v4

    move-object v3, v6

    move-object v4, v7

    move-object/from16 v5, p3

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-wide v9, v13

    move-object/from16 v12, p1

    move v13, v15

    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_2

    .line 3766
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    :goto_2
    return-void
.end method

.method private setStoryImage(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;)V
    .locals 15

    move-object/from16 v0, p1

    .line 3773
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->isVideo:Z

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3774
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    .line 3776
    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method

.method private shareStory(Z)V
    .locals 11

    .line 2455
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_1

    .line 2457
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->createLink()Ljava/lang/String;

    move-result-object v8

    if-eqz p1, :cond_0

    .line 2459
    new-instance v10, Lorg/telegram/ui/Stories/PeerStoriesView$20;

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v10, p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$20;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2465
    new-instance p1, Lorg/telegram/ui/Stories/PeerStoriesView$21;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p0

    move-object v6, v8

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/Stories/PeerStoriesView$21;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareAlert:Lorg/telegram/ui/Components/ShareAlert;

    .line 2496
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iput-wide v1, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    .line 2497
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ShareAlert;->setStoryToShare(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 2498
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareAlert:Lorg/telegram/ui/Components/ShareAlert;

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$22;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ShareAlert;->setDelegate(Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;)V

    .line 2506
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareAlert:Lorg/telegram/ui/Components/ShareAlert;

    invoke-interface {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    goto :goto_0

    .line 2508
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    .line 2509
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 2510
    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2511
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    sget v1, Lorg/telegram/messenger/R$string;->StickersShare:I

    const-string v2, "StickersShare"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showAttachmentError()V
    .locals 3

    .line 4293
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->UnsupportedAttachment:I

    const-string v2, "UnsupportedAttachment"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private showDownloadAlert()V
    .locals 3

    .line 2269
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2270
    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    const-string v2, "AppName"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2271
    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    const-string v2, "OK"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2276
    sget v1, Lorg/telegram/messenger/R$string;->PleaseDownload:I

    const-string v2, "PleaseDownload"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2278
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method private showLikesReaction(Z)V
    .locals 4

    .line 1583
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionShowing:Z

    if-eq v0, p1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1586
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionShowing:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1588
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1590
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setStoryItem(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 1591
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v1, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsLikesReaction(Z)V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 1593
    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionShowProgress:F

    aput v3, v2, v0

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_2
    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1594
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionShowProgress:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTransitionProgress(F)V

    .line 1595
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1599
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$9;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$9;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0xc8

    .line 1608
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1609
    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1610
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1612
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1613
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissWithAlpha()V

    .line 1615
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$10;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$10;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1623
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    :goto_0
    return-void
.end method

.method private showUserViewsDialog()V
    .locals 1

    .line 2951
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->openViews()V

    return-void
.end method

.method private toggleArchiveForStory(J)V
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1808
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 1810
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 1811
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$User;->stories_hidden:Z

    goto :goto_0

    .line 1813
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1815
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 1816
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_hidden:Z

    :goto_0
    xor-int/lit8 v2, v2, 0x1

    move-object v10, v0

    move-object v9, v1

    move v8, v2

    .line 1818
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    .line 1823
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda32;

    move-object v3, v0

    move-object v4, p0

    move-wide v6, p1

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/messenger/MessagesController;JZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    const-wide/16 p1, 0xc8

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private updateButtonsOffsets(F)V
    .locals 2

    .line 3027
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v0, :cond_0

    .line 3028
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v0

    neg-float v0, v0

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    .line 3030
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 3031
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_0

    .line 3032
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3033
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    const/16 v1, 0x28

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 3034
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_0

    .line 3036
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 3037
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :goto_0
    return-void
.end method

.method private updatePosition(Z)V
    .locals 41

    move-object/from16 v0, p0

    .line 3205
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 3208
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 3209
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 3210
    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    .line 3212
    invoke-static {}, Lorg/telegram/ui/Stories/StoriesUtilities;->getStoryImageFilter()Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x0

    .line 3214
    iput-boolean v15, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastNoThumb:Z

    .line 3215
    iput-boolean v15, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    .line 3216
    iget v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    .line 3218
    iget-boolean v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isUploading:Z

    .line 3219
    iget-boolean v13, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    .line 3220
    iget-boolean v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isFailed:Z

    .line 3222
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    const/4 v9, 0x0

    iput-object v9, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->editingSourceItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 3223
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/16 v5, 0x96

    if-nez v4, :cond_6

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v14, v4, :cond_6

    .line 3224
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isUploading:Z

    .line 3225
    iput-boolean v15, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    .line 3226
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v14, v4

    if-ltz v14, :cond_5

    .line 3227
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v14, v4, :cond_1

    goto/16 :goto_3

    .line 3230
    :cond_1
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    .line 3231
    iget-boolean v4, v8, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->failed:Z

    iput-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isFailed:Z

    xor-int/2addr v4, v1

    .line 3232
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isUploading:Z

    .line 3234
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, v15}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    .line 3235
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeDuration(I)V

    .line 3236
    iget-object v4, v8, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 3237
    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v17, 0x3

    const/16 v18, 0x1

    .line 3238
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v21

    move-object/from16 v16, v4

    invoke-static/range {v16 .. v21}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 3239
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v16, v5

    goto :goto_0

    :cond_2
    move-object/from16 v16, v9

    .line 3241
    :goto_0
    iget-boolean v4, v8, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->isVideo:Z

    if-nez v4, :cond_4

    iget-boolean v4, v8, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->hadFailed:Z

    if-eqz v4, :cond_3

    goto :goto_1

    .line 3244
    :cond_3
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v8, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v1, v8

    move-object v8, v10

    move-object v10, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move/from16 v24, v11

    move-object/from16 v11, v16

    move/from16 v25, v12

    move/from16 v26, v13

    move-wide/from16 v12, v19

    move/from16 v17, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v22

    move/from16 v16, v23

    invoke-virtual/range {v4 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_2

    :cond_4
    :goto_1
    move-object v1, v8

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v26, v13

    move/from16 v17, v14

    .line 3242
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object v8, v10

    move-object v10, v11

    move-object/from16 v11, v16

    move/from16 v16, v18

    invoke-virtual/range {v4 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 3246
    :goto_2
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->set(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V

    .line 3247
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->getMediaAreasFor(Lorg/telegram/ui/Stories/recorder/StoryEntry;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    const/4 v15, 0x0

    invoke-virtual {v4, v15, v1, v5}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->set(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;Lorg/telegram/ui/EmojiAnimationsOverlay;)V

    const/4 v1, 0x0

    .line 3248
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    move/from16 v14, v17

    move/from16 v1, v26

    goto/16 :goto_17

    :cond_5
    :goto_3
    return-void

    :cond_6
    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v26, v13

    move v1, v15

    move-object v15, v9

    .line 3250
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isUploading:Z

    .line 3251
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    .line 3252
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isFailed:Z

    if-ltz v14, :cond_6e

    .line 3253
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    if-le v14, v4, :cond_7

    goto/16 :goto_3b

    .line 3257
    :cond_7
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 3258
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v4, v7, v8, v13}, Lorg/telegram/ui/Stories/StoriesController;->findEditingStory(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 3260
    iput-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    .line 3261
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    .line 3262
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->onImageReceiverThumbLoaded:Ljava/lang/Runnable;

    if-nez v6, :cond_8

    goto :goto_4

    :cond_8
    move v5, v1

    :goto_4
    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeDuration(I)V

    .line 3263
    iget-boolean v4, v12, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->isVideo:Z

    if-eqz v4, :cond_9

    .line 3264
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v12, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const/4 v9, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v8, v10

    move-wide/from16 v10, v16

    move-object v1, v12

    move-object/from16 v12, v18

    move-object/from16 v27, v13

    move-object/from16 v13, v19

    move/from16 v17, v14

    move/from16 v14, v20

    invoke-virtual/range {v4 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_5

    :cond_9
    move-object v1, v12

    move-object/from16 v27, v13

    move/from16 v17, v14

    .line 3266
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const/4 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v8, v10

    move-wide v10, v11

    move-object v12, v13

    move-object v13, v14

    move/from16 v14, v16

    invoke-virtual/range {v4 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 3268
    :goto_5
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->set(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V

    .line 3269
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->getMediaAreasFor(Lorg/telegram/ui/Stories/recorder/StoryEntry;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {v4, v15, v1, v5}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->set(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;Lorg/telegram/ui/EmojiAnimationsOverlay;)V

    .line 3270
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    move-object/from16 v14, v27

    iput-object v14, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->editingSourceItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    const/4 v1, 0x0

    .line 3271
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    move/from16 v1, v26

    goto/16 :goto_16

    :cond_a
    move/from16 v17, v14

    move-object v14, v13

    .line 3273
    iget-object v1, v14, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v1, :cond_b

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 3275
    :goto_6
    iget-wide v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iput-wide v6, v14, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    .line 3276
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move/from16 v12, v26

    invoke-virtual {v4, v12}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    .line 3277
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeDuration(I)V

    .line 3278
    iget-object v4, v14, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    .line 3279
    iput-boolean v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    move v1, v12

    move-object/from16 v27, v14

    goto/16 :goto_f

    .line 3280
    :cond_c
    iget-object v5, v14, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    const-string v6, "_pframe"

    if-eqz v5, :cond_14

    if-nez v4, :cond_d

    .line 3282
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, ".mp4"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    :cond_d
    if-eqz v1, :cond_10

    .line 3285
    iget-object v1, v14, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v1, :cond_e

    .line 3286
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v34, v1

    goto :goto_7

    :cond_e
    move-object/from16 v34, v15

    .line 3288
    :goto_7
    iget-object v1, v14, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->firstFramePath:Ljava/lang/String;

    if-eqz v1, :cond_f

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v14, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->firstFramePath:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v15, v15, v7}, Lorg/telegram/messenger/ImageLocation;->getKey(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v7}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3289
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v1, v14, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->firstFramePath:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-wide/16 v18, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v8, v10

    move-object v10, v1

    move-object/from16 v11, v34

    move v1, v12

    move-wide/from16 v12, v18

    move-object/from16 v40, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v20

    move/from16 v16, v21

    invoke-virtual/range {v4 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    move-object/from16 v27, v40

    goto/16 :goto_f

    :cond_f
    move v1, v12

    move-object/from16 v40, v14

    .line 3291
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v15, v40

    iget-object v5, v15, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v30

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v27, v4

    invoke-virtual/range {v27 .. v39}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    :goto_8
    move-object/from16 v27, v15

    goto/16 :goto_f

    :cond_10
    move v1, v12

    move-object v15, v14

    .line 3294
    iget-object v4, v15, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_11

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_9

    :cond_11
    const/4 v9, 0x0

    :goto_9
    if-eqz v9, :cond_12

    .line 3296
    iget-object v4, v9, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v9, v4

    goto :goto_a

    :cond_12
    const/4 v9, 0x0

    :goto_a
    if-eqz v1, :cond_13

    .line 3299
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v15, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    iget-object v6, v15, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->firstFramePath:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v6, v10

    move-object v8, v10

    move-wide v10, v11

    move-object v12, v13

    move-object v13, v14

    move/from16 v14, v16

    invoke-virtual/range {v4 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_8

    .line 3301
    :cond_13
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v15, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v6, v10

    move-wide v10, v11

    move-object v12, v13

    move-object v13, v14

    move/from16 v14, v16

    invoke-virtual/range {v4 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_8

    :cond_14
    move-object v15, v14

    move v14, v12

    .line 3305
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, v4, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez v5, :cond_15

    iget-boolean v5, v4, Lorg/telegram/ui/Stories/StoryViewer;->isSingleStory:Z

    if-eqz v5, :cond_16

    :cond_15
    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    if-eqz v4, :cond_16

    iget-object v5, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v5, :cond_16

    iget v4, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyId:I

    iget v7, v15, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-ne v4, v7, :cond_16

    .line 3306
    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_b

    :cond_16
    const/4 v9, 0x0

    .line 3308
    :goto_b
    iget-wide v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iput-wide v4, v15, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    if-eqz v1, :cond_18

    .line 3310
    iget-object v1, v15, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v4, 0x3e8

    invoke-static {v1, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    if-nez v9, :cond_17

    .line 3312
    iget-object v4, v15, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v11, v4

    goto :goto_c

    :cond_17
    move-object v11, v9

    .line 3314
    :goto_c
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v8, v15, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v8}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v6, v15, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1, v6}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const-wide/16 v12, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v1

    move v1, v14

    move-object/from16 v14, v16

    move-object/from16 v27, v15

    move/from16 v16, v18

    invoke-virtual/range {v4 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_f

    :cond_18
    move v1, v14

    .line 3316
    iget-object v4, v15, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_19

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_d

    :cond_19
    const/4 v4, 0x0

    :goto_d
    if-eqz v4, :cond_1b

    .line 3317
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v5, :cond_1b

    if-nez v9, :cond_1a

    .line 3319
    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v11, v5

    goto :goto_e

    :cond_1a
    move-object v11, v9

    .line 3321
    :goto_e
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const v6, 0x7fffffff

    invoke-static {v5, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    .line 3322
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v7, 0x320

    invoke-static {v6, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3326
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v4}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v18, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v12

    move-object v10, v13

    move-wide/from16 v12, v18

    move-object/from16 v27, v15

    invoke-virtual/range {v4 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_f

    :cond_1b
    move-object/from16 v27, v15

    .line 3329
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 3333
    :goto_f
    iget-wide v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    move-object/from16 v6, v27

    iput-wide v4, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    .line 3334
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    if-eqz p1, :cond_1c

    const/4 v9, 0x0

    goto :goto_10

    :cond_1c
    move-object v9, v6

    :goto_10
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {v4, v9, v5}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->set(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/EmojiAnimationsOverlay;)V

    .line 3335
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->set(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 3336
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    if-nez v4, :cond_1d

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v4, :cond_1d

    instance-of v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;

    if-nez v5, :cond_1d

    instance-of v4, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-nez v4, :cond_1d

    const/4 v15, 0x1

    goto :goto_11

    :cond_1d
    const/4 v15, 0x0

    :goto_11
    iput-boolean v15, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    iput-boolean v15, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    if-eqz v15, :cond_1f

    .line 3338
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->allowScreenshots()Z

    move-result v4

    if-eqz v4, :cond_1e

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-boolean v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->isPublic:Z

    if-eqz v4, :cond_1e

    const/4 v15, 0x1

    goto :goto_12

    :cond_1e
    const/4 v15, 0x0

    :goto_12
    iput-boolean v15, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    .line 3340
    :cond_1f
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    if-eqz v4, :cond_23

    .line 3341
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v4, :cond_21

    .line 3342
    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    neg-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    if-eqz v4, :cond_20

    .line 3343
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_20

    const/4 v15, 0x1

    goto :goto_13

    :cond_20
    const/4 v15, 0x0

    :goto_13
    iput-boolean v15, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    goto :goto_15

    .line 3345
    :cond_21
    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 3346
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_22

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-boolean v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->isPublic:Z

    if-eqz v4, :cond_22

    const/4 v15, 0x1

    goto :goto_14

    :cond_22
    const/4 v15, 0x0

    :goto_14
    iput-boolean v15, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    .line 3349
    :cond_23
    :goto_15
    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v4

    iget-wide v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget v5, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v4, v7, v8, v5}, Lorg/telegram/messenger/NotificationsController;->processReadStories(JI)V

    :goto_16
    move/from16 v14, v17

    .line 3353
    :goto_17
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v4, :cond_24

    if-nez p1, :cond_24

    .line 3354
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput v4, v5, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    .line 3357
    :cond_24
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/StoriesViewPager;->checkAllowScreenshots()V

    const/4 v4, 0x1

    .line 3358
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageChanged:Z

    .line 3359
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v4, :cond_25

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v4, :cond_26

    :cond_25
    const/4 v4, 0x0

    .line 3360
    invoke-direct {v0, v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateUserViews(Z)V

    .line 3363
    :cond_26
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v5, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    .line 3364
    invoke-static {v5, v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoryId(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)I

    move-result v4

    invoke-static {v3, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoryId(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)I

    move-result v5

    if-eq v4, v5, :cond_28

    if-eqz v2, :cond_27

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v4, :cond_27

    iget-object v5, v2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    .line 3365
    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_27

    goto :goto_18

    :cond_27
    const/4 v15, 0x0

    goto :goto_19

    :cond_28
    :goto_18
    const/4 v15, 0x1

    :goto_19
    if-eqz v15, :cond_2a

    .line 3366
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    if-ne v4, v1, :cond_29

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isUploading:Z

    move/from16 v4, v25

    if-ne v1, v4, :cond_29

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isFailed:Z

    move/from16 v4, v24

    if-eq v1, v4, :cond_2a

    :cond_29
    const/4 v1, 0x1

    goto :goto_1a

    :cond_2a
    const/4 v1, 0x0

    :goto_1a
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_2b

    .line 3369
    iget-object v7, v2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    if-eqz v7, :cond_2b

    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    .line 3370
    invoke-virtual {v8}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getLocalPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2c

    :cond_2b
    if-eqz v3, :cond_2d

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v7, v7, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v7, :cond_2d

    iget v8, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget v7, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-eq v8, v7, :cond_2c

    goto :goto_1b

    :cond_2c
    const/4 v7, 0x0

    goto :goto_1d

    .line 3374
    :cond_2d
    :goto_1b
    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v7, :cond_2f

    if-eqz v3, :cond_2e

    .line 3375
    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2e

    .line 3376
    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-wide v8, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v3, v10}, Lorg/telegram/ui/Stories/StoryViewer;->saveDraft(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/CharSequence;)V

    .line 3378
    :cond_2e
    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-wide v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v11, v11, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v8, v9, v10, v11}, Lorg/telegram/ui/Stories/StoryViewer;->getDraft(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3380
    :cond_2f
    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {v7}, Lorg/telegram/ui/EmojiAnimationsOverlay;->clear()V

    .line 3381
    iput-wide v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentImageTime:J

    const/4 v7, 0x0

    .line 3382
    iput-boolean v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->switchEventSent:Z

    .line 3384
    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v8, v8, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v8, :cond_31

    .line 3385
    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v9, v9, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    if-eqz v9, :cond_30

    .line 3386
    iget v8, v8, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->progress:F

    invoke-virtual {v9, v8, v7}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    .line 3388
    :cond_30
    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v7, v7, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    goto :goto_1c

    :cond_31
    if-nez v1, :cond_32

    .line 3390
    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-static {v7, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->access$7102(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;F)F

    .line 3392
    :cond_32
    :goto_1c
    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-static {v7}, Lorg/telegram/ui/Components/Bulletin;->hideVisible(Landroid/view/ViewGroup;)V

    .line 3393
    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/StoryCaptionView;->reset()V

    .line 3394
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->cancelWaiting()V

    const/4 v7, 0x1

    :goto_1d
    const/4 v8, 0x2

    if-nez v7, :cond_33

    if-eqz v2, :cond_3a

    .line 3397
    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v9, v9, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-nez v9, :cond_3a

    .line 3398
    :cond_33
    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v10, v9, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v10, :cond_35

    .line 3399
    iget-boolean v9, v10, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->failed:Z

    if-eqz v9, :cond_34

    .line 3400
    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    sget v10, Lorg/telegram/messenger/R$string;->FailedToUploadStory:I

    const-string v11, "FailedToUploadStory"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->setSubtitle(Ljava/lang/CharSequence;Z)V

    goto :goto_1e

    .line 3402
    :cond_34
    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-static {v9}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->access$7200(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)[Landroid/widget/TextView;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget-boolean v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    invoke-static {v10, v11, v12}, Lorg/telegram/ui/Stories/StoriesUtilities;->getUploadingStr(Landroid/widget/TextView;ZZ)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->setSubtitle(Ljava/lang/CharSequence;Z)V

    goto :goto_1e

    .line 3404
    :cond_35
    iget-object v9, v9, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v9, :cond_38

    .line 3405
    iget v9, v9, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->date:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_36

    .line 3406
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    sget v9, Lorg/telegram/messenger/R$string;->CachedStory:I

    const-string v10, "CachedStory"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1e

    :cond_36
    int-to-long v9, v9

    .line 3408
    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->formatStoryDate(J)Ljava/lang/String;

    move-result-object v9

    .line 3409
    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v10, v10, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-boolean v10, v10, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->edited:Z

    if-eqz v10, :cond_37

    .line 3410
    invoke-static {v9}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    .line 3411
    new-instance v10, Lorg/telegram/ui/Components/DotDividerSpan;

    invoke-direct {v10}, Lorg/telegram/ui/Components/DotDividerSpan;-><init>()V

    const/high16 v11, 0x3fc00000    # 1.5f

    .line 3412
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/DotDividerSpan;->setTopPadding(I)V

    const/4 v11, 0x5

    .line 3413
    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/DotDividerSpan;->setSize(I)V

    const-string v11, " . "

    .line 3414
    invoke-virtual {v9, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    sub-int/2addr v12, v8

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    const/16 v16, 0x1

    add-int/lit8 v13, v13, -0x1

    const/4 v8, 0x0

    invoke-virtual {v11, v10, v12, v13, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3415
    sget v8, Lorg/telegram/messenger/R$string;->EditedMessage:I

    const-string v10, "EditedMessage"

    invoke-static {v10, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3418
    :cond_37
    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-virtual {v8, v9, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->setSubtitle(Ljava/lang/CharSequence;Z)V

    .line 3421
    :cond_38
    :goto_1e
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v8, 0x0

    if-eqz v1, :cond_39

    .line 3422
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide(Z)V

    .line 3424
    :cond_39
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v1, :cond_3a

    .line 3425
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide(Z)V

    .line 3428
    :cond_3a
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v8, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-ne v3, v8, :cond_3c

    iget-object v9, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-ne v2, v9, :cond_3c

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->captionTranslated:Z

    if-eqz v8, :cond_3b

    iget-boolean v2, v8, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translated:Z

    if-eqz v2, :cond_3b

    iget-object v2, v8, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v2, :cond_3b

    iget-object v2, v8, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translatedLng:Ljava/lang/String;

    .line 3431
    invoke-static {}, Lorg/telegram/ui/Components/TranslateAlert2;->getToLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const/4 v2, 0x1

    goto :goto_1f

    :cond_3b
    const/4 v2, 0x0

    :goto_1f
    if-eq v1, v2, :cond_3d

    .line 3433
    :cond_3c
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->updateCaption()V

    .line 3435
    :cond_3d
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->captionTranslated:Z

    if-nez v2, :cond_3e

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eq v3, v1, :cond_3f

    .line 3436
    :cond_3e
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-eqz v1, :cond_3f

    const/4 v2, 0x0

    .line 3437
    invoke-interface {v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setTranslating(Z)V

    goto :goto_20

    :cond_3f
    const/4 v2, 0x0

    .line 3441
    :goto_20
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    const/16 v8, 0x8

    if-eqz v1, :cond_41

    .line 3442
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createUnsupportedContainer()V

    .line 3443
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createReplyDisabledView()V

    .line 3444
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupportedContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3445
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3446
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    .line 3447
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_40

    .line 3448
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    .line 3450
    :cond_40
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_47

    .line 3451
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_23

    .line 3454
    :cond_41
    iget-wide v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_42

    .line 3455
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    goto :goto_21

    .line 3456
    :cond_42
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v1, :cond_43

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-nez v1, :cond_43

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_43

    const/4 v2, 0x0

    .line 3457
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    goto :goto_22

    :cond_43
    :goto_21
    const/4 v2, 0x0

    .line 3459
    :goto_22
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v1, :cond_44

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_44

    .line 3460
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3462
    :cond_44
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupportedContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_45

    .line 3463
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3465
    :cond_45
    iget-wide v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 3466
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createReplyDisabledView()V

    .line 3467
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_23

    .line 3468
    :cond_46
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_47

    .line 3469
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3473
    :cond_47
    :goto_23
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->caption:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4a

    iget-boolean v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    if-nez v9, :cond_4a

    .line 3474
    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v9, v9, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v10, v10, Lorg/telegram/ui/Stories/StoryViewer;->isTranslating:Z

    if-eqz v10, :cond_48

    iget-boolean v10, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->captionTranslated:Z

    if-nez v10, :cond_48

    iget-object v10, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v10, :cond_48

    iget-boolean v10, v10, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translated:Z

    if-eqz v10, :cond_48

    const/4 v10, 0x1

    goto :goto_24

    :cond_48
    const/4 v10, 0x0

    :goto_24
    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-ne v3, v1, :cond_49

    const/4 v1, 0x1

    goto :goto_25

    :cond_49
    const/4 v1, 0x0

    :goto_25
    invoke-virtual {v9, v2, v10, v1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->setText(Ljava/lang/CharSequence;ZZ)V

    .line 3475
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_26

    :cond_4a
    const/4 v2, 0x0

    .line 3477
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v1, :cond_4b

    .line 3478
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsCaption(Z)V

    .line 3479
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isCaptionPartVisible:Z

    invoke-interface {v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsCaptionPartVisible(Z)V

    .line 3481
    :cond_4b
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3483
    :goto_26
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 3484
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-eqz v1, :cond_4c

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelectedPeer()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 3485
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    iget-wide v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    invoke-interface {v1, v2, v3, v9}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->onPeerSelected(JI)V

    .line 3487
    :cond_4c
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v1, :cond_4f

    .line 3488
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    if-eqz v2, :cond_4d

    const/4 v2, 0x0

    goto :goto_27

    :cond_4d
    move v2, v8

    :goto_27
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3489
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isFailed:Z

    if-eqz v2, :cond_4e

    move v2, v8

    goto :goto_28

    :cond_4e
    const/4 v2, 0x0

    :goto_28
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2b

    .line 3491
    :cond_4f
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    if-eqz v2, :cond_50

    const/4 v2, 0x0

    goto :goto_29

    :cond_50
    move v2, v8

    :goto_29
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3492
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v2, :cond_51

    move v2, v8

    goto :goto_2a

    :cond_51
    const/4 v2, 0x0

    :goto_2a
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3495
    :goto_2b
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->savedPositions:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v1, v2, v3, v14}, Lorg/telegram/messenger/support/LongSparseIntArray;->append(JI)V

    .line 3498
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v1, :cond_52

    .line 3499
    invoke-direct {v0, v4, v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->requestVideoPlayer(J)V

    .line 3500
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePreloadImages()V

    .line 3501
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->bumpPriority()V

    :cond_52
    const/4 v1, 0x0

    .line 3504
    iput v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->listPosition:I

    .line 3505
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v1, :cond_54

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_54

    .line 3506
    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    const/4 v2, 0x0

    .line 3507
    :goto_2c
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_54

    .line 3508
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_53

    .line 3509
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v3, v1, :cond_53

    .line 3510
    iput v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->listPosition:I

    goto :goto_2d

    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 3515
    :cond_54
    :goto_2d
    iget v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    iput v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->linesPosition:I

    .line 3516
    iget v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->count:I

    iput v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->linesCount:I

    .line 3517
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->reversed:Z

    if-eqz v3, :cond_55

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    .line 3518
    iput v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->linesPosition:I

    .line 3521
    :cond_55
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_58

    .line 3522
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3523
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->hasSound()Z

    move-result v1

    if-eqz v1, :cond_56

    move v1, v2

    goto :goto_2e

    :cond_56
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_2e
    iput v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconViewAlpha:F

    .line 3524
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->hasSound()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 3525
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3526
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->noSoundIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2f

    :cond_57
    const/4 v3, 0x0

    .line 3528
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3529
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->noSoundIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3531
    :goto_2f
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    iget v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconViewAlpha:F

    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v4, v2, v4

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_30

    .line 3533
    :cond_58
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3536
    :goto_30
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v3, :cond_5a

    .line 3537
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v15, :cond_59

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->editedPrivacy:Z

    if-eqz v5, :cond_59

    const/4 v5, 0x1

    goto :goto_31

    :cond_59
    const/4 v5, 0x0

    :goto_31
    invoke-virtual {v1, v4, v3, v5}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->set(ZLorg/telegram/ui/Stories/StoriesController$UploadingStory;Z)Z

    :goto_32
    const/4 v1, 0x0

    const/4 v5, 0x0

    goto :goto_35

    .line 3538
    :cond_5a
    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_5c

    .line 3539
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v15, :cond_5b

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->editedPrivacy:Z

    if-eqz v5, :cond_5b

    const/4 v5, 0x1

    goto :goto_33

    :cond_5b
    const/4 v5, 0x0

    :goto_33
    invoke-virtual {v3, v4, v1, v5}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->set(ZLorg/telegram/tgnet/tl/TL_stories$StoryItem;Z)Z

    goto :goto_32

    .line 3541
    :cond_5c
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v15, :cond_5d

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->editedPrivacy:Z

    if-eqz v4, :cond_5d

    const/4 v4, 0x1

    goto :goto_34

    :cond_5d
    const/4 v4, 0x0

    :goto_34
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->set(ZLorg/telegram/tgnet/tl/TL_stories$StoryItem;Z)Z

    const/4 v1, 0x0

    .line 3543
    :goto_35
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->editedPrivacy:Z

    .line 3544
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5e

    const/16 v3, 0x2c

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    goto :goto_36

    :cond_5e
    move v3, v6

    :goto_36
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    if-eqz v7, :cond_61

    const/4 v1, 0x0

    .line 3546
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawReactionEffect:Z

    .line 3547
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_60

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-nez v1, :cond_5f

    goto :goto_37

    .line 3550
    :cond_5f
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Stories/StoriesLikeButton;->setReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    goto :goto_38

    .line 3548
    :cond_60
    :goto_37
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Stories/StoriesLikeButton;->setReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    .line 3554
    :cond_61
    :goto_38
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    const-wide/16 v3, 0xb4

    if-eqz v1, :cond_64

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->failed:Z

    if-eqz v1, :cond_64

    .line 3555
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createFailView()V

    .line 3556
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v6, v6, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Stories/StoryFailView;->set(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    .line 3557
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3558
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failViewAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v1, :cond_62

    .line 3559
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3560
    iput-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failViewAnimator:Landroid/view/ViewPropertyAnimator;

    :cond_62
    if-eqz v15, :cond_63

    .line 3563
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failViewAnimator:Landroid/view/ViewPropertyAnimator;

    .line 3564
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_39

    .line 3566
    :cond_63
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_39

    .line 3568
    :cond_64
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    if-eqz v1, :cond_67

    .line 3569
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failViewAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v1, :cond_65

    .line 3570
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3571
    iput-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failViewAnimator:Landroid/view/ViewPropertyAnimator;

    :cond_65
    if-eqz v15, :cond_66

    .line 3573
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_66

    .line 3574
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda29;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failViewAnimator:Landroid/view/ViewPropertyAnimator;

    .line 3575
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_39

    .line 3577
    :cond_66
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3578
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3582
    :cond_67
    :goto_39
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoryViewer;->soundEnabled()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->setIconMuted(ZZ)V

    .line 3583
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v1, :cond_68

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_68

    .line 3584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StoryViewer displayed story dialogId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " storyId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3586
    :cond_68
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v1, :cond_69

    .line 3587
    iget v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    iget-wide v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->preload(IJLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 3589
    :cond_69
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v2, :cond_6a

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result v2

    iget v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->linesCount:I

    if-eq v2, v3, :cond_6a

    const/16 v2, 0x38

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    const/4 v2, 0x0

    goto :goto_3a

    :cond_6a
    const/4 v2, 0x0

    const/4 v15, 0x0

    :goto_3a
    invoke-virtual {v1, v2, v2, v15, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 3591
    iget v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/TranslateController;->detectStoryLanguage(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    if-nez p1, :cond_6b

    .line 3593
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v1, :cond_6b

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsTooltipRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_6b

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->storyReactionsLongPressHint:Z

    if-nez v1, :cond_6b

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->storiesIntroShown:Z

    if-eqz v1, :cond_6b

    .line 3594
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda27;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsTooltipRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 3612
    :cond_6b
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v1

    if-nez v1, :cond_6d

    :cond_6c
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->hasSound()Z

    move-result v1

    if-eqz v1, :cond_6d

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryViewer;->soundEnabled()Z

    move-result v1

    if-nez v1, :cond_6d

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "taptostorysoundhint"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_6d

    .line 3613
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->showTapToSoundHint:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3614
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->showTapToSoundHint:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_6d
    return-void

    .line 3254
    :cond_6e
    :goto_3b
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    return-void
.end method

.method private updatePreloadImages()V
    .locals 10

    const-string v0, "UTF-8"

    .line 3644
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 3645
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 3646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3648
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uriesToPrepare:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3649
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->documentsToPrepare:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    move v3, v2

    .line 3650
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadReactionHolders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 3651
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadReactionHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->onAttachedToWindow(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3653
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadReactionHolders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move v3, v2

    :goto_1
    const/4 v4, 0x2

    if-ge v3, v4, :cond_d

    .line 3656
    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    if-nez v3, :cond_1

    add-int/lit8 v4, v4, -0x1

    .line 3660
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->leftPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-gez v4, :cond_2

    .line 3662
    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    goto/16 :goto_6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 3667
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->rightPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 3668
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoriesCount()I

    move-result v6

    if-lt v4, v6, :cond_2

    .line 3669
    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    goto/16 :goto_6

    .line 3673
    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_3

    .line 3674
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v4, v6

    .line 3675
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    .line 3676
    invoke-direct {p0, v4, v5, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->setStoryImage(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 3678
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_6

    :cond_4
    if-gez v4, :cond_5

    move v4, v2

    .line 3684
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-lt v4, v6, :cond_6

    .line 3685
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v7

    .line 3687
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 3688
    iget-wide v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iput-wide v8, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    .line 3689
    invoke-direct {p0, v4, v5, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->setStoryImage(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;)V

    .line 3691
    iget-object v5, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v5, :cond_7

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v5, :cond_7

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    move v7, v2

    :goto_2
    if-eqz v7, :cond_a

    .line 3693
    iget-object v5, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 3694
    iget v6, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fileReference:I

    if-nez v6, :cond_8

    .line 3695
    iget v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/telegram/messenger/FileLoader;->getFileReference(Ljava/lang/Object;)I

    move-result v6

    iput v6, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fileReference:I

    .line 3699
    :cond_8
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "?account="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "&id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "&hash="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "&dc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "&size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "&mime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 3704
    invoke-static {v7, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&rid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fileReference:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "&name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3706
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&reference="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3707
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    if-eqz v7, :cond_9

    goto :goto_3

    :cond_9
    new-array v7, v2, [B

    :goto_3
    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3708
    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uriesToPrepare:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tg://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3709
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->documentsToPrepare:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    .line 3711
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 3715
    :cond_a
    :goto_4
    iget-object v5, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    if-eqz v5, :cond_c

    move v5, v2

    .line 3716
    :goto_5
    iget-object v6, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_c

    .line 3717
    iget-object v6, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;

    if-eqz v6, :cond_b

    .line 3718
    iget-object v6, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;

    .line 3719
    new-instance v7, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;-><init>(Landroid/view/View;)V

    .line 3720
    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v6}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->setVisibleReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    .line 3721
    iget-boolean v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->attachedToWindow:Z

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->onAttachedToWindow(Z)V

    .line 3722
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadReactionHolders:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 3731
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->documentsToPrepare:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uriesToPrepare:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->preparePlayer(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private updateSelectedPosition()V
    .locals 6

    .line 2771
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2772
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    .line 2774
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2775
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v3, v4, :cond_0

    move v0, v2

    goto :goto_0

    .line 2777
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2778
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2782
    :cond_1
    :goto_0
    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    goto :goto_2

    .line 2784
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->savedPositions:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v0, v3, v4, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    if-ne v0, v1, :cond_4

    .line 2786
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->isSingleStory:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-eqz v0, :cond_4

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->max_read_id:I

    if-lez v0, :cond_4

    move v0, v2

    .line 2787
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 2788
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->max_read_id:I

    if-le v3, v4, :cond_3

    .line 2789
    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2796
    :cond_4
    :goto_2
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    if-ne v0, v1, :cond_5

    .line 2797
    iput v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    :cond_5
    return-void
.end method

.method private updateStoryItems()V
    .locals 5

    .line 2802
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2803
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->isSingleStory:Z

    if-eqz v1, :cond_0

    .line 2804
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->singleStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2805
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v2, :cond_2

    .line 2806
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2807
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->findMessageObject(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2808
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_1

    .line 2809
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2812
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2814
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 2815
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2818
    :cond_3
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->overrideUserStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_4

    .line 2819
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->overrideUserStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    goto :goto_2

    .line 2821
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-nez v0, :cond_5

    .line 2823
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesFromFullPeer(J)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    .line 2826
    :cond_5
    :goto_2
    iput v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->totalStoriesCount:I

    .line 2827
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-eqz v0, :cond_6

    .line 2828
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->totalStoriesCount:I

    .line 2829
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2831
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2832
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingStories(J)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2834
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2837
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoriesCount()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->count:I

    return-void
.end method

.method private updateUserViews(Z)V
    .locals 14

    .line 3792
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v1, :cond_0

    .line 3794
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->editingSourceItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 3796
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-nez v0, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string v2, ""

    const/16 v3, 0x8

    if-eqz v1, :cond_14

    const-string v4, "NobodyViews"

    const-string v5, "NobodyViewsArchived"

    const/4 v6, 0x3

    const/16 v7, 0x10

    const/16 v8, 0x28

    const/16 v9, 0xa

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_b

    .line 3801
    iget-object v0, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    if-nez v0, :cond_2

    .line 3802
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_storyViews;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyViews;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    .line 3804
    :cond_2
    iget-object v0, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v12, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    if-gtz v12, :cond_3

    .line 3805
    iput v10, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    .line 3807
    :cond_3
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    if-lez v0, :cond_5

    .line 3808
    iget-object v12, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_4

    iget-boolean v13, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounterVisible:Z

    if-eqz v13, :cond_4

    move v13, v10

    goto :goto_0

    :cond_4
    move v13, v11

    :goto_0
    invoke-virtual {v12, v0, v13}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 3809
    iput-boolean v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounterVisible:Z

    goto :goto_1

    .line 3811
    :cond_5
    iput-boolean v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounterVisible:Z

    :goto_1
    if-nez p1, :cond_7

    .line 3814
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounterProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v12, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounterVisible:Z

    if-eqz v12, :cond_6

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_6
    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v0, v12, v10}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 3816
    :cond_7
    iget-object v0, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    if-lez v0, :cond_9

    .line 3817
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez v2, :cond_8

    sget v2, Lorg/telegram/messenger/R$string;->NobodyViews:I

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_8
    sget v2, Lorg/telegram/messenger/R$string;->NobodyViewsArchived:I

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3818
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 3819
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v2, "d  "

    .line 3820
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3821
    new-instance v2, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v4, Lorg/telegram/messenger/R$drawable;->filled_views:I

    invoke-direct {v2, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    .line 3822
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v0, v2, v4, v5, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3823
    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    invoke-static {v1, v11}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3824
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 3826
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3828
    :goto_4
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounterVisible:Z

    if-eqz v0, :cond_a

    .line 3829
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getAnimateToWidth()F

    move-result v2

    add-float/2addr v1, v2

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3830
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_5

    .line 3832
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3833
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 3835
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 3836
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3837
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3838
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->onStoryItemUpdated(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Z)V

    goto/16 :goto_c

    .line 3840
    :cond_b
    iget-object p1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    if-eqz p1, :cond_12

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    if-lez p1, :cond_12

    move p1, v11

    move v0, p1

    .line 3843
    :goto_6
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->recent_viewers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_e

    .line 3844
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->recent_viewers:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 3846
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-virtual {v4, v0, v5, v2}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v0, v0, 0x1

    :cond_c
    if-lt v0, v6, :cond_d

    goto :goto_7

    :cond_d
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_e
    :goto_7
    move p1, v0

    :goto_8
    if-ge p1, v6, :cond_f

    .line 3855
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v4, v5}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 3858
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v11}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    .line 3859
    new-instance p1, Landroid/text/SpannableStringBuilder;

    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    const-string v4, "Views"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3860
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    if-lez v2, :cond_10

    const-string v2, "  d "

    .line 3861
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3862
    new-instance v2, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v4, Lorg/telegram/messenger/R$drawable;->mini_views_likes:I

    invoke-direct {v2, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const v4, -0xd1c8

    .line 3863
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;->setOverrideColor(I)V

    const v4, 0x3e4ccccd    # 0.2f

    .line 3864
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;->setTopOffset(I)V

    .line 3865
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v10

    invoke-virtual {p1, v2, v4, v5, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3866
    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3868
    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_11

    .line 3870
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3871
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    goto :goto_9

    .line 3873
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 3874
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    const/16 v1, 0xd

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v2, 0x18

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x14

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v0, v10

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 3876
    :goto_9
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    invoke-virtual {p1, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    .line 3878
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez v0, :cond_13

    sget v0, Lorg/telegram/messenger/R$string;->NobodyViews:I

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_13
    sget v0, Lorg/telegram/messenger/R$string;->NobodyViewsArchived:I

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3879
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 3880
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3881
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3883
    :goto_b
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 3884
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_c

    .line 3887
    :cond_14
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3888
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3889
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_c
    return-void
.end method

.method private updateViewOffsets()V
    .locals 13

    .line 5147
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->getProgressToDismiss()F

    move-result v0

    .line 5149
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isLongPressed:Z

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    .line 5151
    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastOpenedKeyboardHeight:I

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animateKeyboardOpening:Z

    if-eqz v2, :cond_1

    .line 5152
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-static {v2, v3, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    goto :goto_1

    .line 5154
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v3

    .line 5156
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToRecording:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v2

    .line 5157
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToTextA:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v5

    .line 5158
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToStickerExpanded:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v6

    .line 5159
    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToRecording:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isRecording:Z

    if-eqz v8, :cond_3

    move v8, v4

    goto :goto_2

    :cond_3
    move v8, v3

    :goto_2
    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    .line 5160
    iget-boolean v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->messageSent:Z

    if-nez v7, :cond_5

    .line 5161
    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToTextA:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    move v8, v4

    goto :goto_3

    :cond_4
    move v8, v3

    :goto_3
    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    .line 5163
    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToStickerExpanded:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isStickersExpanded()Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v4

    goto :goto_4

    :cond_6
    move v8, v3

    :goto_4
    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    .line 5164
    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v7, :cond_7

    .line 5165
    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkAnimation()V

    .line 5167
    :cond_7
    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v8, 0x0

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    goto :goto_5

    :cond_8
    move v7, v8

    .line 5168
    :goto_5
    iget-boolean v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    if-nez v9, :cond_a

    iget v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToReply:F

    iget-object v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v10, v10, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyProgress:F

    cmpl-float v9, v9, v10

    if-nez v9, :cond_a

    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v9

    iget v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->prevToHideProgress:F

    cmpl-float v9, v9, v10

    if-nez v9, :cond_a

    iget v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastAnimatingKeyboardHeight:F

    iget v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    cmpl-float v9, v9, v10

    if-nez v9, :cond_a

    iget v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    cmpl-float v9, v1, v9

    if-nez v9, :cond_a

    iget v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToDismiss:F

    cmpl-float v9, v0, v9

    if-nez v9, :cond_a

    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToRecording:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v9

    cmpl-float v2, v2, v9

    if-nez v2, :cond_a

    if-nez v7, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToStickerExpanded:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v2

    cmpl-float v2, v6, v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToTextA:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v2

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    return-void

    .line 5169
    :cond_a
    :goto_6
    iput-boolean v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 5170
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    iput v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastAnimatingKeyboardHeight:F

    .line 5171
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v2

    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->prevToHideProgress:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_b

    .line 5172
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_b
    cmpl-float v2, v0, v3

    const/4 v5, 0x0

    if-eqz v2, :cond_c

    .line 5176
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    const/4 v7, 0x2

    invoke-virtual {v2, v7, v5}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_7

    .line 5178
    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v8, v5}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 5180
    :goto_7
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->prevToHideProgress:F

    .line 5181
    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToDismiss:F

    .line 5182
    iput v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    .line 5183
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyProgress:F

    iput v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToReply:F

    .line 5188
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/16 v5, 0x8

    if-eqz v2, :cond_e

    cmpl-float v1, v1, v3

    if-lez v1, :cond_d

    move v1, v8

    goto :goto_8

    :cond_d
    move v1, v5

    .line 5189
    :goto_8
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5191
    :cond_e
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getHideInterfaceAlpha()F

    move-result v1

    .line 5192
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    const/high16 v7, -0x1000000

    if-eqz v2, :cond_f

    .line 5193
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    const/4 v9, -0x1

    const v10, 0x3e051eb8    # 0.13f

    .line 5194
    invoke-static {v7, v9, v10}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v9

    const/16 v10, 0xaa

    .line 5195
    invoke-static {v7, v10}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    iget v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    .line 5193
    invoke-static {v9, v7, v10}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 5198
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    int-to-float v7, v7

    iget v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToDismiss:F

    sub-float v9, v4, v9

    mul-float/2addr v7, v9

    mul-float/2addr v7, v1

    float-to-int v7, v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_9

    .line 5200
    :cond_f
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v9, 0x430c0000    # 140.0f

    mul-float/2addr v9, v1

    float-to-int v9, v9

    invoke-static {v7, v9}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    :goto_9
    move v2, v8

    .line 5202
    :goto_a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_1c

    .line 5203
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5205
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_19

    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eq v7, v9, :cond_19

    sget v9, Lorg/telegram/messenger/R$id;->parent_tag:I

    invoke-virtual {v7, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_19

    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v9, v9, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v9

    if-ne v7, v9, :cond_10

    goto/16 :goto_c

    .line 5215
    :cond_10
    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v9, :cond_11

    invoke-virtual {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v9

    if-ne v7, v9, :cond_11

    .line 5216
    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    sub-float/2addr v9, v10

    invoke-virtual {v7, v9}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_d

    .line 5217
    :cond_11
    instance-of v9, v7, Lorg/telegram/ui/Components/HintView;

    if-eqz v9, :cond_12

    .line 5218
    check-cast v7, Lorg/telegram/ui/Components/HintView;

    .line 5219
    invoke-virtual {v7}, Lorg/telegram/ui/Components/HintView;->updatePosition()V

    goto/16 :goto_d

    .line 5220
    :cond_12
    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    if-eq v7, v9, :cond_1b

    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    if-eq v7, v9, :cond_1b

    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    if-eq v7, v9, :cond_1b

    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mediaBanTooltip:Lorg/telegram/ui/Components/HintView;

    if-eq v7, v9, :cond_1b

    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    if-eq v7, v9, :cond_1b

    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v9, :cond_13

    invoke-virtual {v9}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v9

    if-eqz v9, :cond_13

    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    if-eq v7, v9, :cond_1b

    .line 5222
    :cond_13
    iget v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->enterViewBottomOffset:I

    neg-int v9, v9

    int-to-float v9, v9

    iget v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    sub-float v10, v4, v10

    mul-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    sub-float/2addr v9, v10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    sub-float v11, v4, v11

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    const/16 v10, 0x14

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v12, v12, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyProgress:F

    mul-float/2addr v11, v12

    sub-float/2addr v9, v11

    .line 5223
    iget-boolean v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eqz v11, :cond_14

    .line 5224
    iget v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToDismiss:F

    sub-float v11, v4, v11

    mul-float/2addr v11, v1

    goto :goto_b

    :cond_14
    mul-float v11, v1, v4

    .line 5228
    :goto_b
    iget-object v12, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    if-ne v7, v12, :cond_15

    .line 5229
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    iget-object v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v10, v10, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyProgress:F

    mul-float/2addr v9, v10

    .line 5231
    :cond_15
    iget-object v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-ne v7, v10, :cond_16

    .line 5232
    iget-object v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v10

    iget-object v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAnimatedTop()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    sub-float/2addr v9, v10

    .line 5233
    iget v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    .line 5234
    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    .line 5236
    :cond_16
    iget-object v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-ne v7, v10, :cond_18

    .line 5237
    iget v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    iget-object v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToRecording:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v10

    sub-float v10, v4, v10

    mul-float/2addr v9, v10

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    iget-object v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToTextA:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v10

    sub-float v10, v4, v10

    mul-float/2addr v9, v10

    mul-float/2addr v11, v9

    mul-float/2addr v11, v4

    .line 5239
    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v10

    cmpl-float v10, v10, v3

    if-eqz v10, :cond_17

    cmpl-float v10, v11, v3

    if-nez v10, :cond_17

    .line 5240
    iget-object v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reset()V

    .line 5242
    :cond_17
    invoke-virtual {v7, v11}, Landroid/view/View;->setAlpha(F)V

    const v10, 0x3f4ccccd    # 0.8f

    const v11, 0x3e4ccccd    # 0.2f

    mul-float/2addr v9, v11

    add-float/2addr v9, v10

    .line 5244
    invoke-virtual {v7, v9}, Landroid/view/View;->setScaleX(F)V

    .line 5245
    invoke-virtual {v7, v9}, Landroid/view/View;->setScaleY(F)V

    goto :goto_d

    .line 5247
    :cond_18
    invoke-virtual {v7, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 5248
    invoke-virtual {v7, v11}, Landroid/view/View;->setAlpha(F)V

    goto :goto_d

    .line 5206
    :cond_19
    :goto_c
    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-ne v7, v9, :cond_1b

    .line 5207
    iget-boolean v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eqz v9, :cond_1a

    .line 5208
    iget v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToDismiss:F

    sub-float v9, v4, v9

    mul-float/2addr v9, v1

    iget v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v10, v4, v10

    mul-float/2addr v9, v10

    invoke-virtual {v7, v9}, Landroid/view/View;->setAlpha(F)V

    goto :goto_d

    .line 5210
    :cond_1a
    iget v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v9, v4, v9

    mul-float/2addr v9, v1

    invoke-virtual {v7, v9}, Landroid/view/View;->setAlpha(F)V

    :cond_1b
    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    .line 5252
    :cond_1c
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    sub-float v0, v4, v0

    mul-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 5253
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5255
    :goto_e
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ge v8, v0, :cond_23

    .line 5256
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1d

    goto :goto_12

    .line 5260
    :cond_1d
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    if-eq v0, v2, :cond_1f

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    if-eq v0, v2, :cond_1f

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    if-eq v0, v2, :cond_1f

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eq v0, v2, :cond_1f

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    if-eq v0, v2, :cond_1f

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    if-ne v0, v2, :cond_1e

    goto :goto_f

    .line 5272
    :cond_1e
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_12

    .line 5262
    :cond_1f
    :goto_f
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    if-ne v0, v2, :cond_20

    .line 5263
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconViewAlpha:F

    goto :goto_10

    :cond_20
    move v2, v4

    .line 5265
    :goto_10
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    if-ne v0, v3, :cond_22

    .line 5266
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->hideCaptionWithInterface()Z

    move-result v3

    if-eqz v3, :cond_21

    move v3, v1

    goto :goto_11

    :cond_21
    move v3, v4

    :goto_11
    mul-float/2addr v2, v3

    .line 5267
    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_12

    :cond_22
    mul-float/2addr v2, v1

    .line 5269
    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 5275
    :cond_23
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_24

    const/16 v1, 0xa

    .line 5276
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setHorizontalPadding(FFZ)V

    .line 5277
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 5278
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_24
    return-void
.end method


# virtual methods
.method public animateOut(Z)V
    .locals 3

    .line 5895
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 5896
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 5898
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    aput v2, v0, v1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outAnimator:Landroid/animation/ValueAnimator;

    .line 5899
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5918
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$36;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$36;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5940
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1a4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5941
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5942
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public cancelTextSelection()V
    .locals 1

    .line 4428
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4429
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    :cond_0
    return-void
.end method

.method public cancelTouch()V
    .locals 1

    .line 4344
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryCaptionView;->cancelTouch()V

    return-void
.end method

.method public checkPinchToZoom(Landroid/view/MotionEvent;)V
    .locals 7

    .line 4317
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/PinchToZoomHelper;->checkPinchToZoom(Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Landroid/view/View;Landroid/view/View;Lorg/telegram/messenger/MessageObject;)Z

    return-void
.end method

.method public checkReactionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 4434
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4436
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    .line 4437
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v3, v4

    .line 4438
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    neg-float v0, v2

    neg-float v1, v3

    .line 4439
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4440
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v5

    .line 4443
    :cond_0
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v2, v2

    float-to-int v3, v3

    .line 4445
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 4446
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4447
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->showLikesReaction(Z)V

    return v5

    .line 4450
    :cond_1
    iget v1, v4, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, v4, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4451
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v5

    :cond_2
    return v1
.end method

.method checkReactionsLayout()V
    .locals 9

    .line 5462
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-nez v0, :cond_0

    .line 5463
    new-instance v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v2, 0x1

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    new-instance v6, Lorg/telegram/ui/Stories/PeerStoriesView$32;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$32;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ReactionsContainerLayout;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    .line 5469
    sget v1, Lorg/telegram/messenger/R$string;->StoryReactionsHint:I

    const-string v2, "StoryReactionsHint"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setHint(Ljava/lang/String;)V

    .line 5470
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->skipEnterAnimation:Z

    .line 5471
    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerIndex:I

    const/4 v2, -0x2

    const/16 v3, 0x48

    const/16 v4, 0x31

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x40

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5472
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$33;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$33;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setDelegate(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)V

    .line 5566
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 5568
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method checkReactionsLayoutForLike()V
    .locals 9

    .line 5572
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-nez v0, :cond_0

    .line 5573
    new-instance v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v2, 0x2

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    new-instance v6, Lorg/telegram/ui/Stories/PeerStoriesView$34;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$34;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ReactionsContainerLayout;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/16 v1, 0x16

    .line 5579
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 5581
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x4a

    const/16 v4, 0x35

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/16 v8, 0x40

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5582
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5583
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$35;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$35;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setDelegate(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)V

    .line 5701
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    goto :goto_0

    .line 5703
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 5704
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reset()V

    .line 5706
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public checkRecordLocked(Z)Z
    .locals 3

    .line 5867
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isRecordLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5868
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 5869
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5870
    sget v1, Lorg/telegram/messenger/R$string;->DiscardVideoMessageTitle:I

    const-string v2, "DiscardVideoMessageTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 5871
    sget v1, Lorg/telegram/messenger/R$string;->DiscardVideoMessageDescription:I

    const-string v2, "DiscardVideoMessageDescription"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 5873
    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->DiscardVoiceMessageTitle:I

    const-string v2, "DiscardVoiceMessageTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 5874
    sget v1, Lorg/telegram/messenger/R$string;->DiscardVoiceMessageDescription:I

    const-string v2, "DiscardVoiceMessageDescription"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 5876
    :goto_0
    sget v1, Lorg/telegram/messenger/R$string;->DiscardVoiceMessageAction:I

    const-string v2, "DiscardVoiceMessageAction"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 5885
    sget p1, Lorg/telegram/messenger/R$string;->Continue:I

    const-string v1, "Continue"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 5886
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public checkTextSelectionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 4414
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4415
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    .line 4416
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    neg-float v2, v0

    neg-float v3, v1

    .line 4417
    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4418
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4421
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public closeKeyboardOrEmoji()Z
    .locals 6

    .line 4026
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionShowing:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 4027
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4028
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    if-lez v0, :cond_0

    .line 4029
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto :goto_0

    .line 4031
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismiss()V

    :goto_0
    return v2

    .line 4035
    :cond_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->showLikesReaction(Z)V

    return v2

    .line 4038
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    if-eqz v0, :cond_3

    .line 4039
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->closeHint()V

    .line 4041
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4042
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear(Z)V

    return v2

    .line 4045
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_5

    .line 4046
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 4048
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_6

    .line 4049
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 4052
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mediaBanTooltip:Lorg/telegram/ui/Components/HintView;

    if-eqz v0, :cond_7

    .line 4053
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/HintView;->hide(Z)V

    .line 4055
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyEditCaptionView:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    .line 4057
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CustomPopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4058
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    return v2

    .line 4060
    :cond_9
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkRecordLocked(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    return v2

    .line 4062
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4063
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismiss()V

    return v2

    .line 4065
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4066
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    if-lez v0, :cond_c

    .line 4067
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto :goto_1

    .line 4069
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(ZZ)Z

    :goto_1
    return v2

    .line 4072
    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getKeyboardHeight()I

    move-result v0

    const/16 v3, 0x14

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-lt v0, v3, :cond_f

    .line 4073
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_e

    .line 4074
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v1, v3, v4, v5, v0}, Lorg/telegram/ui/Stories/StoryViewer;->saveDraft(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/CharSequence;)V

    .line 4076
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return v2

    .line 4078
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryCaptionView;->getProgressToBlackout()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_10

    .line 4079
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryCaptionView;->collapse()V

    .line 4080
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->inBlackoutMode:Z

    .line 4081
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    return v2

    :cond_10
    return v1
.end method

.method public createBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 13

    .line 3965
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v4, :cond_1

    .line 3966
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3967
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v1, v4, :cond_0

    .line 3968
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->surfaceView:Landroid/view/SurfaceView;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->getBitmapFromSurface(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;)V

    :cond_0
    if-eqz v0, :cond_3

    .line 3971
    invoke-virtual {p1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 3973
    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 3974
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3976
    invoke-virtual {p1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 3979
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3980
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3981
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 3982
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3984
    :cond_3
    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getDominantColor(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 3985
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3e19999a    # 0.15f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    const/4 v0, -0x1

    const/16 v1, 0x66

    .line 3987
    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_4
    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 3990
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v6

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    const/4 v8, 0x3

    const/4 v9, 0x1

    .line 3991
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v12

    move-object v7, p2

    invoke-static/range {v7 .. v12}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 6

    .line 3097
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    const/4 v0, 0x1

    if-eq p1, p2, :cond_7

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p2, p2, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    const/4 v1, 0x0

    aget-object p3, p3, v1

    if-ne p2, p3, :cond_0

    goto :goto_2

    .line 3126
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_1

    .line 3127
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto/16 :goto_5

    .line 3128
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->stealthModeChanged:I

    if-ne p1, p2, :cond_2

    .line 3129
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkStealthMode(Z)V

    goto/16 :goto_5

    .line 3130
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesLimitUpdate:I

    if-ne p1, p2, :cond_11

    .line 3131
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->checkStoryLimit()Lorg/telegram/ui/Stories/StoriesController$StoryLimit;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 3132
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-nez p2, :cond_3

    goto :goto_1

    .line 3135
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz p2, :cond_4

    iget-object p2, p2, Lorg/telegram/ui/Stories/StoryViewer;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p2

    :goto_0
    move-object v2, p2

    if-nez v2, :cond_5

    return-void

    .line 3139
    :cond_5
    new-instance p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$27;

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$27;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/app/Activity;)V

    .line 3168
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;->getLimitReachedType()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 3169
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    goto/16 :goto_5

    :cond_6
    :goto_1
    return-void

    .line 3098
    :cond_7
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    .line 3101
    :cond_8
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz p1, :cond_d

    .line 3102
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStoryItems()V

    .line 3103
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->count:I

    if-nez p1, :cond_a

    .line 3104
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->deletedPeer:Z

    if-nez p1, :cond_9

    .line 3105
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->deletedPeer:Z

    .line 3106
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->switchToNextAndRemoveCurrentPeer()V

    :cond_9
    return-void

    .line 3110
    :cond_a
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/2addr p2, p3

    if-lt p1, p2, :cond_b

    .line 3111
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr p1, p2

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    .line 3113
    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    .line 3114
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz p1, :cond_d

    .line 3115
    :cond_c
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateUserViews(Z)V

    .line 3118
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->overrideUserStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-eqz p1, :cond_e

    .line 3119
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Stories/StoriesController;->loadSkippedStories(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Z)V

    goto :goto_3

    .line 3120
    :cond_e
    iget-wide p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_f

    .line 3121
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->loadSkippedStories(J)V

    .line 3123
    :cond_f
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->editStoryItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p1, :cond_11

    .line 3124
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->hasUploadingStories(J)Z

    move-result p2

    if-eqz p2, :cond_10

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->access$700(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->allowPreparingHevcPlayers()Z

    move-result p2

    if-nez p2, :cond_10

    const/high16 p2, 0x3f000000    # 0.5f

    goto :goto_4

    :cond_10
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_11
    :goto_5
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 2963
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateViewOffsets()V

    .line 2964
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v0, :cond_0

    .line 2965
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    const/16 v3, 0x28

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 2967
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2969
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v0, :cond_2

    .line 2970
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2971
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v4

    sub-float/2addr v0, v4

    const/16 v4, 0xc

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getY()F

    move-result v4

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2972
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounterProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounterVisible:Z

    if-eqz v4, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_1
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v2

    .line 2973
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v0

    div-float/2addr v0, v3

    const/16 v4, 0x14

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v2, v0, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2974
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v4, 0x437f0000    # 255.0f

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v4, v5

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 2975
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2976
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2978
    :cond_2
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateButtonsOffsets(F)V

    .line 2979
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReaction:Z

    if-eqz v0, :cond_4

    .line 2980
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 2981
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    const/16 v4, 0x18

    .line 2982
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    .line 2983
    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionFromX:I

    int-to-float v5, v5

    int-to-float v6, v4

    div-float/2addr v6, v3

    sub-float/2addr v0, v6

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionProgress:F

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v7

    invoke-static {v5, v0, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    .line 2984
    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionFromY:I

    int-to-float v5, v5

    sub-float/2addr v2, v6

    iget v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionProgress:F

    invoke-static {v5, v2, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 2985
    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionFromSize:I

    iget v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionProgress:F

    invoke-static {v5, v4, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    .line 2986
    iget-boolean v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawAnimatedEmojiAsMovingReaction:Z

    if-eqz v5, :cond_3

    .line 2987
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v5, :cond_4

    float-to-int v6, v0

    float-to-int v7, v2

    int-to-float v4, v4

    add-float/2addr v0, v4

    float-to-int v0, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 2988
    invoke-virtual {v5, v6, v7, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2989
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 2992
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v4, v4

    invoke-virtual {v5, v0, v2, v4, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 2993
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 2996
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawReactionEffect:Z

    if-eqz v0, :cond_7

    .line 2997
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 2998
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    const/16 v4, 0x78

    .line 2999
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    .line 3000
    iget-boolean v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawAnimatedEmojiAsMovingReaction:Z

    if-nez v5, :cond_5

    .line 3001
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v4, v4

    div-float v3, v4, v3

    sub-float/2addr v0, v3

    sub-float/2addr v2, v3

    invoke-virtual {v5, v0, v2, v4, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 3002
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 3003
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isLastFrame()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3004
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawReactionEffect:Z

    goto :goto_1

    .line 3007
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    if-eqz v5, :cond_6

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float v3, v0, v4

    float-to-int v3, v3

    sub-float v6, v2, v4

    float-to-int v6, v6

    add-float/2addr v0, v4

    float-to-int v0, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 3009
    invoke-virtual {v5, v3, v6, v0, v2}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->setBounds(IIII)V

    .line 3010
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->draw(Landroid/graphics/Canvas;)V

    .line 3011
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->isDone()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3012
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 3013
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    .line 3014
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawReactionEffect:Z

    goto :goto_1

    .line 3017
    :cond_6
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawReactionEffect:Z

    .line 3021
    :cond_7
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_8

    .line 3022
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->drawRecordedPannel(Landroid/graphics/Canvas;)V

    :cond_8
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8

    .line 5293
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 5294
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5295
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 5296
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 5297
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 5298
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 5300
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-ne p2, v0, :cond_4

    .line 5301
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$7400(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 5302
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAnimatedTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 5303
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    const/16 v4, 0x14

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 5304
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    .line 5301
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5306
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x42380000    # 46.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x28

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 5307
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$7500(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 5308
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v5

    const/16 v6, 0x30

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v6

    add-float/2addr v5, v6

    const/4 v6, 0x2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    .line 5309
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v7, v3

    int-to-float v3, v7

    sub-float/2addr v3, v0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 5310
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v0, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v0, v6

    .line 5307
    invoke-virtual {v2, v4, v5, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5312
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    const/16 v2, 0x32

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-le v0, v3, :cond_2

    .line 5313
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    sub-float v3, v4, v3

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v3, v5

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTranslationY(F)V

    goto :goto_1

    .line 5315
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTranslationY(F)V

    .line 5317
    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    sub-float/2addr v4, v2

    mul-float/2addr v0, v4

    .line 5318
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v1, v1, v3, v4}, Lorg/telegram/ui/Components/BitmapShaderTools;->setBounds(FFFF)V

    .line 5319
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$7500(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$7400(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$7600(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 5320
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3

    .line 5321
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    iget-object v1, v1, Lorg/telegram/ui/Components/BitmapShaderTools;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5322
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$7600(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    iget-object v2, v2, Lorg/telegram/ui/Components/BitmapShaderTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 5324
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$7600(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 5325
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 5326
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5327
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$7600(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 5328
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 5329
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_4
    if-eqz v0, :cond_5

    .line 5332
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5333
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5334
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$7600(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 5335
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 5336
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 5338
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/16 v2, 0x12

    if-ne p2, v0, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v3, :cond_6

    .line 5339
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAnimatedTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    add-float/2addr v0, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 5340
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 5341
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$100(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x42fa0000    # 125.0f

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5342
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAnimatedTop()I

    move-result v1

    int-to-float v1, v1

    add-float v6, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$100(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/Paint;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 5344
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-ne p2, v0, :cond_7

    .line 5345
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 5351
    :cond_7
    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public findClickableView(Landroid/view/ViewGroup;FFZ)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 4091
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 4094
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    move v1, v0

    .line 4098
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_d

    .line 4099
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4100
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_1

    .line 4103
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    if-ne v3, v4, :cond_4

    .line 4104
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v5, p2

    float-to-int v6, p3

    .line 4105
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, p3, v5

    invoke-virtual {v4, p2, v5}, Lorg/telegram/ui/Stories/StoryCaptionView;->allowInterceptTouchEvent(FF)Z

    move-result v4

    if-eqz v4, :cond_4

    return v2

    .line 4109
    :cond_4
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 4110
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    if-ne v3, v5, :cond_6

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hasSelected()Z

    move-result v5

    if-nez v5, :cond_6

    const/16 v5, 0x3c

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, p2, v6

    if-ltz v6, :cond_5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v6, v5

    int-to-float v5, v6

    cmpl-float v5, p2, v5

    if-lez v5, :cond_6

    .line 4111
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    invoke-virtual {v3, p2, p3}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hasClickableViews(FF)Z

    move-result v3

    if-eqz v3, :cond_c

    return v2

    .line 4114
    :cond_6
    iget-boolean v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-ne v3, v5, :cond_7

    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    cmpl-float v5, p3, v5

    if-lez v5, :cond_7

    return v2

    :cond_7
    if-nez p4, :cond_b

    float-to-int v5, p2

    float-to-int v6, p3

    .line 4116
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-ne v3, v4, :cond_9

    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getRecordCircle()Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v4

    if-ne v3, v4, :cond_b

    :cond_a
    return v2

    .line 4118
    :cond_b
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_c

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    sub-float v5, p2, v5

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    sub-float v3, p3, v3

    invoke-virtual {p0, v4, v5, v3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView;->findClickableView(Landroid/view/ViewGroup;FFZ)Z

    move-result v3

    if-eqz v3, :cond_c

    return v2

    :cond_c
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_d
    return v0
.end method

.method public getCurrentDay()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4009
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCurrentPeer()J
    .locals 2

    .line 4005
    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    return-wide v0
.end method

.method public getListPosition()I
    .locals 1

    .line 5946
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->listPosition:I

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 4022
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    return v0
.end method

.method public getStoriesCount()I
    .locals 3

    .line 4629
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->totalStoriesCount:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getStoryItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_stories$StoryItem;",
            ">;"
        }
    .end annotation

    .line 4333
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    return-object v0
.end method

.method public isSelectedPeer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needEnterText()Z
    .locals 4

    .line 5710
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5713
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5715
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showEmojiView()V

    .line 5717
    :cond_1
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    const-wide/16 v2, 0x12c

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return v0
.end method

.method public onActionDown(Landroid/view/MotionEvent;)V
    .locals 4

    .line 4348
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 4349
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->containsTouch(Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    .line 4350
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->hitButton(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4352
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 4354
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 4355
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->containsTouch(Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    .line 4356
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->hitButton(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4358
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    if-eqz p1, :cond_6

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_2

    :cond_0
    const/16 p2, 0x15

    if-ne p1, p2, :cond_7

    if-nez p3, :cond_1

    .line 4228
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showAttachmentError()V

    return-void

    .line 4231
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4232
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->sendUriAsDocument(Landroid/net/Uri;)V

    goto :goto_1

    .line 4233
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4234
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    const/4 p2, 0x0

    .line 4235
    :goto_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result p3

    if-ge p2, p3, :cond_4

    .line 4236
    invoke-virtual {p1, p2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->sendUriAsDocument(Landroid/net/Uri;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 4239
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showAttachmentError()V

    .line 4241
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz p1, :cond_5

    .line 4242
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    .line 4244
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->afterMessageSend()V

    goto :goto_3

    .line 4222
    :cond_6
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createChatAttachView()V

    .line 4223
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz p2, :cond_7

    .line 4224
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->onActivityResultFragment(ILandroid/content/Intent;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 3043
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 3044
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->attachedToWindow:Z

    .line 3045
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 3046
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->rightPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 3047
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->leftPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 3048
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 3049
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 3050
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_0

    .line 3051
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onResume()V

    :cond_0
    const/4 v1, 0x0

    .line 3053
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadReactionHolders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3054
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadReactionHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->onAttachedToWindow(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3057
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3058
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3059
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stealthModeChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3060
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesLimitUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3061
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 3066
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 3067
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->attachedToWindow:Z

    .line 3068
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 3069
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->rightPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 3070
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->leftPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 3071
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 3072
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 3073
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_0

    .line 3074
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onPause()V

    .line 3076
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3077
    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    .line 3078
    iput-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 3080
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    if-eqz v1, :cond_2

    .line 3081
    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->removeView(Landroid/view/View;)V

    .line 3082
    iput-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    :cond_2
    move v1, v0

    .line 3084
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadReactionHolders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3085
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadReactionHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->onAttachedToWindow(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3088
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3089
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3090
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stealthModeChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3091
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesLimitUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3092
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 2957
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onLayout(ZIIII)V

    .line 2958
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$1200(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    const/16 p3, 0x48

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    .line 4925
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v1, :cond_0

    .line 4926
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 4927
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 4930
    :cond_0
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareAlert:Lorg/telegram/ui/Components/ShareAlert;

    if-nez v1, :cond_1

    .line 4931
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->getKeyboardHeight()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    goto :goto_0

    .line 4933
    :cond_1
    iput v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    .line 4936
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v1, :cond_2

    .line 4937
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_1

    .line 4939
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    add-int/2addr v1, v3

    .line 4941
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/high16 v4, 0x41800000    # 16.0f

    int-to-float v3, v3

    mul-float/2addr v3, v4

    const/high16 v4, 0x41100000    # 9.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    if-le v1, v3, :cond_3

    if-le v3, v1, :cond_4

    :cond_3
    move v3, v1

    .line 4951
    :cond_4
    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    const/16 v5, 0x14

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 4952
    iput v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    .line 4954
    :cond_5
    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    .line 4955
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const-wide/16 v6, 0xfa

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4956
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 4957
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v5, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    .line 4958
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 4959
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    move v4, v2

    goto :goto_2

    .line 4962
    :cond_6
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isWaitingForKeyboard()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 4963
    :cond_7
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    if-nez v4, :cond_8

    .line 4964
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v4

    goto :goto_2

    .line 4965
    :cond_8
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isStickersExpanded()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 4966
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkStickresExpandHeight()V

    .line 4967
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getStickersExpandedHeight()I

    move-result v4

    goto :goto_2

    .line 4969
    :cond_9
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getVisibleEmojiPadding()I

    move-result v4

    .line 4973
    :cond_a
    :goto_2
    iget-boolean v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    .line 4974
    iget v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastKeyboardHeight:I

    const/4 v9, 0x1

    if-eq v8, v4, :cond_16

    .line 4975
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-lez v4, :cond_b

    .line 4976
    iget-boolean v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v8, :cond_b

    .line 4977
    iput-boolean v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    .line 4978
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->messageSent:Z

    .line 4979
    iput v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastOpenedKeyboardHeight:I

    .line 4980
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkReactionsLayout()V

    .line 4981
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->dismissAll()V

    goto :goto_3

    .line 4983
    :cond_b
    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v8, :cond_c

    .line 4984
    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-wide v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v13, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v13, v13, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v10, v11, v12, v13, v8}, Lorg/telegram/ui/Stories/StoryViewer;->saveDraft(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/CharSequence;)V

    .line 4987
    :cond_c
    :goto_3
    iget-boolean v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eqz v8, :cond_d

    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v8, :cond_d

    .line 4988
    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4990
    :cond_d
    iget-boolean v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-nez v8, :cond_e

    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v8, :cond_e

    .line 4991
    invoke-virtual {v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reset()V

    .line 4993
    :cond_e
    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-boolean v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    xor-int/2addr v10, v9

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 4994
    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    iget-boolean v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    xor-int/2addr v10, v9

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4995
    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v8, :cond_f

    .line 4996
    iget-boolean v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    xor-int/2addr v10, v9

    invoke-virtual {v8, v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkReactionsButton(Z)V

    .line 4998
    :cond_f
    iget-boolean v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v8, :cond_10

    iget-boolean v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eqz v8, :cond_10

    .line 4999
    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v8, v9}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setKeyboardVisible(Z)V

    .line 5001
    :cond_10
    iput v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastKeyboardHeight:I

    .line 5002
    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    if-eqz v8, :cond_11

    .line 5003
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5005
    :cond_11
    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v8}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    const/4 v8, 0x2

    new-array v8, v8, [F

    .line 5006
    iget v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    aput v10, v8, v2

    int-to-float v10, v4

    aput v10, v8, v9

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    .line 5007
    new-instance v10, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v8, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5011
    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance v10, Lorg/telegram/ui/Stories/PeerStoriesView$30;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$30;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v8, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5030
    iget-boolean v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eqz v8, :cond_12

    .line 5031
    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v8, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5032
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    sget-object v7, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5033
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/StoryViewer;->cancelSwipeToReply()V

    goto :goto_4

    .line 5035
    :cond_12
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0x1f4

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5036
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5039
    :goto_4
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 5041
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eq v6, v5, :cond_15

    if-eqz v6, :cond_13

    .line 5043
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BitmapShaderTools;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/BitmapShaderTools;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->createBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    goto :goto_5

    .line 5045
    :cond_13
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v5, :cond_14

    .line 5046
    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->clearFocus()V

    .line 5049
    :cond_14
    :goto_5
    iput-boolean v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->animateKeyboardOpening:Z

    goto :goto_6

    .line 5051
    :cond_15
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->animateKeyboardOpening:Z

    .line 5054
    :cond_16
    :goto_6
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v5, :cond_17

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 5055
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x50

    .line 5056
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 5058
    :cond_17
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 5059
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int v6, v1, v3

    const/16 v7, 0x40

    .line 5060
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    if-le v6, v8, :cond_18

    move v6, v9

    goto :goto_7

    :cond_18
    move v6, v2

    :goto_7
    iput-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eqz v6, :cond_19

    .line 5061
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    goto :goto_8

    :cond_19
    move v6, v2

    :goto_8
    add-int/2addr v6, v3

    sub-int v6, v1, v6

    shr-int/2addr v6, v9

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5062
    iget-boolean v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eqz v5, :cond_1a

    neg-int v5, v6

    add-int/2addr v5, v1

    sub-int/2addr v5, v3

    .line 5063
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v5, v8

    iput v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->enterViewBottomOffset:I

    goto :goto_9

    :cond_1a
    neg-int v5, v6

    add-int/2addr v5, v1

    sub-int/2addr v5, v3

    .line 5065
    iput v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->enterViewBottomOffset:I

    .line 5067
    :goto_9
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    const/16 v8, 0x8

    if-eqz v5, :cond_1c

    .line 5068
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 5069
    iget-boolean v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eqz v10, :cond_1b

    add-int v10, v6, v3

    .line 5070
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_a

    :cond_1b
    add-int v10, v6, v3

    const/16 v11, 0x30

    .line 5072
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v10, v11

    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5076
    :cond_1c
    :goto_a
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/16 v10, 0x28

    const/16 v11, 0xc

    if-eqz v5, :cond_1e

    .line 5077
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 5078
    iget-boolean v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    const/4 v13, -0x1

    if-nez v12, :cond_1d

    .line 5079
    iget-object v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/16 v14, 0xbf

    invoke-static {v13, v14}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    add-int v12, v6, v3

    .line 5080
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    sub-int/2addr v12, v13

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    sub-int/2addr v12, v13

    iput v12, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_b

    .line 5082
    :cond_1d
    iget-object v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/high16 v14, -0x1000000

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-static {v14, v13, v15}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    add-int v12, v6, v3

    .line 5083
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5086
    :cond_1e
    :goto_b
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    if-eqz v5, :cond_20

    .line 5087
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v4, :cond_1f

    add-int v4, v6, v3

    .line 5089
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v4, v7

    sub-int v4, v1, v4

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_c

    .line 5091
    :cond_1f
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v4, v7

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 5095
    :cond_20
    :goto_c
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-nez v4, :cond_22

    .line 5096
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    add-int/2addr v6, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int v3, v6, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5097
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v6, v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v6, v4

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5098
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v3, :cond_21

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    goto :goto_d

    :cond_21
    const/16 v3, 0x38

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 5099
    :goto_d
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 5100
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iput v3, v4, Lorg/telegram/ui/Stories/StoryCaptionView;->blackoutBottomOffset:I

    goto :goto_e

    .line 5102
    :cond_22
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    add-int/2addr v6, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v6

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5103
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v6, v4

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5104
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 5105
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iput v4, v3, Lorg/telegram/ui/Stories/StoryCaptionView;->blackoutBottomOffset:I

    .line 5108
    :goto_e
    iput-boolean v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 5110
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 5114
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_23

    const/16 v4, 0x3c

    .line 5115
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 5117
    :cond_23
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_24

    .line 5118
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 5120
    :cond_24
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 5121
    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    int-to-float v5, v5

    cmpl-float v5, v5, v3

    if-eqz v5, :cond_25

    float-to-int v3, v3

    .line 5122
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 5123
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->access$7200(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)[Landroid/widget/TextView;

    move-result-object v4

    aget-object v2, v4, v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 5124
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 5125
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->access$7200(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)[Landroid/widget/TextView;

    move-result-object v2

    aget-object v2, v2, v9

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 5126
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 5127
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->forceLayout()V

    :cond_25
    const/high16 v2, 0x40000000    # 2.0f

    .line 5129
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    move/from16 v2, p1

    invoke-super {v0, v2, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 5135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 5136
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    const/4 p1, 0x1

    .line 5137
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 5138
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public preloadMainImage(J)V
    .locals 2

    .line 2756
    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 2759
    :cond_0
    iput-wide p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    .line 2760
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStoryItems()V

    .line 2761
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateSelectedPosition()V

    const/4 v0, 0x1

    .line 2762
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition(Z)V

    .line 2763
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->overrideUserStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-eqz v1, :cond_1

    .line 2764
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Stories/StoriesController;->loadSkippedStories(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Z)V

    goto :goto_0

    .line 2766
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->loadSkippedStories(J)V

    :goto_0
    return-void
.end method

.method public progressToDismissUpdated()V
    .locals 1

    .line 4188
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eqz v0, :cond_0

    .line 4189
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .line 4194
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 4195
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->changeBoundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 4196
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->reset()V

    .line 4197
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4199
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_1

    .line 4200
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reset()V

    .line 4202
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_2

    .line 4203
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reset()V

    .line 4205
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 4206
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 4207
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->hideCamera(Z)V

    .line 4208
    iput-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    :cond_3
    const/4 v0, 0x0

    .line 4210
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->setActive(Z)V

    .line 4211
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->setIsVisible(Z)V

    .line 4212
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isLongPressed:Z

    .line 4213
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 4214
    iput-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbImageReceiver:Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    .line 4215
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->messageSent:Z

    .line 4216
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->cancelTextSelection()V

    return-void
.end method

.method public selectPosition(I)V
    .locals 1

    .line 4337
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    if-eq v0, p1, :cond_0

    .line 4338
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    .line 4339
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    :cond_0
    return-void
.end method

.method public setAccount(I)V
    .locals 2

    .line 4126
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    .line 4127
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    .line 4128
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->setAccount(I)V

    .line 4129
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_0

    .line 4130
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setCurrentAccount(I)V

    .line 4131
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 4133
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_1

    .line 4134
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setCurrentAccount(I)V

    :cond_1
    return-void
.end method

.method public setActive(JZ)V
    .locals 4

    .line 4146
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eq v0, p3, :cond_8

    .line 4147
    sget v0, Lorg/telegram/ui/Stories/PeerStoriesView;->activeCount:I

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    add-int/2addr v0, v2

    sput v0, Lorg/telegram/ui/Stories/PeerStoriesView;->activeCount:I

    .line 4148
    iput-boolean p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 4151
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->useSurfaceInViewPagerWorkAround()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 4152
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p3, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsSwiping(Z)V

    .line 4153
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurfaceRunnable:Ljava/lang/Runnable;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 4154
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurfaceRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-static {p3, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 4156
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->requestVideoPlayer(J)V

    .line 4157
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePreloadImages()V

    .line 4158
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object p2, p2, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 4159
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    .line 4160
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 4161
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz p1, :cond_3

    .line 4162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "StoryViewer displayed story dialogId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " storyId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object p2, p2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 4165
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->cancelTextSelection()V

    .line 4166
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->clearAnimationDrawable()V

    const/4 p1, 0x0

    .line 4167
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbImageReceiver:Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    .line 4168
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isLongPressed:Z

    .line 4169
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 4170
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 4171
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 4172
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->cancelWaiting()V

    .line 4173
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsRecording(Z)V

    .line 4178
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    const/4 p3, 0x2

    if-eqz p2, :cond_4

    const/4 p2, 0x3

    goto :goto_2

    :cond_4
    move p2, p3

    :goto_2
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    .line 4179
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->leftPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz p2, :cond_5

    move p2, p3

    goto :goto_3

    :cond_5
    move p2, v0

    :goto_3
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    .line 4180
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->rightPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz p2, :cond_6

    move v0, p3

    :cond_6
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    .line 4181
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz p1, :cond_8

    .line 4182
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/ui/Stories/StoriesController;->pollViewsForSelfStories(JZ)V

    :cond_8
    return-void
.end method

.method public setActive(Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4141
    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->setActive(JZ)V

    return-void
.end method

.method public setDay(JLjava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 2532
    iput-wide p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    .line 2533
    iput-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    .line 2534
    invoke-direct {p0, p4}, Lorg/telegram/ui/Stories/PeerStoriesView;->bindInternal(I)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;)V
    .locals 0

    .line 3961
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    return-void
.end method

.method public setDialogId(JI)V
    .locals 2

    .line 2538
    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 2539
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->clear()V

    .line 2541
    :cond_0
    iput-wide p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const/4 v0, 0x0

    .line 2542
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    .line 2543
    invoke-direct {p0, p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->bindInternal(I)V

    .line 2544
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p3, p3, Lorg/telegram/ui/Stories/StoryViewer;->overrideUserStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-eqz p3, :cond_1

    .line 2545
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    const/4 p2, 0x1

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Stories/StoriesController;->loadSkippedStories(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Z)V

    goto :goto_0

    .line 2547
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->loadSkippedStories(J)V

    :goto_0
    return-void
.end method

.method public setIsVisible(Z)V
    .locals 1

    .line 4322
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 4325
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isVisible:Z

    if-eqz p1, :cond_1

    .line 4327
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAlpha(F)V

    const/4 p1, 0x0

    .line 4328
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkStealthMode(Z)V

    :cond_1
    return-void
.end method

.method public setLongpressed(Z)V
    .locals 1

    .line 4297
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v0, :cond_0

    .line 4298
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isLongPressed:Z

    .line 4299
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOffset(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4381
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurface:Z

    if-eq v1, p1, :cond_2

    .line 4382
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurface:Z

    .line 4383
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 4384
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v1, :cond_2

    .line 4385
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->useSurfaceInViewPagerWorkAround()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 4387
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurfaceRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 4388
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurfaceRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 4390
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurfaceRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 4391
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsSwiping(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setPaused(Z)V
    .locals 2

    .line 4013
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->paused:Z

    if-eq v0, p1, :cond_0

    .line 4014
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->paused:Z

    .line 4015
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->stopPlaying(Z)V

    const-wide/16 v0, 0x0

    .line 4016
    iput-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastDrawTime:J

    .line 4017
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setViewsThumbImageReceiver(FFFLorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;)V
    .locals 0

    .line 5725
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbAlpha:F

    const/high16 p1, 0x3f800000    # 1.0f

    div-float/2addr p1, p2

    .line 5726
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbScale:F

    .line 5728
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbImageReceiver:Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    if-ne p1, p4, :cond_0

    return-void

    .line 5731
    :cond_0
    iput-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbImageReceiver:Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    if-eqz p4, :cond_1

    .line 5732
    iget-object p1, p4, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5733
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object p2, p4, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->updateStaticDrawableThump(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public showKeyboard()Z
    .locals 2

    .line 4304
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4307
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 4311
    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 4312
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public showNoSoundHint(Z)V
    .locals 9

    .line 4404
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-nez v0, :cond_0

    .line 4405
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x3da00000    # -56.0f

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/16 v1, 0x8

    .line 4406
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 4407
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x37

    const/4 v5, 0x0

    const/16 v6, 0x34

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4409
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz p1, :cond_1

    sget p1, Lorg/telegram/messenger/R$string;->StoryNoSound:I

    goto :goto_0

    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->StoryTapToSound:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 4410
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    return-void
.end method

.method public stopPlaying(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3996
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->stopAnimation()V

    .line 3997
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    goto :goto_0

    .line 3999
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    .line 4000
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    :goto_0
    return-void
.end method

.method public switchToNext(Z)Z
    .locals 2

    .line 3941
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->reversed:Z

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 3945
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoriesCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ge p1, v1, :cond_2

    .line 3946
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    .line 3947
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    return v0

    .line 3951
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    if-lez p1, :cond_2

    sub-int/2addr p1, v0

    .line 3952
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    .line 3953
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public updatePosition()V
    .locals 1

    const/4 v0, 0x0

    .line 3201
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition(Z)V

    return-void
.end method

.method public useSurfaceInViewPagerWorkAround()Z
    .locals 2

    .line 4400
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public viewsAllowed()Z
    .locals 1

    .line 4459
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userCanSeeViews:Z

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
