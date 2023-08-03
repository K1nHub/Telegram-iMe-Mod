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

.field editStoryItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private editedPrivacy:Z

.field private enterViewBottomOffset:I

.field public forceUpdateOffsets:Z

.field headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

.field private imageChanged:Z

.field private final imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field inBlackoutMode:Z

.field inputBackgroundPaint:Landroid/graphics/Paint;

.field private instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

.field isActive:Z

.field private isCaptionPartVisible:Z

.field private isEditing:Z

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

.field private linesCount:I

.field private linesPosition:I

.field private listPosition:I

.field private mediaBanTooltip:Lorg/telegram/ui/Components/HintView;

.field private mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

.field private messageSent:Z

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

.field private reactionsContainerIndex:I

.field reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

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

.field showViewsProgress:Z

.field private soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

.field storiesController:Lorg/telegram/ui/Stories/StoriesController;

.field private final storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

.field public storyContainer:Landroid/widget/FrameLayout;

.field private storyEditCaptionView:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

.field final storyItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$StoryItem;",
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

.field userStories:Lorg/telegram/tgnet/TLRPC$TL_userStories;

.field private videoDuration:J

.field private viewsThumbAlpha:F

.field private viewsThumbImageReceiver:Lorg/telegram/messenger/ImageReceiver;


