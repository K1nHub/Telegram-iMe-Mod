.class public Lorg/telegram/ui/Stories/StoryViewer;
.super Ljava/lang/Object;
.source "StoryViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;,
        Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;,
        Lorg/telegram/ui/Stories/StoryViewer$HolderClip;,
        Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;,
        Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;
    }
.end annotation


# static fields
.field public static animationInProgress:Z

.field private static checkSilentMode:Z

.field public static globalInstances:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/StoryViewer;",
            ">;"
        }
    .end annotation
.end field

.field private static isInSilentMode:Z

.field private static lastStoryItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

.field private static runOpenAnimationAfterLayout:Z


# instance fields
.field public ATTACH_TO_FRAGMENT:Z

.field public USE_SURFACE_VIEW:Z

.field allowIntercept:Z

.field public allowScreenshots:Z

.field allowSelfStoriesView:Z

.field allowSwipeToDissmiss:Z

.field allowSwipeToReply:Z

.field private allowTouchesByViewpager:Z

.field private animateAvatar:Z

.field animateFromCell:Lorg/telegram/ui/Stories/StoriesListPlaceProvider$AvatarOverlaysView;

.field aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field avatarRectTmp:Landroid/graphics/RectF;

.field clipBottom:F

.field clipTop:F

.field containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

.field public currentAccount:I

.field currentDialog:Landroid/app/Dialog;

.field currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

.field public dayStoryId:I

.field private delayedTapRunnable:Ljava/lang/Runnable;

.field doOnAnimationReady:Ljava/lang/Runnable;

.field private flingCalled:Z

.field public foundViewToClose:Z

.field fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field fromDismissOffset:F

.field fromHeight:F

.field private fromRadius:I

.field fromWidth:F

.field fromX:F

.field fromXCell:F

.field fromY:F

.field fromYCell:F

.field private fullyVisible:Z

.field gestureDetector:Landroid/view/GestureDetector;

.field private hideEnterViewProgress:F

.field inSwipeToDissmissMode:Z

.field private invalidateOutRect:Z

.field private isBulletinVisible:Z

.field private isCaption:Z

.field private isCaptionPartVisible:Z

.field private isClosed:Z

.field private isHintVisible:Z

.field private isInPinchToZoom:Z

.field private isInTouchMode:Z

.field public isLongpressed:Z

.field private isOverlayVisible:Z

.field private isPopupVisible:Z

.field private isRecording:Z

.field isShowing:Z

.field isSingleStory:Z

.field private isSwiping:Z

.field private isWaiting:Z

.field keyboardVisible:Z

.field lastDialogId:J

.field lastPosition:I

.field lastUri:Landroid/net/Uri;

.field locker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field longPressRunnable:Ljava/lang/Runnable;

.field private messageId:I

.field private onCloseListener:Ljava/lang/Runnable;

.field openCloseAnimator:Landroid/animation/ValueAnimator;

.field openedFromLightNavigationBar:Z

.field overrideUserStories:Lorg/telegram/tgnet/TLRPC$TL_userStories;

.field private placeProvider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

.field playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

.field playerStubBitmap:Landroid/graphics/Bitmap;

.field public playerStubPaint:Landroid/graphics/Paint;

.field pointPosition:[F

.field preparedPlayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;",
            ">;"
        }
    .end annotation
.end field

.field progressToDismiss:F

.field progressToOpen:F

.field private realKeyboardHeight:I

.field resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field reversed:Z

.field public savedPositions:Lorg/telegram/messenger/support/LongSparseIntArray;

.field selfStoriesViewsOffset:F

.field selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

.field singleStory:Lorg/telegram/tgnet/TLRPC$StoryItem;

.field storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

.field public storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

.field private surfaceView:Landroid/view/SurfaceView;

.field swipeToDismissHorizontalDirection:F

.field swipeToDismissHorizontalOffset:F

.field swipeToDismissOffset:F

.field swipeToDissmissBackAnimator:Landroid/animation/ValueAnimator;

.field swipeToReplyBackAnimator:Landroid/animation/ValueAnimator;

.field swipeToReplyOffset:F

.field swipeToReplyProgress:F

.field swipeToReplyWaitingKeyboard:Z

.field swipeToViewsAnimator:Landroid/animation/ValueAnimator;

.field private textureView:Landroid/view/TextureView;

.field public final transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

.field public unreadStateChanged:Z

.field private volumeControl:Lorg/telegram/ui/Stories/StoriesVolumeContorl;

.field windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field windowManager:Landroid/view/WindowManager;

.field public windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;


# direct methods
.method public static synthetic $r8$lambda$027lMwwoNyL4hrstvnd7jx5WQe4(Lorg/telegram/ui/Stories/StoryViewer;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$cancelSwipeToViews$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2tt6cToGbfQsfqMZNP2fo_j1cNI(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$showKeyboard$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$GgA0oDMgoiaocrY5p8USBZzdiIc(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$startCloseAnimation$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$ICRjNfeiRzT6UzfP-9z9Y8mbfIs(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$layoutAndFindView$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$T5iDHNSvFlQs0Csr8b_3NNSdXu4(Lorg/telegram/ui/Stories/StoryViewer;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$cancelSwipeToReply$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XlkY-9OjoYbYVkiyiCyiRRI7WoI(Lorg/telegram/ui/Stories/StoryViewer;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$startOpenAnimation$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Dq4ExTP88R5fywZo5gUYwDdqVY(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$gShTQgnmk05hVjtAqKo1TeOqeqk(Lorg/telegram/ui/Stories/StoryViewer;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$startCloseAnimation$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nJ55RyNWXA040ktFp8pZt8FvI5U(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$openViews$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$uASc-fcclc-L1s0OLzkItSXY25k(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$showDialog$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoryViewer;->globalInstances:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 198
    sput-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->checkSilentMode:Z

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useSurfaceInStories:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    const/4 v1, 0x0

    .line 85
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->foundViewToClose:Z

    .line 88
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowScreenshots:Z

    .line 103
    new-instance v2, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v2}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 123
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->avatarRectTmp:Landroid/graphics/RectF;

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 147
    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->pointPosition:[F

    .line 152
    new-instance v2, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    invoke-direct {v2}, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    .line 155
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowTouchesByViewpager:Z

    .line 171
    new-instance v1, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->locker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    .line 194
    new-instance v1, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->longPressRunnable:Ljava/lang/Runnable;

    .line 201
    new-instance v1, Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-direct {v1}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->savedPositions:Lorg/telegram/messenger/support/LongSparseIntArray;

    .line 242
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 243
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->flingCalled:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->flingCalled:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/StoryViewer;Landroid/widget/FrameLayout;FFZ)Z
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/StoryViewer;->findClickableView(Landroid/widget/FrameLayout;FFZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->invalidateOutRect:Z

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->invalidateOutRect:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesVolumeContorl;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->volumeControl:Lorg/telegram/ui/Stories/StoriesVolumeContorl;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isClosed:Z

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Stories/StoryViewer;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromRadius:I

    return p0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .line 79
    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->runOpenAnimationAfterLayout:Z

    return v0
.end method

.method static synthetic access$1402(Z)Z
    .locals 0

    .line 79
    sput-boolean p0, Lorg/telegram/ui/Stories/StoryViewer;->runOpenAnimationAfterLayout:Z

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->startOpenAnimation()V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Stories/StoryViewer;Z)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->setInTouchMode(Z)V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Stories/StoryViewer;Z)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->setLongPressed(Z)V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isRecording:Z

    return p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isRecording:Z

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isInTouchMode:Z

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isCaption:Z

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Stories/StoryViewer;)Ljava/lang/Runnable;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->delayedTapRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Stories/StoryViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->delayedTapRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isCaption:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->checkSelfStoriesView()V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->layoutAndFindView()V

    return-void
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/KeyEvent;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->dispatchVolumeEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Stories/StoryViewer;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->realKeyboardHeight:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Stories/StoryViewer;)F
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->hideEnterViewProgress:F

    return p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Stories/StoryViewer;F)F
    .locals 0

    .line 79
    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->hideEnterViewProgress:F

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Stories/StoryViewer;Z)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->requestAdjust(Z)V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowTouchesByViewpager:Z

    return p0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowTouchesByViewpager:Z

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/TextureView;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->textureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/SurfaceView;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->surfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isCaptionPartVisible:Z

    return p0
.end method

.method static synthetic access$3000()Z
    .locals 1

    .line 79
    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->isInSilentMode:Z

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isCaptionPartVisible:Z

    return p1
.end method

.method static synthetic access$3102(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isWaiting:Z

    return p1
.end method

.method static synthetic access$3202(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isPopupVisible:Z

    return p1
.end method

.method static synthetic access$3302(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isBulletinVisible:Z

    return p1
.end method

.method static synthetic access$3402(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isInPinchToZoom:Z

    return p1
.end method

.method static synthetic access$3502(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isSwiping:Z

    return p1
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Stories/StoryViewer;)Ljava/lang/Runnable;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->onCloseListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3702(Lorg/telegram/ui/Stories/StoryViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->onCloseListener:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isHintVisible:Z

    return p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isHintVisible:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->showKeyboard()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updateProgressToDismiss()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stories/StoryViewer;)F
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->getBlackoutAlpha()F

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fullyVisible:Z

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fullyVisible:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->animateAvatar:Z

    return p0
.end method

.method private checkInSilentMode()V
    .locals 3

    .line 1628
    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->checkSilentMode:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1629
    sput-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->checkSilentMode:Z

    .line 1630
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1631
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->isInSilentMode:Z

    :cond_1
    return-void
.end method

.method private checkSelfStoriesView()V
    .locals 3

    .line 1497
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    if-nez v0, :cond_0

    .line 1498
    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    .line 1499
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 1501
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    .line 1502
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoryItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getSelectedPosition()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Stories/SelfStoryViewsView;->setItems(Ljava/util/ArrayList;I)V

    return-void
.end method

.method public static closeGlobalInstances()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 222
    :goto_0
    sget-object v2, Lorg/telegram/ui/Stories/StoryViewer;->globalInstances:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 223
    sget-object v2, Lorg/telegram/ui/Stories/StoryViewer;->globalInstances:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/StoryViewer;->globalInstances:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private dispatchVolumeEvent(Landroid/view/KeyEvent;)V
    .locals 2

    .line 1603
    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->isInSilentMode:Z

    if-eqz v0, :cond_0

    .line 1604
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->toggleSilentMode()V

    return-void

    .line 1607
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1608
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->hasSound()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1609
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showNoSoundHint()V

    return-void

    .line 1612
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->volumeControl:Lorg/telegram/ui/Stories/StoriesVolumeContorl;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/StoriesVolumeContorl;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return-void
.end method

.method private findClickableView(Landroid/widget/FrameLayout;FFZ)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1805
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isPopupVisible:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 1808
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_2

    return v2

    .line 1811
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1815
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getX()F

    move-result v3

    sub-float v3, p2, v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    .line 1816
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getY()F

    move-result v4

    sub-float v4, p3, v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    .line 1817
    invoke-virtual {v1, v1, v3, v4, p4}, Lorg/telegram/ui/Stories/PeerStoriesView;->findClickableView(Landroid/view/ViewGroup;FFZ)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    .line 1820
    :cond_3
    iget-boolean v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eqz v3, :cond_4

    return v0

    :cond_4
    if-eqz p4, :cond_5

    return v0

    :cond_5
    if-eqz v1, :cond_6

    .line 1827
    iget-object p4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p4

    if-nez p4, :cond_6

    iget-object p4, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getY()F

    move-result p4

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getY()F

    move-result v0

    add-float/2addr p4, v0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    add-float/2addr p4, v0

    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    add-float/2addr p4, v0

    cmpl-float p4, p3, p4

    if-lez p4, :cond_6

    return v2

    :cond_6
    if-eqz v1, :cond_7

    .line 1830
    iget-object p4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p4, :cond_7

    invoke-virtual {p4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isRecordingAudioVideo()Z

    move-result p4

    if-eqz p4, :cond_7

    return v2

    .line 1833
    :cond_7
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->findClickableView(Landroid/view/ViewGroup;FF)Z

    move-result p1

    return p1
.end method

.method private getBlackoutAlpha()F
    .locals 3

    .line 2087
    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    iget v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v2, v1

    add-float/2addr v2, v1

    mul-float/2addr v0, v2

    return v0
.end method

.method public static isShowingImage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 3

    .line 215
    sget-object v0, Lorg/telegram/ui/Stories/StoryViewer;->lastStoryItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v2, 0x17

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isWebpage()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->runOpenAnimationAfterLayout:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 218
    :cond_1
    sget-object v0, Lorg/telegram/ui/Stories/StoryViewer;->lastStoryItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$StoryItem;->messageId:I

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p0

    if-ne v0, p0, :cond_2

    sget-object p0, Lorg/telegram/ui/Stories/StoryViewer;->lastStoryItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->messageType:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private synthetic lambda$cancelSwipeToReply$4(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1528
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyOffset:F

    const/16 p1, 0xc8

    .line 1529
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 1530
    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyOffset:F

    int-to-float p1, p1

    div-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyProgress:F

    .line 1533
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    if-eqz p1, :cond_0

    .line 1534
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1536
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$cancelSwipeToViews$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1471
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    .line 1472
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1473
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/HwFrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$layoutAndFindView$5()V
    .locals 3

    .line 1655
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updateTransitionParams()V

    .line 1656
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1657
    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 1659
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_1

    .line 1660
    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x1

    .line 194
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoryViewer;->setLongPressed(Z)V

    return-void
.end method

.method private synthetic lambda$openViews$9()V
    .locals 1

    const/4 v0, 0x1

    .line 2219
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowSelfStoriesView:Z

    .line 2220
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoryViewer;->cancelSwipeToViews(Z)V

    return-void
.end method

.method private synthetic lambda$showDialog$3(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1509
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 1510
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentDialog:Landroid/app/Dialog;

    .line 1511
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showKeyboard$1()V
    .locals 0

    .line 1457
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->cancelSwipeToReply()V

    return-void
.end method

.method private synthetic lambda$startCloseAnimation$7(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1971
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    .line 1972
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->checkNavBarColor()V

    .line 1973
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz p1, :cond_0

    .line 1974
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startCloseAnimation$8()V
    .locals 3

    .line 1991
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/HwFrameLayout;->enableHwAcceleration()V

    .line 1992
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/StoryViewer$11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryViewer$11;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2040
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2041
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2044
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$startOpenAnimation$6(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1880
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    .line 1881
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/HwFrameLayout;->checkHwAcceleration(F)V

    .line 1882
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->checkNavBarColor()V

    .line 1883
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz p1, :cond_0

    .line 1884
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method private layoutAndFindView()V
    .locals 5

    const/4 v0, 0x1

    .line 1636
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->foundViewToClose:Z

    .line 1637
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v1, :cond_0

    .line 1638
    invoke-virtual {v1, v0, v0}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 1640
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1641
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1642
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0, v0}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 1644
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v0, :cond_2

    .line 1645
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1647
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getSelectedPosition()I

    move-result v0

    if-ltz v0, :cond_2

    .line 1648
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1649
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->messageId:I

    .line 1653
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->placeProvider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    if-eqz v0, :cond_3

    .line 1654
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentDialogId()J

    move-result-wide v1

    iget v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->messageId:I

    new-instance v4, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;->preLayout(JILjava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method private lockOrientation(Z)V
    .locals 2

    .line 1591
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 1593
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/16 v1, 0x80

    if-eqz p1, :cond_1

    .line 1595
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    .line 1597
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private requestAdjust(Z)V
    .locals 2

    .line 1744
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1746
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustNothing(Landroid/app/Activity;I)V

    goto :goto_1

    .line 1748
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    goto :goto_1

    .line 1751
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_2

    const/16 p1, 0x30

    goto :goto_0

    :cond_2
    const/16 p1, 0x10

    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1753
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-interface {p1, v1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1755
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private setInTouchMode(Z)V
    .locals 0

    .line 1761
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isInTouchMode:Z

    if-eqz p1, :cond_0

    .line 1763
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->volumeControl:Lorg/telegram/ui/Stories/StoriesVolumeContorl;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesVolumeContorl;->hide()V

    .line 1765
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method private setLongPressed(Z)V
    .locals 1

    .line 229
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isLongpressed:Z

    if-eq v0, p1, :cond_0

    .line 230
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isLongpressed:Z

    .line 231
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    .line 232
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 235
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isLongpressed:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->setLongpressed(Z)V

    :cond_0
    return-void
.end method

.method private setNavigationButtonsColor(Z)V
    .locals 2

    .line 2118
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    .line 2119
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2121
    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->isLightNavigationBar()Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->openedFromLightNavigationBar:Z

    .line 2123
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->openedFromLightNavigationBar:Z

    if-eqz v1, :cond_1

    xor-int/lit8 p1, p1, 0x1

    .line 2124
    invoke-virtual {v0, p1}, Lorg/telegram/ui/LaunchActivity;->setLightNavigationBar(Z)V

    :cond_1
    return-void
.end method

.method private showKeyboard()V
    .locals 3

    .line 1455
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showKeyboard()V

    .line 1456
    new-instance v0, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private startCloseAnimation(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 1965
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoryViewer;->setNavigationButtonsColor(Z)V

    .line 1966
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updateTransitionParams()V

    .line 1967
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->locker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 1968
    iget v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromDismissOffset:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 1969
    iget v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    aput v2, v1, v0

    const/4 v0, 0x1

    const/4 v2, 0x0

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    .line 1970
    new-instance v3, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-nez p1, :cond_2

    .line 1978
    iput v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    iput v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    .line 1979
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p1, :cond_0

    .line 1980
    invoke-virtual {p1, v0, v0}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 1982
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p1, :cond_1

    .line 1983
    invoke-virtual {p1, v0, v0}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 1985
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    .line 1986
    iput-object v0, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    goto :goto_0

    .line 1988
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->layoutAndFindView()V

    .line 1990
    :goto_0
    new-instance p1, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    const-wide/16 v0, 0x10

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private startOpenAnimation()V
    .locals 3

    .line 1866
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updateTransitionParams()V

    const/4 v0, 0x0

    .line 1867
    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    const/4 v0, 0x1

    .line 1868
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoryViewer;->setNavigationButtonsColor(Z)V

    const/4 v1, 0x0

    .line 1869
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->foundViewToClose:Z

    .line 1870
    sput-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->animationInProgress:Z

    .line 1871
    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromDismissOffset:F

    .line 1872
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->radialProgressUpload:Lorg/telegram/ui/Components/RadialProgress;

    if-eqz v0, :cond_0

    .line 1873
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1874
    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    if-eqz v0, :cond_0

    .line 1875
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->radialProgressUpload:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgress;->copyParams(Lorg/telegram/ui/Components/RadialProgress;)V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1878
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    .line 1879
    new-instance v1, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1887
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->locker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 1888
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/HwFrameLayout;->enableHwAcceleration()V

    .line 1889
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/StoryViewer$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryViewer$10;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1916
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1917
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1918
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1919
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1921
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReady:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1922
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 1923
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReady:Ljava/lang/Runnable;

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateProgressToDismiss()V
    .locals 5

    .line 1846
    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x50

    if-eqz v2, :cond_0

    .line 1847
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v0, v1, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v0

    goto :goto_0

    .line 1849
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v0, v1, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v0

    .line 1851
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    .line 1852
    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    .line 1853
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->checkNavBarColor()V

    .line 1854
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1856
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToDismissUpdated()V

    .line 1860
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_2

    .line 1861
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_2
    return-void
.end method

.method private updateTransitionParams()V
    .locals 14

    .line 1667
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->placeProvider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    .line 1668
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 1669
    invoke-virtual {v0, v3, v3}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 1671
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1672
    invoke-virtual {v0, v4}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1673
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v3, v3}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 1675
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-nez v0, :cond_2

    move v4, v2

    goto :goto_0

    .line 1676
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getSelectedPosition()I

    move-result v4

    :goto_0
    if-eqz v0, :cond_4

    if-ltz v4, :cond_4

    .line 1677
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v2

    :goto_2
    const/4 v6, 0x0

    if-eqz v0, :cond_6

    if-ltz v4, :cond_6

    .line 1678
    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v4, v7, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$StoryItem;

    goto :goto_4

    :cond_6
    :goto_3
    move-object v0, v6

    :goto_4
    if-nez v0, :cond_7

    .line 1679
    iget-boolean v4, p0, Lorg/telegram/ui/Stories/StoryViewer;->isSingleStory:Z

    if-eqz v4, :cond_7

    .line 1680
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->singleStory:Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 1682
    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clear()V

    .line 1683
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryViewer;->placeProvider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentDialogId()J

    move-result-wide v8

    iget v10, p0, Lorg/telegram/ui/Stories/StoryViewer;->messageId:I

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v4, :cond_8

    iget v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    :cond_8
    move v11, v5

    if-nez v0, :cond_9

    const/4 v0, -0x1

    goto :goto_5

    :cond_9
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$StoryItem;->messageType:I

    :goto_5
    move v12, v0

    iget-object v13, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    invoke-interface/range {v7 .. v13}, Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;->findView(JIIILorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1684
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_10

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 1686
    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1687
    aget v0, v4, v2

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromXCell:F

    .line 1688
    aget v0, v4, v3

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromYCell:F

    .line 1689
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    instance-of v7, v5, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$AvatarOverlaysView;

    if-eqz v7, :cond_a

    .line 1690
    check-cast v5, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$AvatarOverlaysView;

    iput-object v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->animateFromCell:Lorg/telegram/ui/Stories/StoriesListPlaceProvider$AvatarOverlaysView;

    goto :goto_6

    .line 1692
    :cond_a
    iput-object v6, p0, Lorg/telegram/ui/Stories/StoryViewer;->animateFromCell:Lorg/telegram/ui/Stories/StoriesListPlaceProvider$AvatarOverlaysView;

    .line 1694
    :goto_6
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->animateAvatar:Z

    .line 1695
    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v5, :cond_d

    .line 1696
    aget v0, v4, v2

    int-to-float v0, v0

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v2

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    .line 1697
    aget v0, v4, v3

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v2

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    .line 1698
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromWidth:F

    .line 1699
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromHeight:F

    .line 1700
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    if-eqz v0, :cond_b

    .line 1701
    iget v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromWidth:F

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->getScale()F

    move-result v0

    mul-float/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromWidth:F

    .line 1702
    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromHeight:F

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->getScale()F

    move-result v2

    mul-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromHeight:F

    .line 1704
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_c

    .line 1705
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1706
    iget v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    iget v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, v5, v6

    sub-float/2addr v2, v7

    iput v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    .line 1707
    iget v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    iget v7, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromHeight:F

    div-float/2addr v7, v6

    sub-float/2addr v2, v7

    iput v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    .line 1708
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v2

    mul-float/2addr v5, v2

    iput v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromWidth:F

    .line 1709
    iget v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromHeight:F

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    mul-float/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromHeight:F

    .line 1710
    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    iget v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromWidth:F

    div-float/2addr v5, v6

    add-float/2addr v0, v5

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    .line 1711
    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    div-float/2addr v2, v6

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    .line 1713
    :cond_c
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->animateAvatar:Z

    goto :goto_7

    .line 1714
    :cond_d
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_e

    .line 1715
    aget v5, v4, v2

    int-to-float v5, v5

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v0

    add-float/2addr v5, v0

    iput v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    .line 1716
    aget v0, v4, v3

    int-to-float v0, v0

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v5

    add-float/2addr v0, v5

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    .line 1717
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromWidth:F

    .line 1718
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromHeight:F

    .line 1719
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v0

    aget v0, v0, v2

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromRadius:I

    .line 1722
    :cond_e
    :goto_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1723
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget v2, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipTop:F

    cmpl-float v5, v2, v1

    if-nez v5, :cond_f

    iget v5, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipBottom:F

    cmpl-float v5, v5, v1

    if-nez v5, :cond_f

    .line 1724
    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->clipTop:F

    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->clipBottom:F

    goto :goto_8

    .line 1726
    :cond_f
    aget v1, v4, v3

    int-to-float v1, v1

    add-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->clipTop:F

    .line 1727
    aget v1, v4, v3

    int-to-float v1, v1

    iget v0, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipBottom:F

    add-float/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->clipBottom:F

    goto :goto_8

    .line 1730
    :cond_10
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->animateAvatar:Z

    .line 1731
    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    goto :goto_8

    .line 1734
    :cond_11
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->animateAvatar:Z

    .line 1735
    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    goto :goto_8

    .line 1738
    :cond_12
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->animateAvatar:Z

    .line 1739
    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    :goto_8
    return-void
.end method


# virtual methods
.method public allowScreenshots(Z)V
    .locals 2

    .line 2230
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_0

    return-void

    .line 2233
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowScreenshots:Z

    if-eq v0, p1, :cond_5

    .line 2234
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowScreenshots:Z

    .line 2236
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    xor-int/lit8 v1, p1, 0x1

    .line 2237
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setSecure(Z)V

    .line 2239
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    const/16 v1, 0x2000

    if-eqz v0, :cond_3

    .line 2240
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_2

    .line 2242
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1

    .line 2244
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 2249
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 2251
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2254
    :goto_0
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2256
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public attachedToParent()Z
    .locals 2

    .line 2130
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2131
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public cancelSwipeToReply()V
    .locals 3

    .line 1523
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyBackAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1524
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->inSwipeToDissmissMode:Z

    .line 1525
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowSwipeToReply:Z

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 1526
    iget v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyOffset:F

    aput v2, v1, v0

    const/4 v0, 0x1

    const/4 v2, 0x0

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyBackAnimator:Landroid/animation/ValueAnimator;

    .line 1527
    new-instance v1, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1541
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/StoryViewer$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryViewer$9;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1558
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyBackAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1559
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyBackAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1560
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public cancelSwipeToViews(Z)V
    .locals 4

    .line 1464
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToViewsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    .line 1467
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowSelfStoriesView:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 1468
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->locker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    .line 1469
    iget v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    aput v3, v0, v2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsView;->maxSelfStoriesViewsOffset:F

    :cond_2
    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToViewsAnimator:Landroid/animation/ValueAnimator;

    .line 1470
    new-instance v1, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1475
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToViewsAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/StoryViewer$8;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/StoryViewer$8;-><init>(Lorg/telegram/ui/Stories/StoryViewer;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x15e

    if-eqz p1, :cond_3

    .line 1486
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToViewsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1487
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToViewsAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 1489
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToViewsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1490
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToViewsAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1492
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToViewsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return-void
.end method

.method public checkNavBarColor()V
    .locals 3

    .line 2107
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2108
    invoke-virtual {v0, v1, v2, v1, v2}, Lorg/telegram/ui/LaunchActivity;->checkSystemBarColors(ZZZZ)V

    :cond_0
    return-void
.end method

.method public close(Z)V
    .locals 1

    .line 2071
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 2072
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isClosed:Z

    .line 2073
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->invalidateOutRect:Z

    .line 2074
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    .line 2075
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->startCloseAnimation(Z)V

    .line 2076
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->unreadStateChanged:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2077
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->unreadStateChanged:Z

    :cond_0
    return-void
.end method

.method public closeKeyboardOrEmoji()Z
    .locals 1

    .line 1837
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1839
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->closeKeyboardOrEmoji()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dismissVisibleDialogs()V
    .locals 2

    .line 2188
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2189
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2191
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2193
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2194
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismiss()V

    .line 2196
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareAlert:Lorg/telegram/ui/Components/ShareAlert;

    if-eqz v1, :cond_2

    .line 2197
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    .line 2199
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->needEnterText()Z

    :cond_3
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2

    .line 2182
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    .line 2183
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->dispatchVolumeEvent(Landroid/view/KeyEvent;)V

    :cond_1
    return-void
.end method

.method public doOnAnimationReady(Ljava/lang/Runnable;)V
    .locals 0

    .line 2276
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReady:Ljava/lang/Runnable;

    return-void
.end method

.method public getContainerForBulletin()Landroid/widget/FrameLayout;
    .locals 1

    .line 2166
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getContainerView()Landroid/widget/FrameLayout;
    .locals 1

    .line 2162
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    return-object v0
.end method

.method public getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;
    .locals 1

    .line 1584
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1587
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationBarColor(I)I
    .locals 2

    .line 2083
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->getBlackoutAlpha()F

    move-result v0

    const/high16 v1, -0x1000000

    invoke-static {p1, v1, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    return p1
.end method

.method public getProgressToSelfViews()F
    .locals 1

    .line 2204
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2207
    :cond_0
    iget v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->progressToOpen:F

    return v0
.end method

.method public getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 2158
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object v0
.end method

.method public getStoryRect(Landroid/graphics/RectF;)Z
    .locals 7

    .line 1565
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1568
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1569
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 1572
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    .line 1573
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    .line 1574
    :goto_1
    iget v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    add-float/2addr v3, v1

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    .line 1575
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getX()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    add-float/2addr v4, v2

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    .line 1576
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getY()F

    move-result v5

    add-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    add-float/2addr v1, v5

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    .line 1577
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v1, v5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v1, v5

    iget v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    add-float/2addr v2, v5

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    .line 1578
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v2, v5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v0

    sub-int/2addr v5, v0

    int-to-float v0, v5

    sub-float/2addr v2, v0

    .line 1574
    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    return v1
.end method

.method public instantClose()V
    .locals 3

    .line 1928
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isShowing:Z

    if-nez v0, :cond_0

    return-void

    .line 1931
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 1932
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isClosed:Z

    .line 1933
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    const/4 v1, 0x0

    .line 1934
    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    .line 1935
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v1, :cond_1

    .line 1936
    invoke-virtual {v1, v0, v0}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 1938
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v1, :cond_2

    .line 1939
    invoke-virtual {v1, v0, v0}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 1941
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    .line 1942
    iput-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 1943
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/HwFrameLayout;->disableHwAcceleration()V

    .line 1944
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->checkNavBarColor()V

    .line 1945
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->locker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    .line 1946
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    if-eqz v0, :cond_3

    .line 1947
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->invalidate()V

    .line 1949
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->release()V

    .line 1950
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v0, :cond_4

    .line 1951
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    goto :goto_0

    .line 1953
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1955
    :goto_0
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v0, 0x0

    .line 1956
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isShowing:Z

    .line 1957
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->foundViewToClose:Z

    .line 1958
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->onCloseListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    .line 1959
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1960
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->onCloseListener:Ljava/lang/Runnable;

    :cond_5
    return-void
.end method

.method public isFullyVisible()Z
    .locals 1

    .line 2145
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fullyVisible:Z

    return v0
.end method

.method public isPaused()Z
    .locals 2

    .line 1778
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isPopupVisible:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isBulletinVisible:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isCaption:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isWaiting:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isInTouchMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->keyboardVisible:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentDialog:Landroid/app/Dialog;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowTouchesByViewpager:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isClosed:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isRecording:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isHintVisible:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isSwiping:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isOverlayVisible:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isShown()Z
    .locals 1

    .line 2103
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isClosed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 2177
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    .line 2178
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 2091
    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2092
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoryViewer;->cancelSwipeToViews(Z)V

    return v1

    .line 2094
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->closeKeyboardOrEmoji()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 2097
    :cond_1
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    return v1
.end method

.method public open(Landroid/content/Context;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V
    .locals 10

    .line 268
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    .line 269
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 270
    iget-wide v0, p3, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->userId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    iput p2, p0, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    move-object v8, p4

    .line 272
    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/TLRPC$TL_userStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V

    return-void
.end method

.method public open(Landroid/content/Context;JLorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V
    .locals 10

    .line 259
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    .line 261
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 262
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/Stories/StoriesController;->checkExpiredStories(J)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v8, p4

    .line 264
    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/TLRPC$TL_userStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V

    return-void
.end method

.method public open(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StoryItem;ILorg/telegram/ui/Stories/StoriesController$StoriesList;ZLorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V
    .locals 10

    move-object v9, p0

    .line 286
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, v9, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    .line 287
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v5, p4

    .line 288
    iget-wide v0, v5, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->userId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, p3

    .line 289
    iput v0, v9, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v7, p6

    move v8, p5

    .line 290
    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/TLRPC$TL_userStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V

    return-void
.end method

.method public open(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/TLRPC$TL_userStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/tgnet/TLRPC$StoryItem;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;I",
            "Lorg/telegram/ui/Stories/StoriesController$StoriesList;",
            "Lorg/telegram/tgnet/TLRPC$TL_userStories;",
            "Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    if-nez v1, :cond_0

    return-void

    .line 298
    :cond_0
    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_1

    .line 299
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v6, 0x0

    .line 300
    iput-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    .line 302
    :cond_1
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->isShowing:Z

    if-eqz v6, :cond_2

    return-void

    .line 305
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    iput-boolean v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    .line 306
    sget-boolean v8, Lorg/telegram/messenger/SharedConfig;->useSurfaceInStories:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    if-eqz v6, :cond_3

    move v6, v7

    goto :goto_0

    :cond_3
    move v6, v9

    :goto_0
    iput-boolean v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    if-nez v2, :cond_4

    move v6, v9

    goto :goto_1

    .line 307
    :cond_4
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->messageId:I

    :goto_1
    iput v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->messageId:I

    if-eqz v2, :cond_5

    if-nez v4, :cond_5

    if-nez v5, :cond_5

    move v6, v7

    goto :goto_2

    :cond_5
    move v6, v9

    .line 308
    :goto_2
    iput-boolean v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->isSingleStory:Z

    if-eqz v2, :cond_6

    .line 310
    iput-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->singleStory:Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 311
    sput-object v2, Lorg/telegram/ui/Stories/StoryViewer;->lastStoryItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 313
    :cond_6
    iput-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    .line 314
    iput-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer;->overrideUserStories:Lorg/telegram/tgnet/TLRPC$TL_userStories;

    move-object/from16 v2, p7

    .line 315
    iput-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->placeProvider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    move/from16 v2, p8

    .line 316
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->reversed:Z

    .line 317
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    const/4 v2, 0x0

    .line 318
    iput v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    .line 319
    iput v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    .line 320
    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    if-eqz v5, :cond_7

    .line 321
    invoke-virtual {v5, v2}, Lorg/telegram/ui/Stories/StoriesViewPager;->setHorizontalProgressToDismiss(F)V

    .line 323
    :cond_7
    iput v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyProgress:F

    .line 324
    iput v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyOffset:F

    .line 325
    iput-boolean v9, v0, Lorg/telegram/ui/Stories/StoryViewer;->allowSwipeToReply:Z

    .line 326
    iput v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    .line 327
    iput-boolean v7, v0, Lorg/telegram/ui/Stories/StoryViewer;->isShowing:Z

    .line 328
    iput-boolean v9, v0, Lorg/telegram/ui/Stories/StoryViewer;->isLongpressed:Z

    .line 329
    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer;->savedPositions:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/LongSparseIntArray;->clear()V

    .line 330
    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 331
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x1

    .line 332
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v8, -0x3

    .line 333
    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 334
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v8, 0x33

    .line 335
    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v8, 0x63

    .line 336
    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x10

    .line 338
    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 340
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    if-lt v8, v10, :cond_8

    .line 341
    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_8
    const/16 v10, 0x15

    if-lt v8, v10, :cond_9

    const v11, -0x7ffefe80

    .line 344
    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 350
    :cond_9
    iput-boolean v9, v0, Lorg/telegram/ui/Stories/StoryViewer;->isClosed:Z

    .line 351
    iput-boolean v9, v0, Lorg/telegram/ui/Stories/StoryViewer;->unreadStateChanged:Z

    .line 353
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v5

    .line 354
    iget-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-nez v11, :cond_a

    .line 355
    new-instance v11, Landroid/view/GestureDetector;

    new-instance v12, Lorg/telegram/ui/Stories/StoryViewer$1;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Stories/StoryViewer$1;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-direct {v11, v12}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer;->gestureDetector:Landroid/view/GestureDetector;

    .line 469
    new-instance v11, Lorg/telegram/ui/Stories/StoryViewer$2;

    invoke-direct {v11, v0, v1, v5}, Lorg/telegram/ui/Stories/StoryViewer$2;-><init>(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 972
    :cond_a
    iget-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    if-nez v11, :cond_c

    .line 973
    new-instance v11, Lorg/telegram/ui/Stories/StoryViewer$3;

    invoke-direct {v11, v0, v1}, Lorg/telegram/ui/Stories/StoryViewer$3;-><init>(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;)V

    iput-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    .line 1052
    new-instance v11, Lorg/telegram/ui/Stories/StoryViewer$4;

    iget-object v12, v0, Lorg/telegram/ui/Stories/StoryViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v11, v0, v1, v0, v12}, Lorg/telegram/ui/Stories/StoryViewer$4;-><init>(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    .line 1060
    new-instance v12, Lorg/telegram/ui/Stories/StoryViewer$5;

    invoke-direct {v12, v0, v4, v3}, Lorg/telegram/ui/Stories/StoryViewer$5;-><init>(Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/StoriesController$StoriesList;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Stories/StoriesViewPager;->setDelegate(Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;)V

    .line 1353
    iget-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    iget-object v12, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-static {v6, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v11, v12, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1354
    new-instance v6, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 1355
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    if-eqz v6, :cond_b

    .line 1356
    new-instance v6, Landroid/view/SurfaceView;

    invoke-direct {v6, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->surfaceView:Landroid/view/SurfaceView;

    .line 1357
    invoke-virtual {v6, v9}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 1358
    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v6, v9}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 1360
    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v6, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 1362
    :cond_b
    new-instance v6, Lorg/telegram/ui/Stories/StoryViewer$6;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/Stories/StoryViewer$6;-><init>(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->textureView:Landroid/view/TextureView;

    .line 1371
    iget-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v11, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1374
    :goto_3
    new-instance v6, Lorg/telegram/ui/Stories/StoriesVolumeContorl;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Stories/StoriesVolumeContorl;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->volumeControl:Lorg/telegram/ui/Stories/StoriesVolumeContorl;

    .line 1375
    iget-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1377
    :cond_c
    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 1378
    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v6, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1380
    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 1381
    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v6, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1382
    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 1384
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v6, :cond_d

    .line 1385
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/ui/LaunchActivity;

    if-eqz v6, :cond_d

    .line 1386
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/LaunchActivity;

    .line 1387
    invoke-virtual {v6}, Lorg/telegram/ui/LaunchActivity;->requestCustomNavigationBar()V

    .line 1390
    :cond_d
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->isSingleStory:Z

    if-eqz v6, :cond_e

    .line 1391
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/StoryViewer;->updateTransitionParams()V

    :cond_e
    if-eqz v4, :cond_f

    .line 1394
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iget-wide v11, v4, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->userId:J

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getDays()Ljava/util/ArrayList;

    move-result-object v4

    iget v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-virtual {v3, v11, v12, v4, v6}, Lorg/telegram/ui/Stories/StoriesViewPager;->setDays(JLjava/util/ArrayList;I)V

    goto :goto_4

    .line 1396
    :cond_f
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iget v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    move/from16 v11, p4

    invoke-virtual {v4, v3, v6, v11}, Lorg/telegram/ui/Stories/StoriesViewPager;->setPeerIds(Ljava/util/ArrayList;II)V

    :goto_4
    const-string v3, "window"

    .line 1399
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowManager:Landroid/view/WindowManager;

    .line 1400
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v1, :cond_10

    .line 1401
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 1402
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1403
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    goto :goto_5

    .line 1405
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 1406
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    if-lt v8, v10, :cond_11

    .line 1408
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 1410
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    new-instance v3, Lorg/telegram/ui/Stories/StoryViewer$7;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Stories/StoryViewer$7;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1431
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    const/16 v3, 0x700

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 1433
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowManager:Landroid/view/WindowManager;

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1435
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1436
    sput-boolean v7, Lorg/telegram/ui/Stories/StoryViewer;->runOpenAnimationAfterLayout:Z

    .line 1438
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/StoryViewer;->updateTransitionParams()V

    .line 1439
    iput v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    .line 1440
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/StoryViewer;->checkNavBarColor()V

    .line 1441
    sput-boolean v7, Lorg/telegram/ui/Stories/StoryViewer;->animationInProgress:Z

    .line 1443
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/StoryViewer;->checkInSilentMode()V

    .line 1444
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v1, :cond_12

    .line 1445
    invoke-direct {v0, v7}, Lorg/telegram/ui/Stories/StoryViewer;->lockOrientation(Z)V

    .line 1448
    :cond_12
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-nez v1, :cond_13

    .line 1449
    sget-object v1, Lorg/telegram/ui/Stories/StoryViewer;->globalInstances:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1451
    :cond_13
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public open(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V
    .locals 10

    if-nez p2, :cond_0

    return-void

    .line 250
    :cond_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    .line 251
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 253
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    .line 255
    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/TLRPC$TL_userStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V

    return-void
.end method

.method public open(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_userStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V
    .locals 10

    if-eqz p2, :cond_1

    .line 276
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    .line 280
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 281
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/TLRPC$TL_userStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public openFor(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/Cells/ChatActionCell;)V
    .locals 4

    .line 2263
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    if-eqz p1, :cond_1

    .line 2264
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2267
    :cond_0
    iget v0, p3, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    .line 2268
    iget-object v0, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 2269
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    .line 2270
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->messageId:I

    .line 2271
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p3, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-static {p2}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public openViews()V
    .locals 3

    .line 2217
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->checkSelfStoriesView()V

    .line 2218
    new-instance v0, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    const-wide/16 v1, 0x1e

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 2149
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v0, :cond_0

    .line 2150
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 2152
    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const/4 p1, 0x0

    .line 2153
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 4

    const/4 v0, 0x0

    .line 2049
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->lastUri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 2050
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/StoryViewer;->setInTouchMode(Z)V

    const/4 v2, 0x1

    .line 2051
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/StoryViewer;->allowScreenshots(Z)V

    .line 2052
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v2, :cond_0

    .line 2053
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->release(Ljava/lang/Runnable;)Z

    .line 2054
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    :cond_0
    move v2, v1

    .line 2056
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2057
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->release(Ljava/lang/Runnable;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2059
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2060
    iget v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Stories/StoriesController;->pollViewsForSelfStories(Z)V

    .line 2061
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v2, :cond_2

    .line 2062
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/StoryViewer;->lockOrientation(Z)V

    .line 2065
    :cond_2
    sget-object v1, Lorg/telegram/ui/Stories/StoryViewer;->globalInstances:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 2066
    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    .line 2067
    sput-object v0, Lorg/telegram/ui/Stories/StoryViewer;->lastStoryItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    return-void
.end method

.method public setKeyboardHeightFromParent(I)V
    .locals 1

    .line 2137
    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->realKeyboardHeight:I

    if-eq v0, p1, :cond_0

    .line 2138
    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->realKeyboardHeight:I

    .line 2139
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoriesViewPager;->setKeyboardHeight(I)V

    .line 2140
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setOnCloseListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 1774
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->onCloseListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOverlayVisible(Z)V
    .locals 0

    .line 1769
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isOverlayVisible:Z

    .line 1770
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public setSelfStoriesViewsOffset(F)V
    .locals 0

    .line 2211
    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    .line 2212
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2213
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/HwFrameLayout;->invalidate()V

    return-void
.end method

.method public showDialog(Landroid/app/Dialog;)V
    .locals 1

    .line 1507
    :try_start_0
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentDialog:Landroid/app/Dialog;

    .line 1508
    new-instance v0, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1514
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 1515
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1517
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 1518
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentDialog:Landroid/app/Dialog;

    :goto_0
    return-void
.end method

.method public soundEnabled()Z
    .locals 1

    .line 2226
    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->isInSilentMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 2170
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2173
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public toggleSilentMode()V
    .locals 4

    .line 1616
    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->isInSilentMode:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->isInSilentMode:Z

    .line 1617
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    xor-int/2addr v0, v1

    .line 1618
    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->setAudioEnabled(ZZ)V

    .line 1620
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 1621
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    sget-boolean v2, Lorg/telegram/ui/Stories/StoryViewer;->isInSilentMode:Z

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->setAudioEnabled(ZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1623
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    .line 1624
    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->soundEnabled()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->setIconMuted(ZZ)V

    return-void
.end method

.method public updatePlayingMode()V
    .locals 4

    .line 1782
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    if-nez v0, :cond_0

    return-void

    .line 1785
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->isPaused()Z

    move-result v0

    .line 1786
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isLastFragment()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move v0, v2

    .line 1790
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->setPaused(Z)V

    .line 1791
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 1793
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->pause()V

    goto :goto_0

    .line 1795
    :cond_3
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->play()V

    .line 1798
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->keyboardVisible:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isClosed:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isRecording:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isLongpressed:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isInPinchToZoom:Z

    if-nez v1, :cond_5

    iget v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/StoriesViewPager;->enableTouch(Z)V

    return-void
.end method