# direct methods
.method public static synthetic $r8$lambda$3okEy1ES94qOOhXpmG2UF_qrf4Q(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$5(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ErttesJFm__Zq7ZcZZHEbgEGViA(Lorg/telegram/messenger/MessagesController;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$toggleArchiveForStory$7(Lorg/telegram/messenger/MessagesController;JZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$JhCI_wYpzToXHP2omL95b0gxOrg(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$createSelfPeerView$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q3JMDDrKc0vBQyyJASOdfCeiWE4(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$deleteStory$12(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QtXXj6D9DpBBz533vSUmpP5-t64(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$1(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T586iUiw8aoOeAFfl5YOh7mux1Q(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$editPrivacy$16(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UWr8OT4htKLx2EkaCHPBOfoYm-A(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$createUnsupportedContainer$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VaDMscroL9re_0_qIlv1jgwERu8(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$editPrivacy$17(Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WUlU9y-UoT3i9agxv52ljOqVfiA(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/messenger/MessagesController;JZLorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$toggleArchiveForStory$8(Lorg/telegram/messenger/MessagesController;JZLorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZrP6MgSphDNBJQMDJ_qNZoM5OAc(Lorg/telegram/messenger/MessagesController;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$toggleArchiveForStory$6(Lorg/telegram/messenger/MessagesController;JZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$g5gnmmkLeAt5Zlcc9XAEwYIR2bQ(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gLpuuH4fYqFcrqRYjIDnsbccs9U(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$editPrivacy$15(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gprp2xHG0j2n1vKCN5gFOHD0oHI(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$onMeasure$13(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pQCijs1UkRUx26LoIfYSy5n8UBI(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$sOW7y9kOWsvoMSTAkMZaSwminfY(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$animateOut$19(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uQAij9s2sSgpoEbbbHj17pNyfog(Lorg/telegram/ui/Stories/PeerStoriesView;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$checkRecordLocked$18(ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vkaPesGdaF_6pm4y2Jo0gp4CY2E(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$needEnterText$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$wmfYL7nUQW3eHyj6kN9sH9vQeGw(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$2(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wstdGs3Z5S8f0x7Xy_M5xeNRW68(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->openChat()V

    return-void
.end method

.method public static synthetic $r8$lambda$x48w7lU_rMeTo-u2CPv7pV0fkWI(Lorg/telegram/ui/Stories/PeerStoriesView;ZLandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$saveToGallery$9(ZLandroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yUE5q05WBtFs8ilwPFdU1mD0A8g(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 24

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 297
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    .line 192
    iput-boolean v10, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurface:Z

    const/4 v0, -0x5

    .line 208
    iput v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->shiftDp:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 224
    iput v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->alpha:F

    .line 232
    new-instance v11, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-direct {v11, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iput-object v11, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    const/high16 v1, -0x40800000    # -1.0f

    .line 248
    iput v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    .line 249
    iput v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToDismiss:F

    .line 250
    iput v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->lastAnimatingKeyboardHeight:F

    .line 256
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result v1

    iput v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->classGuid:I

    .line 274
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 281
    new-instance v1, Lorg/telegram/ui/PinchToZoomHelper;

    invoke-direct {v1}, Lorg/telegram/ui/PinchToZoomHelper;-><init>()V

    iput-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    .line 289
    iput v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconViewAlpha:F

    .line 2777
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->uriesToPrepare:Ljava/util/ArrayList;

    .line 2778
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->documentsToPrepare:Ljava/util/ArrayList;

    .line 3384
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$22;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$22;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurfaceRunnable:Ljava/lang/Runnable;

    .line 4017
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToRecording:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 4018
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToTextA:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 4019
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToStickerExpanded:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 298
    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$1;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PinchToZoomHelper;->setCallback(Lorg/telegram/ui/PinchToZoomHelper$Callback;)V

    .line 309
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    .line 310
    new-instance v0, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    .line 314
    new-instance v12, Lorg/telegram/ui/Stories/PeerStoriesView$2;

    invoke-direct {v12, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$2;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iput-object v12, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v13, 0x0

    .line 326
    invoke-virtual {v12, v13}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    .line 327
    invoke-virtual {v12, v10}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 328
    iput-boolean v10, v12, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    .line 329
    invoke-virtual {v12, v13}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    .line 331
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->leftPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 332
    invoke-virtual {v0, v10}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 333
    iput-boolean v10, v0, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    .line 334
    invoke-virtual {v0, v13}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    .line 336
    new-instance v1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->rightPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 337
    invoke-virtual {v1, v10}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 338
    iput-boolean v10, v1, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    .line 339
    invoke-virtual {v1, v13}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/telegram/messenger/ImageReceiver;

    aput-object v0, v2, v13

    aput-object v1, v2, v10

    .line 340
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/telegram/messenger/ImageReceiver;->setPreloadingReceivers(Ljava/util/List;)V

    .line 342
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 343
    iput-object v8, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    .line 344
    iput-object v9, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    .line 345
    iget-object v0, v9, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    .line 346
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    .line 347
    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$100(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 348
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v14, p4

    .line 349
    iput-object v14, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 350
    invoke-virtual {v6, v13}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 352
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$3;

    invoke-direct {v0, v6, v7, v9, v8}, Lorg/telegram/ui/Stories/PeerStoriesView$3;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Lorg/telegram/ui/Stories/StoryViewer;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    .line 670
    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 676
    new-instance v15, Lorg/telegram/ui/Stories/PeerStoriesView$4;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v8, Lorg/telegram/ui/Stories/StoryViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$4;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v15, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    .line 792
    iget-object v0, v15, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$5;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$5;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 804
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    .line 805
    iget-object v0, v9, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->shareDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v4, 0x8

    .line 806
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 807
    invoke-virtual {v5, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 808
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda5;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 812
    invoke-virtual {v12, v10}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 813
    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 814
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 815
    new-instance v0, Lorg/telegram/ui/Stories/RoundRectOutlineProvider;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/RoundRectOutlineProvider;-><init>(I)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->outlineProvider:Lorg/telegram/ui/Stories/RoundRectOutlineProvider;

    .line 816
    iget-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 817
    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 819
    :cond_0
    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 820
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-direct {v0, v7, v11}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    .line 821
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda8;

    invoke-direct {v1, v6, v8}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 842
    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    const/16 v16, -0x1

    const/16 v17, -0x2

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x11

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v16, 0x28

    const/16 v17, 0x28

    const/16 v18, 0x5

    const/16 v19, 0xa

    const/16 v20, 0xa

    const/16 v21, 0xa

    const/16 v22, 0xa

    .line 845
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v5, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 847
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v10, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    .line 848
    iget-object v0, v9, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->optionsDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 849
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/4 v11, -0x1

    .line 850
    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 851
    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    const/16 v18, 0x35

    const/16 v19, 0x2

    const/16 v20, 0xf

    const/16 v21, 0x2

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 853
    new-instance v12, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda7;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p1

    move v14, v4

    move-object/from16 v4, p2

    move-object/from16 v23, v5

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1152
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    .line 1153
    iget-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    const/16 v21, 0x2a

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1155
    new-instance v1, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x6

    .line 1156
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v1, v3, v4, v5, v12}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1157
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1159
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->noSoundIconView:Landroid/widget/ImageView;

    .line 1160
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1161
    iget-object v2, v9, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->noSoundDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1162
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1163
    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1165
    new-instance v1, Lorg/telegram/ui/Stories/StoryPrivacyButton;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Stories/StoryPrivacyButton;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    .line 1166
    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda6;

    invoke-direct {v2, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1218
    iget-object v2, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    const/16 v16, 0x3c

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1220
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda9;

    invoke-direct {v1, v6, v8, v7}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1234
    new-instance v1, Lorg/telegram/ui/Stories/StoryLinesDrawable;

    invoke-direct {v1, v6, v9}, Lorg/telegram/ui/Stories/StoryLinesDrawable;-><init>(Landroid/view/View;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyLines:Lorg/telegram/ui/Stories/StoryLinesDrawable;

    .line 1236
    iget-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x40

    const/16 v21, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x14

    .line 1238
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0x64

    invoke-static {v11, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-static {v2, v13, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1239
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v11, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-static {v0, v13, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1240
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v11, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-static {v0, v13, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v1, v23

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/PeerStoriesView;)Ljava/lang/Runnable;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->onImageReceiverThumbLoaded:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 157
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->onImageReceiverThumbLoaded:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 157
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->hideCaptionWithInterface()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Stories/PeerStoriesView;)F
    .locals 0

    .line 157
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbAlpha:F

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isRecording:Z

    return p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z
    .locals 0

    .line 157
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isRecording:Z

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isCaptionPartVisible:Z

    return p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z
    .locals 0

    .line 157
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isCaptionPartVisible:Z

    return p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Stories/PeerStoriesView;)J
    .locals 2

    .line 157
    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->videoDuration:J

    return-wide v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->paused:Z

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isUploading:Z

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Stories/PeerStoriesView;)J
    .locals 2

    .line 157
    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastDrawTime:J

    return-wide v0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/Stories/PeerStoriesView;J)J
    .locals 0

    .line 157
    iput-wide p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastDrawTime:J

    return-wide p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Stories/PeerStoriesView;)J
    .locals 2

    .line 157
    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentImageTime:J

    return-wide v0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/Stories/PeerStoriesView;J)J
    .locals 0

    .line 157
    iput-wide p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentImageTime:J

    return-wide p1
.end method

.method static synthetic access$2314(Lorg/telegram/ui/Stories/PeerStoriesView;J)J
    .locals 2

    .line 157
    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentImageTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentImageTime:J

    return-wide v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->switchEventSent:Z

    return p0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z
    .locals 0

    .line 157
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->switchEventSent:Z

    return p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryPositionView;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyPositionView:Lorg/telegram/ui/Stories/StoryPositionView;

    return-object p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryPositionView;)Lorg/telegram/ui/Stories/StoryPositionView;
    .locals 0

    .line 157
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyPositionView:Lorg/telegram/ui/Stories/StoryPositionView;

    return-object p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Stories/PeerStoriesView;)F
    .locals 0

    .line 157
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->alpha:F

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Stories/PeerStoriesView;)F
    .locals 0

    .line 157
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    return p0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Stories/PeerStoriesView;F)F
    .locals 0

    .line 157
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Stories/PeerStoriesView;)I
    .locals 0

    .line 157
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->listPosition:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Stories/PeerStoriesView;)I
    .locals 0

    .line 157
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->linesPosition:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurface:Z

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Stories/PeerStoriesView;)I
    .locals 0

    .line 157
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->linesCount:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryLinesDrawable;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyLines:Lorg/telegram/ui/Stories/StoryLinesDrawable;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 157
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->drawLinesAsCounter()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Stories/PeerStoriesView;)I
    .locals 0

    .line 157
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->changeBoundAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 157
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->changeBoundAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageChanged:Z

    return p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z
    .locals 0

    .line 157
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageChanged:Z

    return p1
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Stories/PeerStoriesView;)J
    .locals 2

    .line 157
    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    return-wide v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/AccountInstance;
    .locals 0

    .line 157
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->afterMessageSend()V

    return-void
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/MentionsContainerView;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastNoThumb:Z

    return p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createMentionsContainer()V

    return-void
.end method

.method static synthetic access$502(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z
    .locals 0

    .line 157
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastNoThumb:Z

    return p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->openAttachMenu()V

    return-void
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkInstantCameraView()V

    return-void
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/InstantCameraView;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    return-object p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/HintView;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mediaBanTooltip:Lorg/telegram/ui/Components/HintView;

    return-object p0
.end method

.method static synthetic access$5402(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Components/HintView;)Lorg/telegram/ui/Components/HintView;
    .locals 0

    .line 157
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mediaBanTooltip:Lorg/telegram/ui/Components/HintView;

    return-object p1
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/BitmapShaderTools;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    return-object p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/ChatAttachAlert;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    return-object p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryViewer;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    return-object p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->onLickCopied()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/PeerStoriesView;)F
    .locals 0

    .line 157
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getHideInterfaceAlpha()F

    move-result p0

    return p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/view/View;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStoryItems()V

    return-void
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Stories/PeerStoriesView;)I
    .locals 0

    .line 157
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    return p0
.end method

.method static synthetic access$6302(Lorg/telegram/ui/Stories/PeerStoriesView;I)I
    .locals 0

    .line 157
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    return p1
.end method

.method static synthetic access$6602(Lorg/telegram/ui/Stories/PeerStoriesView;F)F
    .locals 0

    .line 157
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    return p1
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Stories/PeerStoriesView;)I
    .locals 0

    .line 157
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->classGuid:I

    return p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->openChat()V

    return-void
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/ImageView;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Stories/PeerStoriesView;)F
    .locals 0

    .line 157
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconViewAlpha:F

    return p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryPrivacyButton;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    return-object p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    return p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    return p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Ljava/util/ArrayList;
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->getAnimatedEmojiSets(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->shareStory(Z)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    return p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->saveToGallery()V

    return-void
.end method

.method static synthetic access$8100(Lorg/telegram/ui/Stories/PeerStoriesView;J)V
    .locals 0

    .line 157
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->toggleArchiveForStory(J)V

    return-void
.end method

.method static synthetic access$8200(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->deleteStory()V

    return-void
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Stories/PeerStoriesView;)I
    .locals 0

    .line 157
    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shiftDp:I

    return p0
.end method

.method static synthetic access$8302(Lorg/telegram/ui/Stories/PeerStoriesView;I)I
    .locals 0

    .line 157
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shiftDp:I

    return p1
.end method

.method static synthetic access$8400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/TLRPC$StoryItem;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->editPrivacy(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/TLRPC$StoryItem;)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    return-object p0
.end method

.method private afterMessageSend()V
    .locals 9

    .line 4268
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4269
    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView;->resetCameraFile()V

    .line 4270
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->cancel(Z)V

    :cond_0
    const/4 v0, 0x1

    .line 4272
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->messageSent:Z

    .line 4273
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->closeKeyboardOrEmoji()Z

    .line 4274
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4276
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

    new-instance v8, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda15;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    .line 4278
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lorg/telegram/messenger/MessagesController;->ensureMessagesLoaded(JILorg/telegram/messenger/MessagesController$MessagesLoadedCallback;)V

    return-void
.end method

.method private bindInternal()V
    .locals 10

    const/4 v0, 0x0

    .line 1980
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->deletedPeer:Z

    const/4 v1, 0x1

    .line 1981
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 1982
    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const/4 v7, 0x0

    if-ltz v6, :cond_4

    .line 1983
    iget v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v8

    cmp-long v2, v2, v8

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    .line 1984
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 1985
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 1986
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v2, v6}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    .line 1987
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v3, :cond_1

    .line 1988
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v3, Lorg/telegram/messenger/R$string;->SelfStoryTitle:I

    const-string v6, "SelfStoryTitle"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1989
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_2

    .line 1991
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-eqz v3, :cond_2

    .line 1992
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/R$drawable;->verified_profile:I

    invoke-static {v3, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v6, 0xff

    .line 1993
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1994
    new-instance v6, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v6, v3, v7}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1995
    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    const/16 v3, 0x10

    .line 1996
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v6, v8, v3}, Lorg/telegram/ui/Components/CombinedDrawable;->setCustomSize(II)V

    .line 1997
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1999
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    if-eqz v2, :cond_3

    .line 2002
    invoke-static {v2}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    .line 2003
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2004
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_2

    .line 2006
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 2009
    :goto_2
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v2, :cond_5

    .line 2010
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Stories/StoriesController;->pollViewsForSelfStories(Z)V

    goto :goto_3

    .line 2013
    :cond_4
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 2014
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 2015
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v2, v6}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    .line 2016
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 2017
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    neg-long v8, v8

    invoke-virtual {v2, v8, v9}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 2019
    :cond_5
    :goto_3
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStoryItems()V

    .line 2020
    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    .line 2021
    iput-wide v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentImageTime:J

    .line 2022
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->switchEventSent:Z

    .line 2023
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_e

    .line 2024
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createSelfPeerView()V

    .line 2025
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2026
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v2, :cond_6

    .line 2027
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    .line 2029
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    .line 2030
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_8

    .line 2032
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 2033
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v3, v4, :cond_7

    move v2, v0

    goto :goto_4

    .line 2035
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 2036
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .line 2040
    :cond_8
    :goto_4
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    goto :goto_7

    .line 2041
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 2042
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    goto :goto_7

    .line 2044
    :cond_a
    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 2045
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->justUploaded:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result v2

    if-le v1, v2, :cond_b

    goto :goto_6

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2046
    :cond_c
    :goto_6
    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    .line 2051
    :cond_d
    :goto_7
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    .line 2052
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2053
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto/16 :goto_9

    .line 2055
    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-nez v1, :cond_f

    .line 2056
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createEnterView()V

    .line 2058
    :cond_f
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateSelectedPosition()V

    .line 2059
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_12

    .line 2060
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    .line 2061
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 2062
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2064
    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-wide v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-virtual {v1, v4, v5, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setDialogId(JI)V

    .line 2065
    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 2067
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, v7, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordButton(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$UserFull;)V

    goto :goto_8

    .line 2069
    :cond_11
    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 2070
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->classGuid:I

    invoke-virtual {v2, v1, v4, v0}, Lorg/telegram/messenger/MessagesController;->loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZ)V

    .line 2073
    :cond_12
    :goto_8
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoriesCount()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->count:I

    .line 2074
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_13

    .line 2075
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2077
    :cond_13
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    .line 2078
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2079
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :goto_9
    return-void
.end method

.method private cancelWaiting()V
    .locals 2

    .line 2898
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->cancellableViews:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2899
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 2900
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->cancellableViews:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x0

    .line 2902
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->showViewsProgress:Z

    .line 2903
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v1, :cond_1

    .line 2904
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsWaiting(Z)V

    :cond_1
    return-void
.end method

.method private checkInstantCameraView()V
    .locals 4

    .line 4210
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    if-eqz v0, :cond_0

    return-void

    .line 4214
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$24;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$24;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/InstantCameraView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/InstantCameraView$Delegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v1, 0x0

    .line 4262
    iput-boolean v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->drawBlur:Z

    .line 4263
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getRecordCircle()Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 4264
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    const/16 v2, 0x33

    const/4 v3, -0x1

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createChatAttachView()V
    .locals 9

    .line 1726
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-nez v0, :cond_0

    .line 1727
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$12;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Stories/PeerStoriesView$12;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    .line 1751
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$13;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V

    .line 1850
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loadGalleryPhotos()V

    .line 1851
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowEnterCaption(Z)V

    .line 1852
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->init()V

    .line 1853
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$14;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDocumentsDelegate(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;)V

    .line 1878
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
    .locals 8

    .line 1329
    new-instance v6, Lorg/telegram/ui/Stories/PeerStoriesView$7;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$7;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1335
    new-instance v7, Lorg/telegram/ui/Stories/PeerStoriesView$8;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/PeerStoriesView$8;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v0, 0x1

    .line 1445
    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setOverrideKeyboardAnimation(Z)V

    .line 1446
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v2, Lorg/telegram/messenger/R$string;->ReplyPrivately:I

    const-string v3, "ReplyPrivately"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setOverrideHint(Ljava/lang/CharSequence;)V

    .line 1447
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 1448
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$9;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$9;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setDelegate(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    .line 1620
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    .line 1621
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-boolean v2, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldDrawBackground:Z

    .line 1622
    iput-boolean v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldDrawRecordedAudioPanelInParent:Z

    .line 1623
    invoke-virtual {v1, v0, v0, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setAllowStickersAndGifs(ZZZ)V

    .line 1624
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateColors()V

    .line 1625
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

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

    .line 1627
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->classGuid:I

    iput v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingGuid:I

    .line 1628
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->viewsToInvalidate:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1629
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->viewsToInvalidate:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1630
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->attachedToWindow:Z

    if-eqz v0, :cond_0

    .line 1631
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onResume()V

    .line 1634
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerIndex:I

    return-void
.end method

.method private createMentionsContainer()V
    .locals 10

    .line 1638
    new-instance v9, Lorg/telegram/ui/Stories/PeerStoriesView$10;

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

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stories/PeerStoriesView$10;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;JILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    .line 1651
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$11;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$11;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/MentionsContainerView;->withDelegate(Lorg/telegram/ui/Components/MentionsContainerView$Delegate;)V

    .line 1675
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    const/4 v1, -0x1

    const/16 v2, 0x53

    invoke-static {v1, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createReplyDisabledView()V
    .locals 5

    .line 2766
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-void

    .line 2769
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x1

    .line 2770
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2771
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    const/4 v3, -0x1

    const v4, 0x3ed70a3d    # 0.42f

    invoke-static {v1, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2772
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2773
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->StoryReplyDisabled:I

    const-string v3, "StoryReplyDisabled"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2774
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/4 v1, -0x2

    invoke-static {v1, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createSelfPeerView()V
    .locals 11

    .line 2208
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    return-void

    .line 2211
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$19;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$19;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    .line 2225
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2226
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

    .line 2228
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$20;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$20;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    .line 2255
    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2258
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

    .line 2260
    new-instance v0, Lorg/telegram/ui/Stories/HwAvatarsImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Stories/HwAvatarsImageView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 v2, 0x12

    .line 2261
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarsImageView;->setAvatarsTextSize(I)V

    .line 2262
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

    .line 2264
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    .line 2265
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2266
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2267
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

    .line 2269
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2270
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2280
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

    .line 2281
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

.method private createUnsupportedContainer()V
    .locals 13

    .line 2084
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupportedContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    return-void

    .line 2087
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2089
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 2090
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2092
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "fonts/rmedium.ttf"

    .line 2093
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2094
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v5, 0x41800000    # 16.0f

    .line 2095
    invoke-virtual {v3, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2096
    sget v5, Lorg/telegram/messenger/R$string;->StoryUnsupported:I

    const-string v6, "StoryUnsupported"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2097
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2099
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2100
    invoke-static {v5}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 2101
    sget v6, Lorg/telegram/messenger/R$string;->AppUpdate:I

    const-string v7, "AppUpdate"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2102
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v7, 0x10

    .line 2103
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

    .line 2104
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 2105
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v4, 0x41700000    # 15.0f

    .line 2106
    invoke-virtual {v5, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v2, 0x8

    .line 2108
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 2109
    invoke-static {v4, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 2110
    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    const/16 v7, 0x1e

    invoke-static {v6, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    .line 2108
    invoke-static {v2, v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2107
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2112
    sget-object v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda10;->INSTANCE:Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda10;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, -0x1

    const/4 v4, -0x2

    .line 2117
    invoke-static {v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, -0x1

    const/4 v7, -0x2

    const/4 v8, 0x0

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 2118
    invoke-static/range {v6 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v8, 0x11

    const/16 v9, 0x48

    const/16 v11, 0x48

    const/4 v12, 0x0

    .line 2120
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2121
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2122
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupportedContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method private deleteStory()V
    .locals 3

    .line 2285
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2286
    sget v1, Lorg/telegram/messenger/R$string;->DeleteStoryTitle:I

    const-string v2, "DeleteStoryTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2287
    sget v1, Lorg/telegram/messenger/R$string;->DeleteStorySubtitle:I

    const-string v2, "DeleteStorySubtitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2288
    sget v1, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v2, "Delete"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$21;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$21;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2305
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda3;->INSTANCE:Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2308
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 2309
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    .line 2310
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->redPositive()V

    return-void
.end method

.method private drawLinesAsCounter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private editPrivacy(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/TLRPC$StoryItem;)V
    .locals 5

    .line 4509
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->pinned:Z

    if-eqz v3, :cond_0

    const v3, 0x7fffffff

    goto :goto_0

    :cond_0
    iget v3, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->expire_date:I

    iget v4, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->date:I

    sub-int/2addr v3, v4

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4510
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->setValue(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    const/4 v1, 0x0

    .line 4511
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->enableSharing(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    .line 4512
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowSmallChats(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    const/4 v2, 0x1

    .line 4513
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->isEdit(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/tgnet/TLRPC$StoryItem;)V

    .line 4514
    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->whenSelectedRules(Lorg/telegram/messenger/Utilities$Callback4;Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    .line 4509
    invoke-interface {v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method private getAccountInstance()Lorg/telegram/messenger/AccountInstance;
    .locals 1

    .line 4293
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

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 1245
    iget-object v1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->entities:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1246
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1248
    :goto_0
    iget-object v3, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1249
    iget-object v3, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 1250
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    if-nez v4, :cond_0

    goto :goto_1

    .line 1253
    :cond_0
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v4, :cond_1

    .line 1255
    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    :cond_1
    if-nez v4, :cond_2

    goto :goto_1

    .line 1260
    :cond_2
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v3

    .line 1261
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 1264
    :cond_3
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1265
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1

    .line 1268
    :cond_5
    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz p1, :cond_c

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p1, :cond_c

    .line 1269
    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    .line 1270
    instance-of v1, p1, Landroid/text/Spanned;

    if-nez v1, :cond_6

    return-object v0

    .line 1273
    :cond_6
    move-object v1, p1

    check-cast v1, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v1, v2, p1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-nez p1, :cond_7

    return-object v0

    .line 1277
    :cond_7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1279
    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_b

    .line 1280
    aget-object v3, p1, v2

    iget-object v3, v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v3, :cond_8

    .line 1282
    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    aget-object v4, p1, v2

    iget-wide v4, v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    :cond_8
    if-nez v3, :cond_9

    goto :goto_3

    .line 1287
    :cond_9
    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v3

    .line 1288
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_3

    .line 1291
    :cond_a
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1292
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    return-object v1

    :cond_c
    return-object v0
.end method

.method private getHideInterfaceAlpha()F
    .locals 3

    .line 4150
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

.method public static getStoryId(Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 3807
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 3808
    iget-object p0, p1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p0, :cond_1

    .line 3809
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

    .line 3377
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

    .line 3379
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

    .line 3380
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

.method private synthetic lambda$animateOut$19(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 4588
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    .line 4589
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4590
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4591
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    mul-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 4592
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v1, v2, v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 4593
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    mul-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4594
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconViewAlpha:F

    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v3, v2, v3

    mul-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4595
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 4596
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    mul-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4597
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v1, v2, v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4599
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    if-eqz p1, :cond_1

    .line 4600
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 4601
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v0, v2, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 4603
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float/2addr v2, v0

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4604
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$checkRecordLocked$18(ZLandroid/content/DialogInterface;I)V
    .locals 0

    .line 4565
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 4567
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    goto :goto_0

    .line 4569
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelRecordingAudioVideo()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$createSelfPeerView$11(Landroid/view/View;)V
    .locals 0

    .line 2256
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showUserViewsDialog()V

    return-void
.end method

.method private static synthetic lambda$createUnsupportedContainer$10(Landroid/view/View;)V
    .locals 1

    .line 2113
    sget-object p0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 2114
    invoke-virtual {p0, v0}, Lorg/telegram/ui/LaunchActivity;->checkAppUpdate(Z)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$deleteStory$12(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2306
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$editPrivacy$15(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 4521
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    if-eqz p2, :cond_2

    .line 4523
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "STORY_NOT_MODIFIED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 4546
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

    goto/16 :goto_4

    .line 4525
    :cond_2
    :goto_0
    invoke-virtual {p4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->toValue()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->privacy:Ljava/util/ArrayList;

    .line 4526
    iget p1, p4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->type:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, p2

    :goto_1
    iput-boolean v1, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->close_friends:Z

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    move v2, p2

    .line 4527
    :goto_2
    iput-boolean v2, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->contacts:Z

    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    move p1, v0

    goto :goto_3

    :cond_5
    move p1, p2

    .line 4528
    :goto_3
    iput-boolean p1, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->selected_contacts:Z

    .line 4529
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    invoke-virtual {p1, v3, v4, p3}, Lorg/telegram/ui/Stories/StoriesController;->updateStoryItem(JLorg/telegram/tgnet/TLRPC$StoryItem;)V

    .line 4530
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->editedPrivacy:Z

    .line 4532
    iget p1, p4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->type:I

    const/4 p3, 0x4

    if-ne p1, p3, :cond_6

    .line 4533
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

    goto/16 :goto_4

    :cond_6
    if-ne p1, v0, :cond_7

    .line 4535
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

    goto :goto_4

    :cond_7
    if-ne p1, v1, :cond_9

    .line 4537
    iget-object p1, p4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 4538
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

    goto :goto_4

    .line 4540
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

    goto :goto_4

    :cond_9
    if-ne p1, v2, :cond_a

    .line 4543
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$raw;->contact_check:I

    iget-object p4, p4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "StorySharedToContacts"

    invoke-static {v0, p4, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 4549
    :cond_a
    :goto_4
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    return-void
.end method

.method private synthetic lambda$editPrivacy$16(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 4519
    new-instance p4, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda16;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$editPrivacy$17(Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Runnable;)V
    .locals 1

    .line 4515
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_stories_editStory;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_stories_editStory;-><init>()V

    .line 4516
    iget p4, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iput p4, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_editStory;->id:I

    .line 4517
    iget p4, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_editStory;->flags:I

    or-int/lit8 p4, p4, 0x4

    iput p4, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_editStory;->flags:I

    .line 4518
    iget-object p4, p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    iput-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_stories_editStory;->privacy_rules:Ljava/util/ArrayList;

    .line 4519
    iget p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p5, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V

    invoke-virtual {p4, p3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$needEnterText$14()V
    .locals 2

    .line 4422
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->requestAdjust(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 809
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->shareStory(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V
    .locals 4

    .line 822
    iget p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    iget-wide v0, p2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    cmp-long p2, v0, v2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 823
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    .line 824
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 825
    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const-string v2, "dialog_id"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 826
    new-instance v0, Lorg/telegram/ui/Components/MediaActivity;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lorg/telegram/ui/Components/MediaActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    .line 827
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_0

    .line 829
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 830
    iget-wide v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const-string v3, "user_id"

    invoke-virtual {p2, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 831
    new-instance v1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v1, p2}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    .line 833
    new-instance p2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {p2}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    .line 834
    iput-boolean v0, p2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    const/4 v0, 0x0

    .line 835
    iput-boolean v0, p2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    .line 836
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Landroid/view/View;)V
    .locals 13

    move-object v10, p0

    .line 854
    iget-object v0, v10, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setPopupIsVisible(Z)V

    const/4 v0, 0x0

    .line 855
    iput-object v0, v10, Lorg/telegram/ui/Stories/PeerStoriesView;->editStoryItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-array v9, v1, [Z

    const/4 v11, 0x0

    aput-boolean v11, v9, v11

    .line 857
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

    .line 1149
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

.method private synthetic lambda$new$3()V
    .locals 2

    .line 1179
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsHintVisible(Z)V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 12

    .line 1167
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-nez p1, :cond_0

    return-void

    .line 1171
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v0, :cond_1

    .line 1172
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->privacy:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(ILjava/util/ArrayList;)V

    .line 1173
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->editPrivacy(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/TLRPC$StoryItem;)V

    goto/16 :goto_3

    .line 1175
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 1176
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    .line 1177
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1178
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    new-instance v4, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    .line 1179
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1180
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v4, v3, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1181
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

    .line 1183
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

    .line 1187
    :cond_3
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    const/16 v4, 0x20

    .line 1189
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_4

    .line 1190
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1194
    :cond_4
    iget-boolean v4, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->close_friends:Z

    const/16 v5, 0xf

    if-eqz v4, :cond_5

    .line 1195
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1, v5, v1, v5, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setInnerPadding(IIII)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1196
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

    .line 1197
    :cond_5
    iget-boolean v4, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->contacts:Z

    if-eqz v4, :cond_6

    .line 1198
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, 0x6

    const/4 v4, 0x7

    const/16 v5, 0xb

    invoke-virtual {p1, v5, v1, v5, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setInnerPadding(IIII)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1199
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

    .line 1201
    :cond_6
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->selected_contacts:Z

    if-eqz p1, :cond_9

    .line 1202
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1, v5, v1, v5, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setInnerPadding(IIII)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1203
    sget p1, Lorg/telegram/messenger/R$string;->StorySelectedContactsHint:I

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "StorySelectedContactsHint"

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    goto :goto_0

    .line 1207
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-static {p1, v1, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1208
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

    .line 1209
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1210
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

    .line 1211
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsHintVisible(Z)V

    .line 1212
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1213
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_LIGHT:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    .line 1215
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_9
    :goto_3
    return-void
.end method

.method private synthetic lambda$new$5(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;Landroid/view/View;)V
    .locals 7

    .line 1221
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {p3}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->hasSound()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1222
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->toggleSilentMode()V

    goto :goto_0

    .line 1224
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-nez p1, :cond_1

    .line 1225
    new-instance p1, Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    const/high16 p2, 0x3f800000    # 1.0f

    const/high16 p3, -0x3da00000    # -56.0f

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1226
    sget p2, Lorg/telegram/messenger/R$string;->StoryNoSound:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1227
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/16 p2, 0x8

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0, p2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 1228
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/16 v2, 0x37

    const/4 v3, 0x0

    const/16 v4, 0x34

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1230
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    :goto_0
    return-void
.end method

.method private synthetic lambda$onMeasure$13(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 3888
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    .line 3889
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$saveToGallery$9(ZLandroid/net/Uri;)V
    .locals 1

    .line 1689
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSaveToGalleryBulletin(Landroid/widget/FrameLayout;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private static synthetic lambda$toggleArchiveForStory$6(Lorg/telegram/messenger/MessagesController;JZ)V
    .locals 6

    .line 1309
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    xor-int/lit8 v3, p3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesController;->toggleHidden(JZZZ)V

    return-void
.end method

.method private static synthetic lambda$toggleArchiveForStory$7(Lorg/telegram/messenger/MessagesController;JZ)V
    .locals 6

    .line 1312
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-wide v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesController;->toggleHidden(JZZZ)V

    return-void
.end method

.method private synthetic lambda$toggleArchiveForStory$8(Lorg/telegram/messenger/MessagesController;JZLorg/telegram/tgnet/TLRPC$User;)V
    .locals 6

    .line 1306
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-wide v1, p2

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesController;->toggleHidden(JZZZ)V

    .line 1307
    new-instance v0, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;

    invoke-direct {v0}, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;-><init>()V

    .line 1308
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/MessagesController;JZ)V

    iput-object v1, v0, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;->onUndo:Ljava/lang/Runnable;

    .line 1311
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/MessagesController;JZ)V

    iput-object v1, v0, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;->onAction:Ljava/lang/Runnable;

    const/16 p1, 0xa

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_0

    .line 1316
    sget p4, Lorg/telegram/messenger/R$string;->StoriesMovedToDialogs:I

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-static {v3, p2, p1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p3

    const-string p1, "StoriesMovedToDialogs"

    invoke-static {p1, p4, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    goto :goto_0

    .line 1318
    :cond_0
    sget p4, Lorg/telegram/messenger/R$string;->StoriesMovedToContacts:I

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-static {v3, p2, p1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p3

    const-string p1, "StoriesMovedToContacts"

    invoke-static {p1, p4, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 1320
    :goto_0
    iget-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p4, v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p4

    new-array v1, v1, [Lorg/telegram/tgnet/TLRPC$User;

    aput-object p5, v1, p3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p4, p3, p1, p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/BulletinFactory$UndoObject;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->setTag(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private onLickCopied()V
    .locals 4

    .line 1945
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-nez v0, :cond_0

    return-void

    .line 1948
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stories_exportStoryLink;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stories_exportStoryLink;-><init>()V

    .line 1949
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_exportStoryLink;->id:I

    .line 1950
    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stories_exportStoryLink;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1951
    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$18;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$18;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private openAttachMenu()V
    .locals 3

    .line 1710
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-nez v0, :cond_0

    return-void

    .line 1713
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createChatAttachView()V

    .line 1714
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loadGalleryPhotos()V

    .line 1715
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-ne v0, v1, :cond_2

    .line 1716
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    .line 1718
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setMaxSelectedPhotos(IZ)V

    .line 1719
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->init()V

    .line 1720
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentTextView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    .line 1721
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDialogId(J)V

    .line 1722
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method private openChat()V
    .locals 4

    .line 4282
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4283
    iget-wide v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const-string v3, "user_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4284
    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getDialog(J)Lorg/telegram/tgnet/TLRPC$Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4286
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->top_message:I

    const-string v2, "message_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4288
    :cond_0
    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 4289
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method private requestVideoPlayer(J)V
    .locals 11

    const-string v0, "UTF-8"

    .line 2956
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 2958
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 2960
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

    .line 2961
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-wide/16 v3, 0x0

    .line 2962
    iput-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->videoDuration:J

    move-object v7, v0

    move-object v6, v2

    goto/16 :goto_2

    .line 2963
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v1, :cond_3

    .line 2964
    iget-wide v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    .line 2966
    :try_start_0
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2967
    :try_start_1
    iget v5, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->fileReference:I

    if-nez v5, :cond_1

    .line 2968
    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v6, v6, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/FileLoader;->getFileReference(Ljava/lang/Object;)I

    move-result v5

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->fileReference:I

    .line 2970
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

    .line 2975
    invoke-static {v5, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&rid="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$StoryItem;->fileReference:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "&name="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2977
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&reference="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2978
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

    .line 2979
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

    .line 2980
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

    .line 2985
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    iget-object v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    move-wide v8, p1

    invoke-interface/range {v5 .. v10}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->requestPlayer(Lorg/telegram/tgnet/TLRPC$Document;Landroid/net/Uri;JLorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;)V

    .line 2986
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_3

    .line 2988
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    invoke-interface/range {v4 .. v9}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->requestPlayer(Lorg/telegram/tgnet/TLRPC$Document;Landroid/net/Uri;JLorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;)V

    .line 2989
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iput-object v2, p1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    .line 2990
    iput-boolean v3, p1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    goto :goto_3

    .line 2993
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iput-object v2, p1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    :goto_3
    return-void
.end method

.method private saveToGallery()V
    .locals 8

    .line 1679
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-nez v1, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-nez v2, :cond_0

    return-void

    .line 1682
    :cond_0
    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_storyItemSkipped;

    if-eqz v1, :cond_1

    return-void

    .line 1685
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getPath()Ljava/io/File;

    move-result-object v0

    .line 1686
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo()Z

    move-result v4

    if-eqz v0, :cond_2

    .line 1687
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1688
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda19;

    invoke-direct {v7, p0, v4}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_0

    .line 1692
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showDownloadAlert()V

    :goto_0
    return-void
.end method

.method private sendUriAsDocument(Landroid/net/Uri;)V
    .locals 18

    move-object/from16 v1, p0

    if-nez p1, :cond_0

    return-void

    .line 3276
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v12, :cond_8

    .line 3277
    instance-of v0, v12, Lorg/telegram/tgnet/TLRPC$TL_storyItemSkipped;

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 3280
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.google.android.apps.photos.contentprovider"

    .line 3281
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    :try_start_0
    const-string v2, "/1/"

    .line 3283
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    const-string v2, "/ACTUAL"

    .line 3284
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    .line 3286
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    .line 3287
    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3288
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

    .line 3291
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    move-object/from16 v5, p1

    .line 3294
    :goto_1
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3297
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    if-nez v0, :cond_6

    .line 3300
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file"

    .line 3301
    invoke-static {v5, v2}, Lorg/telegram/messenger/MediaController;->copyFileToCache(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 3304
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

    .line 3309
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

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v2 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocument(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/messenger/MessageObject;ZILandroidx/core/view/inputmethod/InputContentInfoCompat;Ljava/lang/String;)V

    goto :goto_4

    .line 3311
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

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v3, v0

    invoke-static/range {v2 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocument(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/messenger/MessageObject;ZILandroidx/core/view/inputmethod/InputContentInfoCompat;Ljava/lang/String;)V

    :cond_8
    :goto_4
    return-void
.end method

.method private setStoryImage(Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v5, p3

    .line 2852
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Stories/StoriesController;->findEditingStory(Lorg/telegram/tgnet/TLRPC$StoryItem;)Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v2, p2

    .line 2854
    invoke-direct {v0, v1, v2, v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->setStoryImage(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object/from16 v2, p2

    .line 2857
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

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

    .line 2859
    :goto_0
    iget-object v3, v12, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

    const-string v4, "_pframe"

    if-eqz v3, :cond_4

    .line 2860
    iget-object v6, v12, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v6, :cond_2

    .line 2861
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".mp4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    .line 2864
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$StoryItem;->firstFramePath:Ljava/lang/String;

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

    .line 2866
    :cond_3
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

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

    .line 2870
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v3, 0x3e8

    invoke-static {v1, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 2871
    iget-object v3, v12, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v12, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

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

    .line 2873
    :cond_5
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_7

    .line 2874
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    const v4, 0x7fffffff

    .line 2875
    invoke-static {v3, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 2876
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v6, 0x320

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 2880
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

    .line 2883
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    :goto_2
    return-void
.end method

.method private setStoryImage(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;)V
    .locals 15

    move-object/from16 v0, p1

    .line 2890
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->isVideo:Z

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2891
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

    .line 2893
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

    .line 1883
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_1

    .line 1885
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->createLink()Ljava/lang/String;

    move-result-object v8

    if-eqz p1, :cond_0

    .line 1887
    new-instance v10, Lorg/telegram/ui/Stories/PeerStoriesView$15;

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v10, p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$15;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1893
    new-instance p1, Lorg/telegram/ui/Stories/PeerStoriesView$16;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p0

    move-object v6, v8

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/Stories/PeerStoriesView$16;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareAlert:Lorg/telegram/ui/Components/ShareAlert;

    .line 1924
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    .line 1925
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ShareAlert;->setStoryToShare(Lorg/telegram/tgnet/TLRPC$StoryItem;)V

    .line 1926
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareAlert:Lorg/telegram/ui/Components/ShareAlert;

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$17;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$17;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ShareAlert;->setDelegate(Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;)V

    .line 1934
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareAlert:Lorg/telegram/ui/Components/ShareAlert;

    invoke-interface {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    goto :goto_0

    .line 1936
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    .line 1937
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 1938
    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1939
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

    .line 3316
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

    .line 1697
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1698
    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    const-string v2, "AppName"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1699
    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    const-string v2, "OK"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1704
    sget v1, Lorg/telegram/messenger/R$string;->PleaseDownload:I

    const-string v2, "PleaseDownload"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1706
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method private showUserViewsDialog()V
    .locals 3

    .line 2314
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->hasExpiredViews(Lorg/telegram/tgnet/TLRPC$StoryItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 2315
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 2316
    invoke-static {}, Lorg/telegram/ui/Components/BulletinFactory;->global()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2318
    sget v1, Lorg/telegram/messenger/R$string;->ExpiredViewsStub:I

    const-string v2, "ExpiredViewsStub"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    .line 2321
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->openViews()V

    :cond_1
    :goto_0
    return-void
.end method

.method private toggleArchiveForStory(J)V
    .locals 9

    .line 1301
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    .line 1302
    iget-boolean v0, v8, Lorg/telegram/tgnet/TLRPC$User;->stories_hidden:Z

    xor-int/lit8 v7, v0, 0x1

    .line 1303
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    .line 1305
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda17;

    move-object v2, v0

    move-object v3, p0

    move-wide v5, p1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/messenger/MessagesController;JZLorg/telegram/tgnet/TLRPC$User;)V

    const-wide/16 p1, 0xc8

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private updatePosition(Z)V
    .locals 40

    move-object/from16 v0, p0

    .line 2413
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

    .line 2416
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 2417
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 2418
    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    .line 2420
    invoke-static {}, Lorg/telegram/ui/Stories/StoriesUtilities;->getStoryImageFilter()Ljava/lang/String;

    move-result-object v8

    const/4 v15, 0x0

    .line 2422
    iput-boolean v15, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastNoThumb:Z

    .line 2423
    iput-boolean v15, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    .line 2424
    iget v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    .line 2426
    iget-boolean v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isUploading:Z

    .line 2427
    iget-boolean v13, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    .line 2429
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    const/4 v11, 0x0

    iput-object v11, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->editingSourceItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 2430
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/16 v5, 0x96

    if-nez v4, :cond_5

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v14, v4, :cond_5

    .line 2431
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isUploading:Z

    .line 2432
    iput-boolean v15, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    .line 2433
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v14, v4

    if-ltz v14, :cond_4

    .line 2434
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v14, v4, :cond_1

    goto/16 :goto_2

    .line 2437
    :cond_1
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    .line 2439
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, v15}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    .line 2440
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeDuration(I)V

    .line 2441
    iget-object v4, v10, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 2442
    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v17, 0x3

    const/16 v18, 0x1

    .line 2443
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v21

    move-object/from16 v16, v4

    invoke-static/range {v16 .. v21}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 2444
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v16, v5

    goto :goto_0

    :cond_2
    move-object/from16 v16, v11

    .line 2446
    :goto_0
    iget-boolean v4, v10, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->isVideo:Z

    if-eqz v4, :cond_3

    .line 2447
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v10, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const/4 v9, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v1, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    move/from16 v23, v12

    move/from16 v24, v13

    move-wide/from16 v12, v18

    move/from16 v17, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v21

    move/from16 v16, v22

    invoke-virtual/range {v4 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    :cond_3
    move-object v1, v10

    move/from16 v23, v12

    move/from16 v24, v13

    move/from16 v17, v14

    .line 2449
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, v16

    move/from16 v16, v18

    invoke-virtual/range {v4 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 2451
    :goto_1
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->set(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V

    const/4 v1, 0x0

    .line 2452
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    move/from16 v14, v17

    move/from16 v1, v24

    goto/16 :goto_12

    :cond_4
    :goto_2
    return-void

    :cond_5
    move/from16 v23, v12

    move/from16 v24, v13

    move v1, v15

    .line 2454
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isUploading:Z

    .line 2455
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    if-ltz v14, :cond_52

    .line 2456
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    if-le v14, v4, :cond_6

    goto/16 :goto_2b

    .line 2460
    :cond_6
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 2461
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v4, v15}, Lorg/telegram/ui/Stories/StoriesController;->findEditingStory(Lorg/telegram/tgnet/TLRPC$StoryItem;)Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 2463
    iput-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    .line 2464
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    .line 2465
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->onImageReceiverThumbLoaded:Ljava/lang/Runnable;

    if-nez v6, :cond_7

    goto :goto_3

    :cond_7
    move v5, v1

    :goto_3
    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeDuration(I)V

    .line 2466
    iget-boolean v4, v13, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->isVideo:Z

    if-eqz v4, :cond_8

    .line 2467
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v13, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v1, v13

    move-object/from16 v13, v16

    move/from16 v18, v14

    move/from16 v14, v17

    invoke-virtual/range {v4 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_4

    :cond_8
    move-object v1, v13

    move/from16 v18, v14

    .line 2469
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v4 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 2471
    :goto_4
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->set(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V

    .line 2472
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iput-object v15, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->editingSourceItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    const/4 v1, 0x0

    .line 2473
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    move/from16 v1, v24

    goto/16 :goto_11

    :cond_9
    move/from16 v18, v14

    .line 2475
    iget-object v1, v15, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v1, :cond_a

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    .line 2477
    :goto_5
    iget-wide v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iput-wide v6, v15, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    .line 2478
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move/from16 v14, v24

    invoke-virtual {v4, v14}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    .line 2479
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeDuration(I)V

    .line 2480
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    .line 2481
    iput-boolean v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    move v1, v14

    move-object/from16 v17, v15

    goto/16 :goto_d

    .line 2482
    :cond_b
    iget-object v5, v15, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

    const-string v6, "_pframe"

    if-eqz v5, :cond_13

    if-nez v4, :cond_c

    .line 2484
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, ".mp4"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    :cond_c
    if-eqz v1, :cond_f

    .line 2487
    iget-object v1, v15, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v1, :cond_d

    .line 2488
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v32, v1

    goto :goto_6

    :cond_d
    const/16 v32, 0x0

    .line 2490
    :goto_6
    iget-object v1, v15, Lorg/telegram/tgnet/TLRPC$StoryItem;->firstFramePath:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v15, Lorg/telegram/tgnet/TLRPC$StoryItem;->firstFramePath:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v12, v12, v7}, Lorg/telegram/messenger/ImageLocation;->getKey(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v7}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2491
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v1, v15, Lorg/telegram/tgnet/TLRPC$StoryItem;->firstFramePath:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v16, 0x0

    const/4 v1, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v11, v32

    move-wide/from16 v12, v16

    move/from16 v38, v14

    move-object v14, v1

    move-object v1, v15

    move-object/from16 v15, v19

    move/from16 v16, v20

    invoke-virtual/range {v4 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_7

    :cond_e
    move/from16 v38, v14

    move-object v1, v15

    .line 2493
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/16 v26, 0x0

    const/16 v27, 0x0

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v28

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v25, v4

    invoke-virtual/range {v25 .. v37}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    :goto_7
    move-object/from16 v17, v1

    move/from16 v1, v38

    goto/16 :goto_d

    :cond_f
    move/from16 v38, v14

    move-object v1, v15

    .line 2496
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_10

    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_8

    :cond_10
    const/4 v11, 0x0

    :goto_8
    if-eqz v11, :cond_11

    .line 2498
    iget-object v4, v11, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v9, v4

    move/from16 v15, v38

    goto :goto_9

    :cond_11
    move/from16 v15, v38

    const/4 v9, 0x0

    :goto_9
    if-eqz v15, :cond_12

    .line 2501
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->firstFramePath:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v6, v8

    invoke-virtual/range {v4 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_a

    .line 2503
    :cond_12
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v6, v8

    move-object v8, v10

    move-wide v10, v11

    move-object v12, v13

    move-object v13, v14

    move/from16 v14, v16

    invoke-virtual/range {v4 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    :goto_a
    move-object/from16 v17, v1

    move v1, v15

    goto/16 :goto_d

    :cond_13
    move-object/from16 v39, v15

    move v15, v14

    move-object/from16 v14, v39

    .line 2507
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v5, v4, Lorg/telegram/ui/Stories/StoryViewer;->isSingleStory:Z

    if-eqz v5, :cond_14

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v4, :cond_14

    .line 2508
    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto :goto_b

    :cond_14
    const/4 v11, 0x0

    .line 2510
    :goto_b
    iget-wide v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iput-wide v4, v14, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    if-eqz v1, :cond_16

    .line 2512
    iget-object v1, v14, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v4, 0x3e8

    invoke-static {v1, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    if-nez v11, :cond_15

    .line 2514
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v11, v4

    .line 2517
    :cond_15
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v14, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v14, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1, v7}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v1, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v14

    move-object v14, v1

    move v1, v15

    move-object/from16 v15, v17

    invoke-virtual/range {v4 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_d

    :cond_16
    move v1, v15

    move-object v15, v14

    .line 2519
    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_17

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_c

    :cond_17
    const/4 v4, 0x0

    :goto_c
    if-eqz v4, :cond_19

    .line 2520
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v5, :cond_19

    if-nez v11, :cond_18

    .line 2522
    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v11, v5

    .line 2524
    :cond_18
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const v6, 0x7fffffff

    invoke-static {v5, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    .line 2529
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v4}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    move-object v4, v6

    move-object v5, v7

    move-object v6, v9

    move-object v7, v10

    move-object v9, v12

    move-object v10, v13

    move-wide/from16 v12, v16

    move-object/from16 v17, v15

    move/from16 v16, v19

    invoke-virtual/range {v4 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_d

    :cond_19
    move-object/from16 v17, v15

    .line 2532
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 2536
    :goto_d
    iget-wide v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    move-object/from16 v6, v17

    iput-wide v4, v6, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    .line 2537
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->set(Lorg/telegram/tgnet/TLRPC$StoryItem;)V

    .line 2538
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    if-nez v4, :cond_1a

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v4, :cond_1a

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    if-nez v5, :cond_1a

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_storyItemSkipped;

    if-nez v4, :cond_1a

    const/4 v15, 0x1

    goto :goto_e

    :cond_1a
    const/4 v15, 0x0

    :goto_e
    iput-boolean v15, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    iput-boolean v15, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    if-eqz v15, :cond_1c

    .line 2540
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->allowScreenshots()Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$StoryItem;->isPublic:Z

    if-eqz v4, :cond_1b

    const/4 v15, 0x1

    goto :goto_f

    :cond_1b
    const/4 v15, 0x0

    :goto_f
    iput-boolean v15, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    .line 2542
    :cond_1c
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    if-eqz v4, :cond_1e

    .line 2543
    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_1d

    .line 2544
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$StoryItem;->isPublic:Z

    if-eqz v4, :cond_1d

    const/4 v15, 0x1

    goto :goto_10

    :cond_1d
    const/4 v15, 0x0

    :goto_10
    iput-boolean v15, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    .line 2546
    :cond_1e
    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v4

    iget-wide v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget v5, v6, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {v4, v7, v8, v5}, Lorg/telegram/messenger/NotificationsController;->processReadStories(JI)V

    :goto_11
    move/from16 v14, v18

    .line 2550
    :goto_12
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v4, :cond_1f

    if-nez p1, :cond_1f

    .line 2551
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iput v4, v5, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    .line 2554
    :cond_1f
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/StoriesViewPager;->checkAllowScreenshots()V

    const/4 v4, 0x1

    .line 2555
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageChanged:Z

    .line 2556
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v4, :cond_20

    .line 2557
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateUserViews()V

    .line 2560
    :cond_20
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v5, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    .line 2561
    invoke-static {v5, v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoryId(Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)I

    move-result v4

    invoke-static {v3, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoryId(Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)I

    move-result v5

    if-eq v4, v5, :cond_22

    if-eqz v2, :cond_21

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v4, :cond_21

    iget-object v5, v2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

    .line 2562
    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_21

    goto :goto_13

    :cond_21
    const/4 v15, 0x0

    goto :goto_14

    :cond_22
    :goto_13
    const/4 v15, 0x1

    :goto_14
    if-eqz v15, :cond_24

    .line 2563
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    if-ne v4, v1, :cond_23

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isUploading:Z

    move/from16 v4, v23

    if-eq v1, v4, :cond_24

    :cond_23
    const/4 v1, 0x1

    goto :goto_15

    :cond_24
    const/4 v1, 0x0

    :goto_15
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_25

    .line 2566
    iget-object v7, v2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    if-eqz v7, :cond_25

    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    .line 2567
    invoke-virtual {v8}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getLocalPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_26

    :cond_25
    if-eqz v3, :cond_27

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v7, v7, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v7, :cond_27

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    if-eq v3, v7, :cond_26

    goto :goto_16

    :cond_26
    const/4 v3, 0x0

    goto :goto_18

    .line 2571
    :cond_27
    :goto_16
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v3, :cond_28

    .line 2572
    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v3

    const-string v7, ""

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2574
    :cond_28
    iput-wide v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentImageTime:J

    const/4 v3, 0x0

    .line 2575
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->switchEventSent:Z

    .line 2577
    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v7, v7, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v7, :cond_2a

    .line 2578
    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v8, v8, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    if-eqz v8, :cond_29

    .line 2579
    iget v7, v7, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->progress:F

    invoke-virtual {v8, v7, v3}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    .line 2581
    :cond_29
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto :goto_17

    :cond_2a
    if-nez v1, :cond_2b

    .line 2583
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-static {v3, v4}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->access$6402(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;F)F

    .line 2585
    :cond_2b
    :goto_17
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    .line 2586
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/StoryCaptionView;->reset()V

    .line 2587
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->cancelWaiting()V

    const/4 v3, 0x1

    :goto_18
    if-nez v3, :cond_2c

    if-eqz v2, :cond_32

    .line 2590
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-nez v2, :cond_32

    .line 2591
    :cond_2c
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v3, :cond_2d

    .line 2592
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->access$6500(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)[Landroid/widget/TextView;

    move-result-object v3

    const/4 v7, 0x0

    aget-object v3, v3, v7

    iget-boolean v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    invoke-static {v3, v7, v8}, Lorg/telegram/ui/Stories/StoriesUtilities;->getUploadingStr(Landroid/widget/TextView;ZZ)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->setSubtitle(Ljava/lang/CharSequence;Z)V

    goto :goto_19

    .line 2593
    :cond_2d
    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v2, :cond_30

    .line 2594
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->date:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2e

    .line 2595
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    sget v2, Lorg/telegram/messenger/R$string;->CachedStory:I

    const-string v3, "CachedStory"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_19

    :cond_2e
    int-to-long v2, v2

    .line 2597
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatStoryDate(J)Ljava/lang/String;

    move-result-object v2

    .line 2598
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->edited:Z

    if-eqz v3, :cond_2f

    .line 2599
    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 2600
    new-instance v3, Lorg/telegram/ui/Components/DotDividerSpan;

    invoke-direct {v3}, Lorg/telegram/ui/Components/DotDividerSpan;-><init>()V

    const/high16 v7, 0x3fc00000    # 1.5f

    .line 2601
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/DotDividerSpan;->setTopPadding(I)V

    const/4 v7, 0x5

    .line 2602
    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/DotDividerSpan;->setSize(I)V

    const-string v7, " . "

    .line 2603
    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {v7, v3, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2604
    sget v3, Lorg/telegram/messenger/R$string;->EditedMessage:I

    const-string v7, "EditedMessage"

    invoke-static {v7, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2607
    :cond_2f
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-virtual {v3, v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->setSubtitle(Ljava/lang/CharSequence;Z)V

    .line 2610
    :cond_30
    :goto_19
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    .line 2611
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide(Z)V

    .line 2613
    :cond_31
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v1, :cond_32

    .line 2614
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide(Z)V

    .line 2618
    :cond_32
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    const/16 v3, 0x14

    if-eqz v2, :cond_33

    .line 2619
    iget-object v1, v2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    .line 2620
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/4 v7, 0x0

    invoke-static {v1, v2, v3, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v11

    .line 2621
    invoke-static {v11}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    .line 2622
    invoke-static {v2, v1}, Lorg/telegram/messenger/MessageObject;->addLinks(ZLjava/lang/CharSequence;)V

    goto :goto_1a

    .line 2623
    :cond_33
    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v1, :cond_34

    .line 2624
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->caption:Ljava/lang/String;

    .line 2625
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/4 v7, 0x0

    invoke-static {v1, v2, v3, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v11

    if-eqz v11, :cond_35

    .line 2626
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->entities:Ljava/util/ArrayList;

    if-eqz v1, :cond_35

    .line 2627
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->caption:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2628
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->entities:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    const/4 v7, 0x0

    invoke-static {v1, v2, v3, v7}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;Z)Landroid/text/Spannable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 2629
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x1

    .line 2630
    invoke-static {v2, v1}, Lorg/telegram/messenger/MessageObject;->addLinks(ZLjava/lang/CharSequence;)V

    .line 2631
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->entities:Ljava/util/ArrayList;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v8, v1

    invoke-static/range {v8 .. v13}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;Ljava/util/ArrayList;ZZZZ)Z

    move-object v11, v1

    goto :goto_1a

    :cond_34
    const/4 v11, 0x0

    .line 2636
    :cond_35
    :goto_1a
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_37

    .line 2637
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createUnsupportedContainer()V

    .line 2638
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createReplyDisabledView()V

    .line 2639
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupportedContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2640
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2641
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    .line 2642
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_36

    .line 2643
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    .line 2645
    :cond_36
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3d

    .line 2646
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1d

    .line 2649
    :cond_37
    iget-wide v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_38

    .line 2650
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    goto :goto_1b

    .line 2651
    :cond_38
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v1, :cond_39

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_39

    const/4 v3, 0x0

    .line 2652
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    goto :goto_1c

    :cond_39
    :goto_1b
    const/4 v3, 0x0

    .line 2654
    :goto_1c
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v1, :cond_3a

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3a

    .line 2655
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2657
    :cond_3a
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupportedContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3b

    .line 2658
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2660
    :cond_3b
    iget-wide v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 2661
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createReplyDisabledView()V

    .line 2662
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1d

    .line 2663
    :cond_3c
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_3d

    .line 2664
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3d
    :goto_1d
    if-eqz v11, :cond_3e

    .line 2668
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    if-nez v1, :cond_3e

    .line 2669
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2670
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1e

    :cond_3e
    const/4 v3, 0x0

    .line 2672
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v1, :cond_3f

    .line 2673
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v1, v3}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsCaption(Z)V

    .line 2674
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isCaptionPartVisible:Z

    invoke-interface {v1, v3}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsCaptionPartVisible(Z)V

    .line 2676
    :cond_3f
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2678
    :goto_1e
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2679
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-eqz v1, :cond_40

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelectedPeer()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 2680
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    iget-wide v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    invoke-interface {v1, v7, v8, v3}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->onPeerSelected(JI)V

    .line 2682
    :cond_40
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    if-eqz v3, :cond_41

    const/4 v3, 0x0

    goto :goto_1f

    :cond_41
    move v3, v2

    :goto_1f
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2684
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->savedPositions:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v1, v7, v8, v14}, Lorg/telegram/messenger/support/LongSparseIntArray;->append(JI)V

    .line 2687
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v1, :cond_42

    .line 2688
    invoke-direct {v0, v5, v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->requestVideoPlayer(J)V

    .line 2689
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePreloadImages()V

    .line 2690
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->bumpPriority()V

    :cond_42
    const/4 v1, 0x0

    .line 2693
    iput v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->listPosition:I

    .line 2694
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v1, :cond_44

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v1, :cond_44

    .line 2695
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    const/4 v3, 0x0

    .line 2696
    :goto_20
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_44

    .line 2697
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_43

    .line 2698
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    if-ne v5, v1, :cond_43

    .line 2699
    iput v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->listPosition:I

    goto :goto_21

    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 2704
    :cond_44
    :goto_21
    iget v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    iput v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->linesPosition:I

    .line 2705
    iget v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->count:I

    iput v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->linesCount:I

    .line 2706
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->reversed:Z

    if-eqz v5, :cond_45

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    sub-int/2addr v3, v1

    .line 2707
    iput v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->linesPosition:I

    .line 2710
    :cond_45
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 2711
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2712
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->hasSound()Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_46

    move v1, v3

    goto :goto_22

    :cond_46
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_22
    iput v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconViewAlpha:F

    .line 2713
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->hasSound()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 2714
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2715
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->noSoundIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_23

    :cond_47
    const/4 v5, 0x0

    .line 2717
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2718
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->noSoundIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2720
    :goto_23
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    iget v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconViewAlpha:F

    iget v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float/2addr v3, v5

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_24

    .line 2722
    :cond_48
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2725
    :goto_24
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v2, :cond_4a

    .line 2726
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v15, :cond_49

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->editedPrivacy:Z

    if-eqz v5, :cond_49

    const/4 v15, 0x1

    goto :goto_25

    :cond_49
    const/4 v15, 0x0

    :goto_25
    invoke-virtual {v1, v3, v2, v15}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->set(ZLorg/telegram/ui/Stories/StoriesController$UploadingStory;Z)Z

    :goto_26
    const/4 v1, 0x0

    goto :goto_29

    .line 2727
    :cond_4a
    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v1, :cond_4c

    .line 2728
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v15, :cond_4b

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->editedPrivacy:Z

    if-eqz v5, :cond_4b

    const/4 v15, 0x1

    goto :goto_27

    :cond_4b
    const/4 v15, 0x0

    :goto_27
    invoke-virtual {v2, v3, v1, v15}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->set(ZLorg/telegram/tgnet/TLRPC$StoryItem;Z)Z

    goto :goto_26

    .line 2730
    :cond_4c
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v15, :cond_4d

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->editedPrivacy:Z

    if-eqz v3, :cond_4d

    const/4 v3, 0x0

    const/4 v15, 0x1

    goto :goto_28

    :cond_4d
    const/4 v3, 0x0

    const/4 v15, 0x0

    :goto_28
    invoke-virtual {v1, v2, v3, v15}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->set(ZLorg/telegram/tgnet/TLRPC$StoryItem;Z)Z

    goto :goto_26

    .line 2732
    :goto_29
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->editedPrivacy:Z

    .line 2733
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4e

    const/16 v2, 0x2c

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v4, v2

    :cond_4e
    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 2753
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoryViewer;->soundEnabled()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->setIconMuted(ZZ)V

    .line 2756
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v1, :cond_4f

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v1, :cond_4f

    .line 2757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StoryViewer displayed story dialogId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " storyId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2759
    :cond_4f
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v1, :cond_50

    .line 2760
    iget v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->preload(ILorg/telegram/tgnet/TLRPC$StoryItem;)V

    .line 2762
    :cond_50
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v2, :cond_51

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result v2

    iget v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->linesCount:I

    if-eq v2, v3, :cond_51

    const/16 v2, 0x38

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    const/4 v2, 0x0

    goto :goto_2a

    :cond_51
    const/4 v2, 0x0

    const/4 v15, 0x0

    :goto_2a
    invoke-virtual {v1, v2, v2, v15, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 2457
    :cond_52
    :goto_2b
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    return-void
.end method

.method private updatePreloadImages()V
    .locals 10

    const-string v0, "UTF-8"

    .line 2781
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 2782
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 2783
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2785
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uriesToPrepare:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2786
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->documentsToPrepare:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_9

    .line 2788
    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    if-nez v3, :cond_0

    add-int/lit8 v4, v4, -0x1

    .line 2792
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->leftPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-gez v4, :cond_1

    .line 2794
    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    goto/16 :goto_3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 2799
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->rightPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 2800
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoriesCount()I

    move-result v6

    if-lt v4, v6, :cond_1

    .line 2801
    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    goto/16 :goto_3

    .line 2805
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_2

    .line 2806
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v4, v6

    .line 2807
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    .line 2808
    invoke-direct {p0, v4, v5, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->setStoryImage(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    if-gez v4, :cond_3

    move v4, v2

    .line 2813
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-lt v4, v6, :cond_4

    .line 2814
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v7

    .line 2816
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 2817
    iget-wide v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    .line 2818
    invoke-direct {p0, v4, v5, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->setStoryImage(Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;)V

    .line 2820
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v5, :cond_5

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v5, :cond_5

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    move v7, v2

    :goto_1
    if-eqz v7, :cond_8

    .line 2822
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2823
    iget v6, v4, Lorg/telegram/tgnet/TLRPC$StoryItem;->fileReference:I

    if-nez v6, :cond_6

    .line 2824
    iget v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/telegram/messenger/FileLoader;->getFileReference(Ljava/lang/Object;)I

    move-result v6

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$StoryItem;->fileReference:I

    .line 2828
    :cond_6
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

    .line 2833
    invoke-static {v7, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&rid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$StoryItem;->fileReference:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "&name="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2835
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&reference="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2836
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    new-array v4, v2, [B

    :goto_2
    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2837
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uriesToPrepare:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tg://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2838
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->documentsToPrepare:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    .line 2840
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 2848
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->documentsToPrepare:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uriesToPrepare:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->preparePlayer(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private updateSelectedPosition()V
    .locals 6

    .line 2142
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2143
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    .line 2145
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2146
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

    .line 2148
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

    .line 2149
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2153
    :cond_1
    :goto_0
    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    goto :goto_2

    .line 2155
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->savedPositions:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v0, v3, v4, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    if-ne v0, v1, :cond_4

    .line 2157
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->isSingleStory:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    if-eqz v0, :cond_4

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->max_read_id:I

    if-lez v0, :cond_4

    move v0, v2

    .line 2158
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 2159
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_userStories;->max_read_id:I

    if-le v3, v4, :cond_3

    .line 2160
    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2167
    :cond_4
    :goto_2
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    if-ne v0, v1, :cond_5

    .line 2168
    iput v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    :cond_5
    return-void
.end method

.method private updateStoryItems()V
    .locals 7

    .line 2173
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2174
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->isSingleStory:Z

    if-eqz v1, :cond_0

    .line 2175
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->singleStory:Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2176
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v2, :cond_2

    .line 2177
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2178
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->findMessageObject(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2179
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v1, :cond_1

    .line 2180
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2183
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2185
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 2186
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2189
    :cond_3
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->overrideUserStories:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    if-eqz v0, :cond_4

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    iget-wide v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    .line 2190
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    goto :goto_2

    .line 2192
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/TLRPC$TL_userStories;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    .line 2194
    :goto_2
    iput v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->totalStoriesCount:I

    .line 2195
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    if-eqz v0, :cond_5

    .line 2196
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->totalStoriesCount:I

    .line 2197
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2199
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2200
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v0, :cond_6

    .line 2201
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingStories()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2204
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoriesCount()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->count:I

    return-void
.end method

.method private updateUserViews()V
    .locals 10

    .line 2909
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-nez v1, :cond_0

    .line 2911
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->editingSourceItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    :cond_0
    const/16 v0, 0x8

    if-eqz v1, :cond_8

    .line 2914
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$TL_storyViews;

    const/16 v3, 0x10

    if-eqz v2, :cond_6

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_storyViews;->views_count:I

    if-lez v2, :cond_6

    const/4 v2, 0x0

    move v4, v2

    move v5, v4

    .line 2917
    :goto_0
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$TL_storyViews;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_storyViews;->recent_viewers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x3

    if-ge v4, v6, :cond_3

    .line 2918
    iget v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$TL_storyViews;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_storyViews;->recent_viewers:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2920
    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    iget v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-virtual {v8, v5, v9, v6}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v5, v5, 0x1

    :cond_1
    if-lt v5, v7, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    move v4, v5

    :goto_2
    if-ge v4, v7, :cond_4

    .line 2929
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    iget v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    const/4 v9, 0x0

    invoke-virtual {v6, v4, v8, v9}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2932
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    .line 2933
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$TL_storyViews;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_storyViews;->views_count:I

    const-string v6, "Views"

    invoke-static {v6, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v5, :cond_5

    .line 2935
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2936
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    goto :goto_3

    .line 2938
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2939
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    const/16 v1, 0xd

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v3, 0x18

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0x14

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v3, v5

    add-int/2addr v1, v3

    const/16 v3, 0xa

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 2941
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 2943
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez v2, :cond_7

    sget v2, Lorg/telegram/messenger/R$string;->NobodyViews:I

    const-string v4, "NobodyViews"

    goto :goto_4

    :cond_7
    sget v2, Lorg/telegram/messenger/R$string;->NobodyViewsArchived:I

    const-string v4, "NobodyViewsArchived"

    :goto_4
    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2944
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 2945
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2946
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 2949
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2950
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2951
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method private updateViewOffsets()V
    .locals 11

    .line 4023
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->getProgressToDismiss()F

    move-result v0

    .line 4025
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

    .line 4027
    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastOpenedKeyboardHeight:I

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animateKeyboardOpening:Z

    if-eqz v2, :cond_1

    .line 4028
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-static {v2, v3, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    goto :goto_1

    .line 4030
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v3

    .line 4032
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToRecording:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v2

    .line 4033
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToTextA:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v5

    .line 4034
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToStickerExpanded:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v6

    .line 4035
    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToRecording:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isRecording:Z

    if-eqz v8, :cond_3

    move v8, v4

    goto :goto_2

    :cond_3
    move v8, v3

    :goto_2
    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    .line 4036
    iget-boolean v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->messageSent:Z

    if-nez v7, :cond_5

    .line 4037
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

    .line 4039
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

    .line 4040
    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v7, :cond_7

    .line 4041
    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkAnimation()V

    .line 4043
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

    .line 4044
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

    .line 4045
    :cond_a
    :goto_6
    iput-boolean v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 4046
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    iput v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastAnimatingKeyboardHeight:F

    .line 4047
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v2

    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->prevToHideProgress:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_b

    .line 4048
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 4050
    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->prevToHideProgress:F

    .line 4051
    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToDismiss:F

    .line 4052
    iput v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    .line 4053
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyProgress:F

    iput v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToReply:F

    .line 4058
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/16 v5, 0x8

    if-eqz v2, :cond_d

    cmpl-float v1, v1, v3

    if-lez v1, :cond_c

    move v1, v8

    goto :goto_7

    :cond_c
    move v1, v5

    .line 4059
    :goto_7
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4061
    :cond_d
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getHideInterfaceAlpha()F

    move-result v1

    .line 4062
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    const/high16 v3, -0x1000000

    if-eqz v2, :cond_e

    .line 4063
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    const/4 v7, -0x1

    const v9, 0x3e051eb8    # 0.13f

    .line 4064
    invoke-static {v3, v7, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v7

    const/16 v9, 0xaa

    .line 4065
    invoke-static {v3, v9}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    iget v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    .line 4063
    invoke-static {v7, v3, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 4068
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    int-to-float v3, v3

    iget v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToDismiss:F

    sub-float v7, v4, v7

    mul-float/2addr v3, v7

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_8

    .line 4070
    :cond_e
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x430c0000    # 140.0f

    mul-float/2addr v7, v1

    float-to-int v7, v7

    invoke-static {v3, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_8
    move v2, v8

    .line 4072
    :goto_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_18

    .line 4073
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4075
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_15

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eq v3, v7, :cond_15

    sget v7, Lorg/telegram/messenger/R$id;->parent_tag:I

    invoke-virtual {v3, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_f

    goto/16 :goto_b

    .line 4085
    :cond_f
    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v7, :cond_10

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v7

    if-ne v3, v7, :cond_10

    .line 4086
    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    iget v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    sub-float/2addr v7, v9

    invoke-virtual {v3, v7}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_c

    .line 4087
    :cond_10
    instance-of v7, v3, Lorg/telegram/ui/Components/HintView;

    if-eqz v7, :cond_11

    .line 4088
    check-cast v3, Lorg/telegram/ui/Components/HintView;

    .line 4089
    invoke-virtual {v3}, Lorg/telegram/ui/Components/HintView;->updatePosition()V

    goto/16 :goto_c

    .line 4090
    :cond_11
    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    if-eq v3, v7, :cond_17

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    if-eq v3, v7, :cond_17

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    if-eq v3, v7, :cond_17

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mediaBanTooltip:Lorg/telegram/ui/Components/HintView;

    if-eq v3, v7, :cond_17

    .line 4092
    iget v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->enterViewBottomOffset:I

    neg-int v7, v7

    int-to-float v7, v7

    iget v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    sub-float v9, v4, v9

    mul-float/2addr v7, v9

    iget v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    sub-float/2addr v7, v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    sub-float v10, v4, v10

    mul-float/2addr v9, v10

    sub-float/2addr v7, v9

    const/16 v9, 0x14

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v10, v10, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyProgress:F

    mul-float/2addr v9, v10

    sub-float/2addr v7, v9

    .line 4093
    iget-boolean v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eqz v9, :cond_12

    .line 4094
    iget v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToDismiss:F

    sub-float v9, v4, v9

    mul-float/2addr v9, v1

    goto :goto_a

    :cond_12
    mul-float v9, v1, v4

    .line 4098
    :goto_a
    iget-object v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-ne v3, v10, :cond_13

    .line 4099
    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAnimatedTop()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    sub-float/2addr v7, v9

    .line 4100
    iget v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    .line 4101
    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 4103
    :cond_13
    iget-object v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-ne v3, v10, :cond_14

    .line 4104
    iget v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    iget-object v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToRecording:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v10

    sub-float v10, v4, v10

    mul-float/2addr v7, v10

    sub-float v10, v4, v6

    mul-float/2addr v7, v10

    iget-object v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToTextA:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v10

    sub-float v10, v4, v10

    mul-float/2addr v7, v10

    mul-float/2addr v9, v7

    mul-float/2addr v9, v4

    .line 4105
    invoke-virtual {v3, v9}, Landroid/view/View;->setAlpha(F)V

    const v9, 0x3f4ccccd    # 0.8f

    const v10, 0x3e4ccccd    # 0.2f

    mul-float/2addr v7, v10

    add-float/2addr v7, v9

    .line 4107
    invoke-virtual {v3, v7}, Landroid/view/View;->setScaleX(F)V

    .line 4108
    invoke-virtual {v3, v7}, Landroid/view/View;->setScaleY(F)V

    goto :goto_c

    .line 4110
    :cond_14
    invoke-virtual {v3, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 4111
    invoke-virtual {v3, v9}, Landroid/view/View;->setAlpha(F)V

    goto :goto_c

    .line 4076
    :cond_15
    :goto_b
    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-ne v3, v7, :cond_17

    .line 4077
    iget-boolean v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eqz v7, :cond_16

    .line 4078
    iget v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToDismiss:F

    sub-float v7, v4, v7

    mul-float/2addr v7, v1

    iget v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v9, v4, v9

    mul-float/2addr v7, v9

    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_c

    .line 4080
    :cond_16
    iget v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v7, v4, v7

    mul-float/2addr v7, v1

    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_17
    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    .line 4115
    :cond_18
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    sub-float v0, v4, v0

    mul-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 4117
    :goto_d
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ge v8, v0, :cond_1f

    .line 4118
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_11

    .line 4122
    :cond_19
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    if-eq v0, v2, :cond_1b

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    if-eq v0, v2, :cond_1b

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    if-eq v0, v2, :cond_1b

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eq v0, v2, :cond_1b

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    if-eq v0, v2, :cond_1b

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    if-ne v0, v2, :cond_1a

    goto :goto_e

    .line 4134
    :cond_1a
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_11

    .line 4124
    :cond_1b
    :goto_e
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    if-ne v0, v2, :cond_1c

    .line 4125
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconViewAlpha:F

    goto :goto_f

    :cond_1c
    move v2, v4

    .line 4127
    :goto_f
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    if-ne v0, v3, :cond_1e

    .line 4128
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->hideCaptionWithInterface()Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v1

    goto :goto_10

    :cond_1d
    move v3, v4

    :goto_10
    mul-float/2addr v2, v3

    .line 4129
    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_11

    :cond_1e
    mul-float/2addr v2, v1

    .line 4131
    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 4137
    :cond_1f
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_20

    const/16 v1, 0xa

    .line 4138
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setHorizontalPadding(FFZ)V

    .line 4139
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 4140
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_20
    return-void
.end method


# virtual methods
.method public animateOut(Z)V
    .locals 3

    .line 4583
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 4584
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 4586
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

    .line 4587
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4606
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$27;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$27;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4628
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1a4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4629
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4630
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public cancelTouch()V
    .locals 1

    .line 3358
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryCaptionView;->cancelTouch()V

    return-void
.end method

.method public checkPinchToZoom(Landroid/view/MotionEvent;)V
    .locals 3

    .line 3332
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lorg/telegram/ui/PinchToZoomHelper;->checkPinchToZoom(Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/messenger/MessageObject;)Z

    return-void
.end method

.method checkReactionsLayout()V
    .locals 9

    .line 4316
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-nez v0, :cond_0

    .line 4318
    new-instance v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v2, 0x1

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    new-instance v6, Lorg/telegram/ui/Stories/PeerStoriesView$25;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$25;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ReactionsContainerLayout;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v1, 0x1

    .line 4324
    iput-boolean v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->skipEnterAnimation:Z

    .line 4325
    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerIndex:I

    const/4 v2, -0x2

    const/16 v3, 0x34

    const/16 v4, 0x31

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x40

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4326
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$26;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$26;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setDelegate(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)V

    .line 4411
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 4413
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public checkRecordLocked(Z)Z
    .locals 3

    .line 4555
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isRecordLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4556
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4557
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4558
    sget v1, Lorg/telegram/messenger/R$string;->DiscardVideoMessageTitle:I

    const-string v2, "DiscardVideoMessageTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4559
    sget v1, Lorg/telegram/messenger/R$string;->DiscardVideoMessageDescription:I

    const-string v2, "DiscardVideoMessageDescription"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 4561
    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->DiscardVoiceMessageTitle:I

    const-string v2, "DiscardVoiceMessageTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4562
    sget v1, Lorg/telegram/messenger/R$string;->DiscardVoiceMessageDescription:I

    const-string v2, "DiscardVoiceMessageDescription"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4564
    :goto_0
    sget v1, Lorg/telegram/messenger/R$string;->DiscardVoiceMessageAction:I

    const-string v2, "DiscardVoiceMessageAction"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4573
    sget p1, Lorg/telegram/messenger/R$string;->Continue:I

    const-string v1, "Continue"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4574
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

.method public closeKeyboardOrEmoji()Z
    .locals 4

    .line 3088
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_0

    .line 3089
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 3091
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_1

    .line 3092
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 3095
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mediaBanTooltip:Lorg/telegram/ui/Components/HintView;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 3096
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintView;->hide(Z)V

    .line 3098
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyEditCaptionView:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 3100
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CustomPopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3101
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    return v1

    :cond_4
    const/4 v0, 0x0

    .line 3103
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkRecordLocked(Z)Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    .line 3105
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3106
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismiss()V

    return v1

    .line 3108
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3109
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    if-lez v2, :cond_7

    .line 3110
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto :goto_0

    .line 3112
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2, v1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(ZZ)Z

    :goto_0
    return v1

    .line 3115
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getKeyboardHeight()I

    move-result v2

    const/16 v3, 0x14

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-lt v2, v3, :cond_9

    .line 3116
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return v1

    .line 3118
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoryCaptionView;->getProgressToBlackout()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a

    .line 3119
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoryCaptionView;->collapse()V

    .line 3120
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->inBlackoutMode:Z

    .line 3121
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    return v1

    :cond_a
    return v0
.end method

.method public createBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 13

    .line 3027
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v4, :cond_1

    .line 3028
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3029
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v1, v4, :cond_0

    .line 3030
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->surfaceView:Landroid/view/SurfaceView;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->getBitmapFromSurface(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;)V

    :cond_0
    if-eqz v0, :cond_3

    .line 3033
    invoke-virtual {p1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 3035
    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 3036
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3038
    invoke-virtual {p1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 3041
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3042
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

    .line 3043
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 3044
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3046
    :cond_3
    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getDominantColor(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 3047
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3e19999a    # 0.15f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    const/4 v0, -0x1

    const/16 v1, 0x66

    .line 3049
    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_4
    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 3052
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

    .line 3053
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
    .locals 2

    .line 2374
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    if-eq p1, p2, :cond_1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p2, p2, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    const/4 v0, 0x0

    aget-object p3, p3, v0

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 2403
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_a

    .line 2404
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto/16 :goto_3

    .line 2375
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 2378
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_6

    .line 2379
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStoryItems()V

    .line 2380
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->count:I

    if-nez p1, :cond_4

    .line 2381
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->deletedPeer:Z

    if-nez p1, :cond_3

    .line 2382
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->deletedPeer:Z

    .line 2383
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->switchToNextAndRemoveCurrentPeer()V

    :cond_3
    return-void

    .line 2387
    :cond_4
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr p3, v0

    if-lt p1, p3, :cond_5

    .line 2388
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/2addr p1, p3

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    .line 2390
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    .line 2391
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz p1, :cond_6

    .line 2392
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateUserViews()V

    .line 2395
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->overrideUserStories:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    if-eqz p1, :cond_7

    .line 2396
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->loadSkippedStories(Lorg/telegram/tgnet/TLRPC$TL_userStories;Z)V

    goto :goto_1

    .line 2397
    :cond_7
    iget-wide p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_8

    .line 2398
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->loadSkippedStories(J)V

    .line 2400
    :cond_8
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->editStoryItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p1, :cond_a

    .line 2401
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/StoriesController;->hasUploadingStories()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->access$1700(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->allowPreparingHevcPlayers()Z

    move-result p2

    if-nez p2, :cond_9

    const/high16 p2, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_9
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_a
    :goto_3
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 2333
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateViewOffsets()V

    .line 2334
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2335
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    .line 2336
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->drawRecordedPannel(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8

    .line 4155
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 4156
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4157
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 4158
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 4159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 4160
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 4162
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-ne p2, v0, :cond_4

    .line 4163
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$6700(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 4164
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAnimatedTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 4165
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    const/16 v4, 0x14

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 4166
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    .line 4163
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4168
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$6800(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 4169
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v4

    const/16 v5, 0x30

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v5

    add-float/2addr v4, v5

    const/4 v5, 0x2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    .line 4170
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v6, v2

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    if-eqz v2, :cond_1

    const/high16 v2, 0x42380000    # 46.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    sub-int/2addr v6, v2

    int-to-float v2, v6

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 4171
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getY()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v6, v5

    .line 4168
    invoke-virtual {v0, v3, v4, v2, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4173
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    const/16 v2, 0x32

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-le v0, v3, :cond_2

    .line 4174
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

    .line 4176
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTranslationY(F)V

    .line 4178
    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    sub-float/2addr v4, v2

    mul-float/2addr v0, v4

    .line 4179
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v1, v1, v3, v4}, Lorg/telegram/ui/Components/BitmapShaderTools;->setBounds(FFFF)V

    .line 4180
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$6800(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$6700(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$6900(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 4181
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3

    .line 4182
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    iget-object v1, v1, Lorg/telegram/ui/Components/BitmapShaderTools;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4183
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$6900(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    iget-object v2, v2, Lorg/telegram/ui/Components/BitmapShaderTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4185
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$6900(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4186
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 4187
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4188
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$6900(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 4189
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 4190
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_4
    if-eqz v0, :cond_5

    .line 4193
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4194
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4195
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$6900(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 4196
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 4197
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 4199
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-ne p2, v0, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v2, :cond_6

    .line 4200
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAnimatedTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v0, v2

    const/16 v2, 0x12

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 4201
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 4202
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

    .line 4203
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

    .line 4206
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public findClickableView(Landroid/view/ViewGroup;FFZ)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3131
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 3134
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    move v1, v0

    .line 3138
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_b

    .line 3139
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3140
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_1

    .line 3143
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    if-ne v3, v4, :cond_4

    .line 3144
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v5, p2

    float-to-int v6, p3

    .line 3145
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

    .line 3149
    :cond_4
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3150
    iget-boolean v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-ne v3, v5, :cond_5

    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    cmpl-float v5, p3, v5

    if-lez v5, :cond_5

    return v2

    :cond_5
    if-nez p4, :cond_9

    float-to-int v5, p2

    float-to-int v6, p3

    .line 3152
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-ne v3, v4, :cond_7

    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getRecordCircle()Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v4

    if-ne v3, v4, :cond_9

    :cond_8
    return v2

    .line 3154
    :cond_9
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_a

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

    if-eqz v3, :cond_a

    return v2

    :cond_a
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
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

    .line 3071
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCurrentPeer()J
    .locals 2

    .line 3067
    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    return-wide v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 3084
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    return v0
.end method

.method public getStoriesCount()I
    .locals 3

    .line 3588
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
            "Lorg/telegram/tgnet/TLRPC$StoryItem;",
            ">;"
        }
    .end annotation

    .line 3347
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;
    .locals 1

    .line 164
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

    .line 4417
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4419
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showEmojiView()V

    .line 4421
    :cond_0
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    const-wide/16 v2, 0x12c

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return v0
.end method

.method public onActionDown(Landroid/view/MotionEvent;)V
    .locals 4

    .line 3362
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 3363
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

    .line 3364
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->hitButton(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3366
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 3368
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 3369
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

    .line 3370
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->hitButton(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3372
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

    .line 3251
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showAttachmentError()V

    return-void

    .line 3254
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3255
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->sendUriAsDocument(Landroid/net/Uri;)V

    goto :goto_1

    .line 3256
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3257
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    const/4 p2, 0x0

    .line 3258
    :goto_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result p3

    if-ge p2, p3, :cond_4

    .line 3259
    invoke-virtual {p1, p2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->sendUriAsDocument(Landroid/net/Uri;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 3262
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showAttachmentError()V

    .line 3264
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz p1, :cond_5

    .line 3265
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    .line 3267
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->afterMessageSend()V

    goto :goto_3

    .line 3245
    :cond_6
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createChatAttachView()V

    .line 3246
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz p2, :cond_7

    .line 3247
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->onActivityResultFragment(ILandroid/content/Intent;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 2342
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2343
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->attachedToWindow:Z

    .line 2344
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 2345
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->rightPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 2346
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->leftPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 2347
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    .line 2348
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onResume()V

    .line 2351
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2352
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2353
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 2358
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2359
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->attachedToWindow:Z

    .line 2360
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 2361
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->rightPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 2362
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->leftPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 2363
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    .line 2364
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onPause()V

    .line 2367
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2368
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2369
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 2327
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onLayout(ZIIII)V

    .line 2328
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$700(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

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
    .locals 11

    .line 3817
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v0, :cond_0

    .line 3818
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3819
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3822
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareAlert:Lorg/telegram/ui/Components/ShareAlert;

    if-nez v0, :cond_1

    .line 3823
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->getKeyboardHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    goto :goto_0

    .line 3825
    :cond_1
    iput v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    .line 3828
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v0, :cond_2

    .line 3829
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_1

    .line 3831
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    add-int/2addr p2, v0

    .line 3833
    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v2, 0x41800000    # 16.0f

    int-to-float v0, v0

    mul-float/2addr v0, v2

    const/high16 v2, 0x41100000    # 9.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    if-le p2, v0, :cond_3

    if-le v0, p2, :cond_4

    :cond_3
    move v0, p2

    .line 3843
    :cond_4
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    const/16 v3, 0x14

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 3844
    iput v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    .line 3846
    :cond_5
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    .line 3847
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isWaitingForKeyboard()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3848
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    if-nez v2, :cond_7

    .line 3849
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v2

    goto :goto_2

    .line 3850
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isStickersExpanded()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3851
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkStickresExpandHeight()V

    .line 3852
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getStickersExpandedHeight()I

    move-result v2

    goto :goto_2

    .line 3854
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getVisibleEmojiPadding()I

    move-result v2

    .line 3857
    :cond_9
    :goto_2
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    .line 3858
    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastKeyboardHeight:I

    const/4 v5, 0x1

    if-eq v4, v2, :cond_14

    .line 3859
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-lez v2, :cond_a

    .line 3860
    iget-boolean v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v4, :cond_a

    .line 3861
    iput-boolean v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    .line 3862
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->messageSent:Z

    .line 3863
    iput v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastOpenedKeyboardHeight:I

    .line 3864
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkReactionsLayout()V

    .line 3865
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->dismissAll()V

    .line 3867
    :cond_a
    iget-boolean v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v4, :cond_b

    .line 3868
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3870
    :cond_b
    iget-boolean v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-nez v4, :cond_c

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v4, :cond_c

    .line 3871
    invoke-virtual {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reset()V

    .line 3873
    :cond_c
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-boolean v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    xor-int/2addr v6, v5

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 3874
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    iget-boolean v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    xor-int/2addr v6, v5

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3875
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v4, :cond_d

    .line 3876
    iget-boolean v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    xor-int/2addr v6, v5

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkReactionsButton(Z)V

    .line 3878
    :cond_d
    iget-boolean v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v4, :cond_e

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eqz v4, :cond_e

    .line 3879
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v4, v5}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setKeyboardVisible(Z)V

    .line 3881
    :cond_e
    iput v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastKeyboardHeight:I

    .line 3882
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_f

    .line 3883
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3885
    :cond_f
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v4}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    const/4 v4, 0x2

    new-array v4, v4, [F

    .line 3886
    iget v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    aput v6, v4, v1

    int-to-float v6, v2

    aput v6, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    .line 3887
    new-instance v6, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3891
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lorg/telegram/ui/Stories/PeerStoriesView$23;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$23;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3910
    iget-boolean v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eqz v4, :cond_10

    .line 3911
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0xfa

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3912
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    sget-object v6, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3913
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/StoryViewer;->cancelSwipeToReply()V

    goto :goto_3

    .line 3915
    :cond_10
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3916
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3919
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 3921
    iget-boolean v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eq v4, v3, :cond_13

    if-eqz v4, :cond_11

    .line 3923
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BitmapShaderTools;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BitmapShaderTools;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->createBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 3925
    :cond_11
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v3, :cond_12

    .line 3926
    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->clearFocus()V

    .line 3929
    :cond_12
    :goto_4
    iput-boolean v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animateKeyboardOpening:Z

    goto :goto_5

    .line 3931
    :cond_13
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animateKeyboardOpening:Z

    .line 3934
    :cond_14
    :goto_5
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 3935
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x50

    .line 3936
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3938
    :cond_15
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 3939
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int v4, p2, v0

    const/16 v6, 0x40

    .line 3940
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    if-le v4, v7, :cond_16

    move v4, v5

    goto :goto_6

    :cond_16
    move v4, v1

    :goto_6
    iput-boolean v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eqz v4, :cond_17

    .line 3941
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    goto :goto_7

    :cond_17
    move v4, v1

    :goto_7
    add-int/2addr v4, v0

    sub-int v4, p2, v4

    shr-int/2addr v4, v5

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3942
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eqz v3, :cond_18

    neg-int v3, v4

    add-int/2addr v3, p2

    sub-int/2addr v3, v0

    .line 3943
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v3, v7

    iput v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->enterViewBottomOffset:I

    goto :goto_8

    :cond_18
    neg-int v3, v4

    add-int/2addr v3, p2

    sub-int/2addr v3, v0

    .line 3945
    iput v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->enterViewBottomOffset:I

    .line 3947
    :goto_8
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    const/16 v7, 0x30

    const/16 v8, 0x8

    if-eqz v3, :cond_1a

    .line 3948
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 3949
    iget-boolean v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eqz v9, :cond_19

    add-int v9, v4, v0

    .line 3950
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_9

    :cond_19
    add-int v9, v4, v0

    .line 3952
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3956
    :cond_1a
    :goto_9
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_1c

    .line 3957
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 3958
    iget-boolean v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    const/16 v10, 0x18

    if-eqz v9, :cond_1b

    add-int v7, v4, v0

    .line 3959
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v7, v9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v7, v9

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_a

    :cond_1b
    add-int v9, v4, v0

    .line 3961
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v9, v7

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v9, v7

    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3964
    :cond_1c
    :goto_a
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    if-eqz v3, :cond_1e

    .line 3965
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v2, :cond_1d

    add-int v2, v4, v0

    .line 3967
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v2, v7

    sub-int v2, p2, v2

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_b

    .line 3969
    :cond_1d
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v2, v7

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 3973
    :cond_1e
    :goto_b
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    const/16 v3, 0xc

    const/16 v7, 0x28

    if-nez v2, :cond_20

    .line 3974
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    add-int/2addr v4, v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v4, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v4, v0

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3975
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v0, :cond_1f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_c

    :cond_1f
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 3976
    :goto_c
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 3977
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iput v0, v2, Lorg/telegram/ui/Stories/StoryCaptionView;->blackoutBottomOffset:I

    goto :goto_d

    .line 3979
    :cond_20
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    add-int/2addr v4, v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v4, v0

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3980
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 3981
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView;->blackoutBottomOffset:I

    .line 3984
    :goto_d
    iput-boolean v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 3986
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 3990
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_21

    const/16 v2, 0x3c

    .line 3991
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 3993
    :cond_21
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_22

    .line 3994
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 3996
    :cond_22
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 3997
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    int-to-float v3, v3

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_23

    float-to-int v0, v0

    .line 3998
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 3999
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->access$6500(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)[Landroid/widget/TextView;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 4000
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 4001
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->access$6500(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 4002
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 4003
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->forceLayout()V

    :cond_23
    const/high16 v0, 0x40000000    # 2.0f

    .line 4005
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 4011
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 4012
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    const/4 p1, 0x1

    .line 4013
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 4014
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public preloadMainImage(J)V
    .locals 2

    .line 2127
    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 2130
    :cond_0
    iput-wide p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    .line 2131
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStoryItems()V

    .line 2132
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateSelectedPosition()V

    const/4 v0, 0x1

    .line 2133
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition(Z)V

    .line 2134
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->overrideUserStories:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    if-eqz v1, :cond_1

    .line 2135
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Stories/StoriesController;->loadSkippedStories(Lorg/telegram/tgnet/TLRPC$TL_userStories;Z)V

    goto :goto_0

    .line 2137
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->loadSkippedStories(J)V

    :goto_0
    return-void
.end method

.method public progressToDismissUpdated()V
    .locals 1

    .line 3215
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eqz v0, :cond_0

    .line 3216
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .line 3221
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 3222
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->changeBoundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 3223
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->reset()V

    .line 3224
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3226
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_1

    .line 3227
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reset()V

    .line 3229
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 3230
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 3231
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->hideCamera(Z)V

    .line 3232
    iput-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    :cond_2
    const/4 v0, 0x0

    .line 3234
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->setActive(Z)V

    .line 3235
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->setIsVisible(Z)V

    .line 3236
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isLongPressed:Z

    .line 3237
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 3238
    iput-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 3239
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->messageSent:Z

    return-void
.end method

.method public selectPosition(I)V
    .locals 1

    .line 3351
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    if-eq v0, p1, :cond_0

    .line 3352
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    .line 3353
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    :cond_0
    return-void
.end method

.method public setAccount(I)V
    .locals 1

    .line 3162
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    .line 3163
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    .line 3164
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_0

    .line 3165
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setCurrentAccount(I)V

    .line 3166
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    :cond_0
    return-void
.end method

.method public setActive(JZ)V
    .locals 4

    .line 3176
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eq v0, p3, :cond_6

    .line 3177
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

    .line 3178
    iput-boolean p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 3181
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->useSurfaceInViewPagerWorkAround()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 3182
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p3, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsSwiping(Z)V

    .line 3183
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurfaceRunnable:Ljava/lang/Runnable;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3184
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurfaceRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-static {p3, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 3186
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->requestVideoPlayer(J)V

    .line 3187
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePreloadImages()V

    .line 3188
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object p2, p2, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 3189
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    goto :goto_1

    .line 3193
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->clearAnimationDrawable()V

    const/4 p1, 0x0

    .line 3194
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 3195
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isLongPressed:Z

    .line 3196
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 3197
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 3198
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 3199
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->cancelWaiting()V

    .line 3200
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsRecording(Z)V

    .line 3205
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    const/4 p3, 0x2

    if-eqz p2, :cond_3

    const/4 p2, 0x3

    goto :goto_2

    :cond_3
    move p2, p3

    :goto_2
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    .line 3206
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->leftPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz p2, :cond_4

    move p2, p3

    goto :goto_3

    :cond_4
    move p2, v0

    :goto_3
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    .line 3207
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->rightPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz p2, :cond_5

    move v0, p3

    :cond_5
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    .line 3208
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz p1, :cond_6

    .line 3209
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->pollViewsForSelfStories(Z)V

    :cond_6
    return-void
.end method

.method public setActive(Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3171
    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->setActive(JZ)V

    return-void
.end method

.method public setDay(JLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1960
    iput-wide p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    .line 1961
    iput-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    .line 1962
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->bindInternal()V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;)V
    .locals 0

    .line 3023
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    return-void
.end method

.method public setDialogId(J)V
    .locals 2

    .line 1966
    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 1967
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->clear()V

    .line 1969
    :cond_0
    iput-wide p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const/4 v0, 0x0

    .line 1970
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    .line 1971
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->bindInternal()V

    .line 1972
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->overrideUserStories:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    if-eqz v0, :cond_1

    .line 1973
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Stories/StoriesController;->loadSkippedStories(Lorg/telegram/tgnet/TLRPC$TL_userStories;Z)V

    goto :goto_0

    .line 1975
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->loadSkippedStories(J)V

    :goto_0
    return-void
.end method

.method public setIsVisible(Z)V
    .locals 1

    .line 3337
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 3340
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isVisible:Z

    if-eqz p1, :cond_1

    .line 3342
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAlpha(F)V

    :cond_1
    return-void
.end method

.method public setLongpressed(Z)V
    .locals 1

    .line 3320
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v0, :cond_0

    .line 3321
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isLongPressed:Z

    .line 3322
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

    .line 3395
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurface:Z

    if-eq v1, p1, :cond_2

    .line 3396
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurface:Z

    .line 3397
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 3398
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v1, :cond_2

    .line 3399
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->useSurfaceInViewPagerWorkAround()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 3401
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurfaceRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3402
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurfaceRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 3404
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurfaceRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3405
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsSwiping(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setPaused(Z)V
    .locals 2

    .line 3075
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->paused:Z

    if-eq v0, p1, :cond_0

    .line 3076
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->paused:Z

    .line 3077
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->stopPlaying(Z)V

    const-wide/16 v0, 0x0

    .line 3078
    iput-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastDrawTime:J

    .line 3079
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setViewsThumbImageReceiver(FLorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    .line 4429
    iput-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 4430
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbAlpha:F

    return-void
.end method

.method public showKeyboard()V
    .locals 1

    .line 3327
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3328
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method public showNoSoundHint()V
    .locals 1

    .line 3418
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->callOnClick()Z

    return-void
.end method

.method public stopPlaying(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3058
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->stopAnimation()V

    .line 3059
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    goto :goto_0

    .line 3061
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    .line 3062
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    :goto_0
    return-void
.end method

.method public switchToNext(Z)Z
    .locals 2

    .line 3003
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->reversed:Z

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 3007
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoriesCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ge p1, v1, :cond_2

    .line 3008
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    .line 3009
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    return v0

    .line 3013
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    if-lez p1, :cond_2

    sub-int/2addr p1, v0

    .line 3014
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    .line 3015
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public updatePosition()V
    .locals 1

    const/4 v0, 0x0

    .line 2409
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition(Z)V

    return-void
.end method

.method public useSurfaceInViewPagerWorkAround()Z
    .locals 2

    .line 3414
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
