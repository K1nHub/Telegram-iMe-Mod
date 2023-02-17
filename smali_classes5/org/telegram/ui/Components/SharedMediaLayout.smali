.class public Lorg/telegram/ui/Components/SharedMediaLayout;
.super Landroid/widget/FrameLayout;
.source "SharedMediaLayout.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;,
        Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;,
        Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;,
        Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;,
        Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;,
        Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;,
        Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;,
        Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;,
        Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;,
        Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;,
        Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;,
        Lorg/telegram/ui/Components/SharedMediaLayout$Period;,
        Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;,
        Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;,
        Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;,
        Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;
    }
.end annotation


# static fields
.field private static final interpolator:Landroid/view/animation/Interpolator;

.field private static final supportedFastScrollTypes:[I


# instance fields
.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private actionModeAnimation:Landroid/animation/AnimatorSet;

.field private actionModeLayout:Landroid/widget/LinearLayout;

.field private actionModeViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private additionalFloatingTranslation:F

.field private animateToColumnsCount:I

.field private animatingForward:Z

.field animationIndex:I

.field private animationSupportingPhotoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

.field private animationSupportingSortedCells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;",
            ">;"
        }
    .end annotation
.end field

.field private audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

.field private audioCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Cells/SharedAudioCell;",
            ">;"
        }
    .end annotation
.end field

.field private audioCellCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Cells/SharedAudioCell;",
            ">;"
        }
    .end annotation
.end field

.field private audioSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

.field private backAnimation:Z

.field private backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private cache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Cells/SharedPhotoVideoCell;",
            ">;"
        }
    .end annotation
.end field

.field private cantAddToPlaylistCount:I

.field private cantDeleteMessagesCount:I

.field private cantRemoveFromPlaylistCount:I

.field private cellCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Cells/SharedPhotoVideoCell;",
            ">;"
        }
    .end annotation
.end field

.field private changeTypeAnimation:Z

.field private chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

.field private closeButton:Landroid/widget/ImageView;

.field private commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

.field final delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

.field private deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private dialog_id:J

.field private documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

.field private documentsSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

.field private floatingDateAnimation:Landroid/animation/AnimatorSet;

.field private floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

.field private forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

.field private fwdRestrictedHint:Lorg/telegram/ui/Components/HintView;

.field private gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

.field globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

.field private hasMedia:[I

.field private hideFloatingDateRunnable:Ljava/lang/Runnable;

.field private ignoreSearchCollapse:Z

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private initialTab:I

.field private isActionModeShowed:Z

.field isInPinchToZoomTouchMode:Z

.field private isMembersMenuVisible:Z

.field isPinnedToTop:Z

.field jumpToRunnable:Ljava/lang/Runnable;

.field lastMeasuredTopPadding:I

.field private linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

.field private linksSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

.field private maximumVelocity:I

.field maybePinchToZoomTouchMode:Z

.field maybePinchToZoomTouchMode2:Z

.field private maybeStartTracking:Z

.field private mediaColumnsCount:I

.field private mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

.field private membersFilterItem:Landroid/widget/ImageView;

.field private membersMenuItem:Landroid/widget/ImageView;

.field private mergeDialogId:J

.field messageAlphaEnter:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private onLoadMoreMembersListener:Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;

.field optionsWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

.field private photoVideoChangeColumnsAnimation:Z

.field private photoVideoChangeColumnsProgress:F

.field public photoVideoOptionsItem:Landroid/widget/ImageView;

.field pinchCenterOffset:I

.field pinchCenterPosition:I

.field pinchCenterX:I

.field pinchCenterY:I

.field pinchScale:F

.field pinchScaleUp:Z

.field pinchStartDistance:F

.field private pinnedHeaderShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private playlist:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

.field private playlistSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

.field private pointerId1:I

.field private pointerId2:I

.field private profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field rect:Landroid/graphics/Rect;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

.field private scrolling:Z

.field public scrollingByUser:Z

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchItemState:I

.field private searchWas:Z

.field private searching:Z

.field private selectedFiles:[Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/SparseArray<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

.field private shadowLine:Landroid/view/View;

.field sharedLinkCellDelegate:Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;

.field private sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

.field private sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

.field private startedTracking:Z

.field private startedTrackingPointerId:I

.field private startedTrackingX:I

.field private startedTrackingY:I

.field private tabsAnimation:Landroid/animation/AnimatorSet;

.field private tabsAnimationInProgress:Z

.field topPadding:I

.field private topicId:I

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private final viewType:I

.field private voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;


# direct methods
.method public static synthetic $r8$lambda$-C_GsMf6YJfk1Twse6mjXXkJrwY(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-yrl5Tdk8lr7yZekscYP82i5ZB4(Lorg/telegram/ui/Components/SharedMediaLayout;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$new$14(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$2Zx6NELdeqBbKmYYFo9hpPgi9bE(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Landroid/view/View;IFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$new$11(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$3KxRkcrQPKPZ9KN3UC8EEdv1-Qw(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$new$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5qxKgjf2mOwxb_KQJh5HLIfHr5k(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$8g2sR-hLble_74SWNMqSvcijcT8(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$new$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AJi7VydZxCX3qHVTKPDeMssqqJ4(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CtR5HtKYScIEeY-kS1HTrJ2vbpE(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$new$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J16IIzllQPWFKFiL-6g2yHbyrwU(Lorg/telegram/ui/Components/SharedMediaLayout;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$forwardCloud$0(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$JdFmi3cmYHly9g4n05EFk3_XQTo(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/tgnet/TLRPC$TL_error;IILorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$loadFastScrollData$17(Lorg/telegram/tgnet/TLRPC$TL_error;IILorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nma3Qcdlq5OXLEG_mV8bCEf-WHM(Lorg/telegram/ui/Components/SharedMediaLayout$Period;Lorg/telegram/ui/Components/SharedMediaLayout$Period;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$loadFastScrollData$16(Lorg/telegram/ui/Components/SharedMediaLayout$Period;Lorg/telegram/ui/Components/SharedMediaLayout$Period;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Sm2QxfdKFwW5xqkKmi0NG3X_ojU(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U_Jaqw8_YiFexlDmBfP7Nns03V8(F)F
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$static$2(F)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_WHNfZbdc_YEuMD2OOYFXyDW9lg(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$new$13(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dCUb3NvNSwaxr5NQ1klP9MxWlDk(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$showFastScrollHint$19(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gHmNvzWW9C3AX_le2t6-3So0b9w(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$new$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gJ5x6HcWe1DizZu71O666SRDkBE(Lorg/telegram/ui/Components/SharedMediaLayout;ILorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$checkLoadMoreScroll$15(ILorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nIzKbTynqyljYPYsZhoreewkxBQ(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$new$12(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$p9WmyXYXynKKv4mfVD9yimU2nKg(Lorg/telegram/ui/Components/SharedMediaLayout;IILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$loadFastScrollData$18(IILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pUTRjsSi2cRM_XT7pSud5DUyCvI(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sPo4Wfy3dKme7NvSUD4ZFNUxXsk(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$onActionBarItemClick$21()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sTZsRNy61z7xCY92qjjq8VgS13g(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$onActionBarItemClick$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$wNRAvy55Ltc8-a8VK7jqO6pJz8s(Lorg/telegram/ui/Components/SharedMediaLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$getThemeDescriptions$23(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zd-42vgBT-knCtmW8gJBykg2fYc(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$onActionBarItemClick$22(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 237
    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/ui/Components/SharedMediaLayout;->supportedFastScrollTypes:[I

    .line 620
    sget-object v0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda9;->INSTANCE:Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda9;

    sput-object v0, Lorg/telegram/ui/Components/SharedMediaLayout;->interpolator:Landroid/view/animation/Interpolator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;ZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$ChatFull;",
            "Z",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;",
            "I",
            "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-wide/from16 v1, p2

    move-object/from16 v6, p7

    .line 1349
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 141
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlist:Ljava/util/LinkedHashMap;

    .line 268
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->rect:Landroid/graphics/Rect;

    const/4 v5, 0x2

    new-array v3, v5, [Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    .line 563
    iput-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    .line 576
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cellCache:Ljava/util/ArrayList;

    .line 577
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cache:Ljava/util/ArrayList;

    .line 578
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioCellCache:Ljava/util/ArrayList;

    .line 579
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioCache:Ljava/util/ArrayList;

    .line 584
    new-instance v3, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda11;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hideFloatingDateRunnable:Ljava/lang/Runnable;

    .line 585
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    .line 593
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->backgroundPaint:Landroid/graphics/Paint;

    new-array v3, v5, [Landroid/util/SparseArray;

    .line 601
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    const/4 v15, 0x0

    aput-object v8, v3, v15

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    const/4 v14, 0x1

    aput-object v8, v3, v14

    iput-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    const/4 v3, 0x3

    .line 614
    iput v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:I

    .line 617
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingSortedCells:Ljava/util/ArrayList;

    .line 1042
    new-instance v8, Lorg/telegram/ui/Components/SharedMediaLayout$1;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    const/4 v13, 0x6

    new-array v8, v13, [Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    .line 1326
    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    .line 4529
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->messageAlphaEnter:Landroid/util/SparseArray;

    .line 5376
    new-instance v8, Lorg/telegram/ui/Components/SharedMediaLayout$31;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$31;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedLinkCellDelegate:Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;

    .line 1351
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v8

    const-wide/16 v18, 0x0

    if-eqz v8, :cond_1

    .line 1352
    invoke-virtual/range {p9 .. p9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    neg-long v9, v1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    .line 1353
    invoke-virtual/range {p9 .. p9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v9

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-wide v10, v8, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    move-wide v11, v10

    goto :goto_0

    :cond_0
    move-wide/from16 v11, v18

    :goto_0
    invoke-virtual/range {p9 .. p9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMusicController()Lorg/fork/controller/MusicController;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Lorg/fork/controller/MusicController;->getPlaylistForDialog(J)Ljava/util/ArrayList;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object v8, v9

    move-wide/from16 v9, p2

    const/16 v23, 0x6

    move-object/from16 v13, v16

    const/4 v4, 0x1

    move/from16 v14, v17

    const/4 v3, 0x0

    move/from16 v15, v20

    move/from16 v16, v21

    move/from16 v17, v22

    invoke-virtual/range {v8 .. v17}, Lorg/telegram/messenger/MediaDataController;->loadPinnedMessages(JJLjava/util/ArrayList;ZZZZ)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1355
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    .line 1356
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlist:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v23, 0x6

    :cond_2
    move/from16 v8, p11

    .line 1361
    iput v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->viewType:I

    move-object/from16 v8, p12

    .line 1362
    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1364
    new-instance v9, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v9, v7}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    .line 1365
    invoke-virtual {v9, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    move-object/from16 v9, p4

    .line 1367
    iput-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    move-object/from16 v10, p10

    .line 1368
    iput-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    .line 1369
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getLastMediaCount()[I

    move-result-object v10

    .line 1370
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-static {v11}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->access$1000(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)I

    move-result v11

    iput v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    const/4 v12, 0x7

    new-array v13, v12, [I

    .line 1371
    aget v14, v10, v3

    aput v14, v13, v3

    aget v14, v10, v4

    aput v14, v13, v4

    aget v14, v10, v5

    aput v14, v13, v5

    const/4 v14, 0x3

    aget v15, v10, v14

    aput v15, v13, v14

    const/4 v15, 0x4

    aget v16, v10, v15

    aput v16, v13, v15

    const/16 v16, 0x5

    aget v10, v10, v16

    aput v10, v13, v16

    if-nez v11, :cond_3

    move/from16 v10, p5

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :goto_2
    aput v10, v13, v23

    iput-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    const/4 v10, -0x1

    if-eqz p8, :cond_4

    if-nez v11, :cond_4

    .line 1373
    iput v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->initialTab:I

    goto :goto_5

    :cond_4
    const/4 v11, 0x0

    .line 1375
    :goto_3
    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    array-length v13, v12

    if-ge v11, v13, :cond_7

    .line 1376
    aget v13, v12, v11

    if-eq v13, v10, :cond_6

    aget v12, v12, v11

    if-lez v12, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1377
    :cond_6
    :goto_4
    iput v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->initialTab:I

    .line 1382
    :cond_7
    :goto_5
    iput-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v6, :cond_8

    .line 1384
    iget-wide v11, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:J

    neg-long v11, v11

    iput-wide v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    .line 1386
    :cond_8
    iput-wide v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    const/4 v1, 0x0

    .line 1388
    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length v11, v2

    if-ge v1, v11, :cond_b

    .line 1389
    new-instance v11, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-direct {v11}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;-><init>()V

    aput-object v11, v2, v1

    .line 1390
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    iget-wide v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v11

    if-eqz v11, :cond_9

    const/high16 v11, -0x80000000

    goto :goto_7

    :cond_9
    const v11, 0x7fffffff

    :goto_7
    aput v11, v2, v3

    .line 1391
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->fillMediaData(I)Z

    .line 1392
    iget-wide v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    cmp-long v2, v11, v18

    if-eqz v2, :cond_a

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_a

    .line 1393
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v12, v11, v1

    iget-object v12, v12, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_max_id:I

    aput v2, v12, v4

    .line 1394
    aget-object v2, v11, v1

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aput-boolean v3, v2, v4

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    move-object/from16 v11, p9

    .line 1398
    iput-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1399
    invoke-virtual/range {p9 .. p9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 1400
    sget v1, Lorg/telegram/messenger/SharedConfig;->mediaColumnsCount:I

    iput v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:I

    .line 1402
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->playlistDidChanged:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1403
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoad:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1404
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1405
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1406
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1407
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1408
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1409
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v1, 0x0

    :goto_8
    const/4 v12, 0x0

    const/16 v2, 0xa

    if-ge v1, v2, :cond_e

    .line 1413
    iget v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->initialTab:I

    if-ne v2, v15, :cond_d

    .line 1414
    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$2;

    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v13

    if-eqz v13, :cond_c

    sget v13, Lcom/smedialink/common/IdFabric$ViewTypes;->SHARED_AUDIO_CELL_MUSIC:I

    goto :goto_9

    :cond_c
    const/4 v13, 0x0

    :goto_9
    invoke-direct {v2, v0, v7, v13, v12}, Lorg/telegram/ui/Components/SharedMediaLayout$2;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1427
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/SharedAudioCell;->initStreamingIcons()V

    .line 1428
    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioCellCache:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1432
    :cond_e
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 1433
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->maximumVelocity:I

    .line 1435
    iput-boolean v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searching:Z

    .line 1436
    iput-boolean v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchWas:Z

    .line 1438
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->photos_header_shadow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinnedHeaderShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 1439
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v13, "windowBackgroundGrayShadow"

    invoke-direct {v0, v13}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v13

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v13, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1441
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    if-eqz v1, :cond_f

    .line 1442
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getCurrentTabId()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->initialTab:I

    .line 1444
    :cond_f
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->createScrollingTextTabStrip(Landroid/content/Context;)Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    const/4 v1, 0x1

    :goto_a
    if-ltz v1, :cond_10

    .line 1447
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 1449
    :cond_10
    iput v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    .line 1450
    iput v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    iput v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    .line 1451
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1453
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 1454
    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$3;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$3;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1464
    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$4;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$4;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0xa

    .line 1546
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1547
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->Search:I

    const-string v5, "Search"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 1548
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1549
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1552
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$5;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$5;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersFilterItem:Landroid/widget/ImageView;

    const/16 v2, 0xa

    .line 1564
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1565
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersFilterItem:Landroid/widget/ImageView;

    invoke-virtual {v1, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1566
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersFilterItem:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1567
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_members:I

    invoke-static {v7, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1568
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v13, "windowBackgroundWhiteGrayText2"

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1569
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersFilterItem:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1570
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersFilterItem:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1571
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersFilterItem:Landroid/widget/ImageView;

    const/16 v17, 0x30

    const/16 v18, 0x38

    const/16 v19, 0x55

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x30

    const/16 v23, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1572
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    const/16 v2, 0xa

    .line 1573
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1574
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    invoke-virtual {v1, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1575
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1576
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1577
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    const/16 v14, 0x30

    const/16 v5, 0x38

    const/16 v12, 0x55

    invoke-static {v14, v5, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v1, v2, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1579
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    .line 1580
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v10, "AccDescrMoreOptions"

    invoke-static {v10, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1581
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    const/16 v2, 0xa

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1582
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-virtual {v1, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1584
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-static {v7, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1585
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string v10, "actionBarActionModeDefaultIcon"

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v15

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v15, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1586
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1587
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1588
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-static {v14, v5, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1589
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$6;

    invoke-direct {v2, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$6;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1735
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    const-string/jumbo v2, "windowBackgroundWhiteBlackText"

    .line 1736
    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setTextColor(I)V

    const-string v4, "player_time"

    .line 1737
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1738
    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 1739
    iput v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    .line 1742
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v1, :cond_11

    .line 1743
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    goto :goto_b

    :cond_11
    const/4 v1, 0x0

    .line 1745
    :goto_b
    new-instance v2, Lorg/telegram/ui/Components/BlurredLinearLayout;

    invoke-direct {v2, v7, v1}, Lorg/telegram/ui/Components/BlurredLinearLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    const-string/jumbo v1, "windowBackgroundWhite"

    .line 1746
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1747
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1748
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1749
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1751
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->closeButton:Landroid/widget/ImageView;

    .line 1752
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1753
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->closeButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v2, v4}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    iput-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1754
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    .line 1755
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->closeButton:Landroid/widget/ImageView;

    const-string v12, "actionBarActionModeDefaultSelector"

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1756
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->closeButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->Close:I

    const-string v5, "Close"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1757
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->closeButton:Landroid/widget/ImageView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v15, 0x36

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1758
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1759
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->closeButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1761
    new-instance v1, Lorg/telegram/ui/Components/NumberTextView;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v2, 0x12

    .line 1762
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 1763
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1764
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 1765
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v24, 0x0

    const/16 v25, -0x1

    const/high16 v26, 0x3f800000    # 1.0f

    const/16 v27, 0x12

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1766
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1769
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1770
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x0

    move-object v1, v5

    move-object/from16 v2, p1

    const/4 v14, 0x0

    move-object v15, v5

    move/from16 v5, v19

    move/from16 v6, v20

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZ)V

    iput-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1771
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_tone_add:I

    invoke-virtual {v15, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 1772
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v14}, Landroid/widget/FrameLayout;->setDuplicateParentStateEnabled(Z)V

    .line 1773
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1774
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x36

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/4 v4, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1775
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_12
    const/4 v14, 0x0

    .line 1778
    :goto_c
    iget-wide v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1779
    new-instance v15, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZ)V

    iput-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1780
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_message:I

    invoke-virtual {v15, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 1781
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrGoToMessage:I

    const-string v3, "AccDescrGoToMessage"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1782
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v14}, Landroid/widget/FrameLayout;->setDuplicateParentStateEnabled(Z)V

    .line 1783
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x36

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/4 v4, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1784
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1785
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1788
    new-instance v15, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v13}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZ)V

    iput-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1789
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_forward_cloud:I

    invoke-virtual {v15, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 1790
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->chat_message_popup_option_forward_cloud:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1791
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v14}, Landroid/widget/FrameLayout;->setDuplicateParentStateEnabled(Z)V

    .line 1792
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1793
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x36

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1794
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1796
    new-instance v13, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    move-object v1, v13

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZ)V

    iput-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1797
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_forward:I

    invoke-virtual {v13, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 1798
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->Forward:I

    const-string v3, "Forward"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1799
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v14}, Landroid/widget/FrameLayout;->setDuplicateParentStateEnabled(Z)V

    .line 1800
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x36

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/4 v4, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1801
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1802
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1804
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateForwardItem()V

    .line 1806
    :cond_13
    new-instance v13, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    move-object v1, v13

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZ)V

    iput-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1807
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v13, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 1808
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v3, "Delete"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1809
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v14}, Landroid/widget/FrameLayout;->setDuplicateParentStateEnabled(Z)V

    .line 1810
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x36

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1811
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1812
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1815
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1816
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    sget v2, Lcom/smedialink/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    invoke-direct {v1, v0, v7, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    .line 1817
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-direct {v1, v0, v7, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    .line 1820
    :cond_14
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$7;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$7;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    .line 1830
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingPhotoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    .line 1831
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v7, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    .line 1832
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    const/4 v3, 0x2

    invoke-direct {v1, v0, v7, v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    .line 1833
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    const/4 v4, 0x4

    invoke-direct {v1, v0, v7, v4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    .line 1834
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    .line 1835
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-direct {v1, v0, v7, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    .line 1836
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-direct {v1, v0, v7, v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    .line 1837
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    const/4 v4, 0x3

    invoke-direct {v1, v0, v7, v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    .line 1838
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    .line 1839
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    .line 1840
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    .line 1841
    iget v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    if-nez v4, :cond_16

    move-object/from16 v4, p6

    .line 1842
    invoke-static {v1, v4}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3602(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1843
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    if-eqz p8, :cond_15

    move-object/from16 v4, p7

    goto :goto_d

    :cond_15
    const/4 v4, 0x0

    :goto_d
    invoke-static {v1, v4}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3702(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;Lorg/telegram/tgnet/TLRPC$ChatFull;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1845
    :cond_16
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    .line 1847
    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v15, 0x0

    .line 1852
    :goto_e
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v6, v5

    if-ge v15, v6, :cond_1b

    if-nez v15, :cond_18

    .line 1854
    aget-object v6, v5, v15

    if-eqz v6, :cond_18

    aget-object v5, v5, v15

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 1855
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v15

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 1856
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v15

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v5

    sub-int/2addr v5, v2

    if-eq v1, v5, :cond_17

    .line 1857
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v15

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz v5, :cond_17

    .line 1859
    iget-object v4, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_f

    :cond_17
    const/4 v1, -0x1

    .line 1868
    :cond_18
    :goto_f
    new-instance v5, Lorg/telegram/ui/Components/SharedMediaLayout$8;

    invoke-direct {v5, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$8;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, 0x33

    const/16 v27, 0x0

    const/16 v28, 0x30

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 1921
    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1922
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aput-object v5, v6, v15

    .line 1924
    aget-object v6, v6, v15

    new-instance v9, Lorg/telegram/ui/Components/SharedMediaLayout$9;

    const/16 v10, 0x64

    invoke-direct {v9, v0, v7, v10, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$9;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;ILorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-static {v6, v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$202(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/ExtendedGridLayoutManager;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v6

    .line 1989
    new-instance v9, Lorg/telegram/ui/Components/SharedMediaLayout$10;

    invoke-direct {v9, v0, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$10;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-virtual {v6, v9}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 2007
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v9, v15

    new-instance v10, Lorg/telegram/ui/Components/SharedMediaLayout$11;

    invoke-direct {v10, v0, v7, v5, v6}, Lorg/telegram/ui/Components/SharedMediaLayout$11;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/ExtendedGridLayoutManager;)V

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$102(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/BlurredRecyclerView;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    .line 2311
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v9, v15

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v9

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollEnabled(I)V

    .line 2312
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v9, v15

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollingTouchSlop(I)V

    .line 2313
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v9, v15

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setPinnedSectionOffsetY(I)V

    .line 2314
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v9, v15

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v9, v14, v10, v14, v14}, Lorg/telegram/ui/Components/BlurredRecyclerView;->setPadding(IIII)V

    .line 2315
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v9, v15

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 2316
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v9, v15

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 2317
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v9, v15

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v9

    invoke-virtual {v9, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setSectionsType(I)V

    .line 2318
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v9, v15

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2319
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v12, v9, v15

    aget-object v9, v9, v15

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v9

    const/4 v13, -0x1

    invoke-static {v13, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v9, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2320
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    new-instance v9, Lorg/telegram/ui/Components/BlurredRecyclerView;

    invoke-direct {v9, v7}, Lorg/telegram/ui/Components/BlurredRecyclerView;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3402(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/BlurredRecyclerView;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    .line 2321
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v9, v15

    new-instance v12, Lorg/telegram/ui/Components/SharedMediaLayout$12;

    const/4 v13, 0x3

    invoke-direct {v12, v0, v7, v13}, Lorg/telegram/ui/Components/SharedMediaLayout$12;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V

    invoke-static {v9, v12}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4902(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Landroidx/recyclerview/widget/GridLayoutManager;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2336
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v3, v15

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    const/4 v12, -0x1

    invoke-static {v12, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2337
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2340
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    new-instance v10, Lorg/telegram/ui/Components/SharedMediaLayout$13;

    invoke-direct {v10, v0, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$13;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-virtual {v3, v10}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 2361
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    new-instance v10, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda20;

    invoke-direct {v10, v0, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 2419
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    new-instance v10, Lorg/telegram/ui/Components/SharedMediaLayout$14;

    invoke-direct {v10, v0, v5, v6}, Lorg/telegram/ui/Components/SharedMediaLayout$14;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/ExtendedGridLayoutManager;)V

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 2441
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    new-instance v10, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda21;

    invoke-direct {v10, v0, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    if-nez v15, :cond_19

    const/4 v3, -0x1

    if-eq v1, v3, :cond_19

    .line 2482
    invoke-virtual {v6, v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2485
    :cond_19
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    .line 2487
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v15

    new-instance v10, Lorg/telegram/ui/Components/SharedMediaLayout$15;

    invoke-direct {v10, v0, v7, v3}, Lorg/telegram/ui/Components/SharedMediaLayout$15;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-static {v6, v10}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$502(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/ClippingImageView;)Lorg/telegram/ui/Components/ClippingImageView;

    .line 2494
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2495
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v15

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object v6

    const/4 v10, -0x1

    invoke-static {v10, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v3, v6, v12}, Lorg/telegram/ui/Components/RecyclerListView;->addOverlayView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 2497
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    new-instance v6, Lorg/telegram/ui/Components/SharedMediaLayout$16;

    invoke-direct {v6, v0, v7, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$16;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-static {v3, v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5202(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/FlickerLoadingView;)Lorg/telegram/ui/Components/FlickerLoadingView;

    .line 2533
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object v3

    invoke-virtual {v3, v14}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    if-eqz v15, :cond_1a

    .line 2535
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2538
    :cond_1a
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v3, v15

    new-instance v6, Lorg/telegram/ui/Components/StickerEmptyView;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object v3

    invoke-direct {v6, v7, v3, v2}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5502(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/StickerEmptyView;)Lorg/telegram/ui/Components/StickerEmptyView;

    .line 2539
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v3

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 2540
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->setAnimateLayoutChange(Z)V

    .line 2541
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v3, v15

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v3

    const/4 v6, -0x1

    invoke-static {v6, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v3, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2542
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v3

    sget-object v5, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda8;->INSTANCE:Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda8;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2543
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v3

    invoke-virtual {v3, v2, v14}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 2544
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->NoResult:I

    const-string v6, "NoResult"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2545
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitle2:I

    const-string v6, "SearchEmptyViewFilteredSubtitle2"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2546
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v15

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object v5

    const/4 v6, -0x1

    invoke-static {v6, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v5, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2548
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v15

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 2549
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    invoke-virtual {v3, v2, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 2551
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v3, v15

    new-instance v6, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v9, v15

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v9

    invoke-direct {v6, v3, v9}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5602(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x2

    goto/16 :goto_e

    .line 2554
    :cond_1b
    new-instance v1, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    .line 2555
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v4, v3

    invoke-virtual {v1, v4, v14, v14}, Lorg/telegram/ui/Cells/ChatActionCell;->setCustomDate(IZZ)V

    .line 2556
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2557
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const-string v3, "chat_mediaTimeBackground"

    const-string v4, "chat_mediaTimeText"

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Cells/ChatActionCell;->setOverrideColor(Ljava/lang/String;Ljava/lang/String;)V

    .line 2558
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/16 v3, 0x30

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 2559
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x31

    const/4 v6, 0x0

    const/16 v9, 0x34

    const/4 v10, 0x0

    const/4 v12, 0x0

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v9

    move/from16 p7, v10

    move/from16 p8, v12

    invoke-static/range {p2 .. p8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2561
    new-instance v1, Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v3, 0x0

    move-object/from16 p2, v1

    move-object/from16 p3, p1

    move-object/from16 p4, p9

    move-object/from16 p5, p0

    move/from16 p6, v3

    move-object/from16 p7, p12

    invoke-direct/range {p2 .. p7}, Lorg/telegram/ui/Components/FragmentContextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v3, -0x1

    const/16 v4, 0x26

    const/16 v5, 0x33

    const/16 v8, 0x30

    const/4 v9, 0x0

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v8

    move/from16 p7, v9

    move/from16 p8, v10

    invoke-static/range {p2 .. p8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2562
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    new-instance v3, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda19;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/FragmentContextView;->setDelegate(Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;)V

    .line 2568
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    const/16 v3, 0x33

    const/16 v4, 0x30

    const/4 v5, -0x1

    invoke-static {v5, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2569
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x33

    invoke-static {v5, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2571
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->shadowLine:Landroid/view/View;

    const-string v3, "divider"

    .line 2572
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2573
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2574
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2575
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->shadowLine:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2577
    invoke-direct {v0, v14}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateTabs(Z)V

    .line 2578
    invoke-direct {v0, v14}, Lorg/telegram/ui/Components/SharedMediaLayout;->switchToCurrentSelectedMode(Z)V

    .line 2579
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v1, v1, v14

    if-ltz v1, :cond_1c

    .line 2580
    invoke-direct {v0, v14}, Lorg/telegram/ui/Components/SharedMediaLayout;->loadFastScrollData(Z)V

    :cond_1c
    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/SharedMediaLayout;)J
    .locals 2

    .line 131
    iget-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    return-wide v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searching:Z

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searching:Z

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/widget/ImageView;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersFilterItem:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchWas:Z

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->ignoreSearchCollapse:Z

    return p0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->ignoreSearchCollapse:Z

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->switchToCurrentSelectedMode(Z)V

    return-void
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    return p0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    return p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)I
    .locals 0

    .line 131
    iget p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:I

    return p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/SharedMediaLayout;I)I
    .locals 0

    .line 131
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:I

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/SharedMediaLayout;I)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->animateToMediaColumnsCount(I)V

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/SharedMediaLayout;)J
    .locals 2

    .line 131
    iget-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;Z)V
    .locals 0

    .line 131
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->showFastScrollHint(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;Z)V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->showMediaCalendar(Z)V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->changeTypeAnimation:Z

    return p0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->changeTypeAnimation:Z

    return p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->changeMediaFilterType()V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/SharedMediaLayout;I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getMediaPage(I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingPhotoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimationInProgress:Z

    return p0
.end method

.method static synthetic access$3802(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/SharedMediaLayout;)I
    .locals 0

    .line 131
    iget p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    return p0
.end method

.method static synthetic access$4002(Lorg/telegram/ui/Components/SharedMediaLayout;I)I
    .locals 0

    .line 131
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    return p1
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isMembersMenuVisible:Z

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/widget/ImageView;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout;->checkLoadMoreScroll(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    return-void
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)I
    .locals 0

    .line 131
    iget p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animateToColumnsCount:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingSortedCells:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)F
    .locals 0

    .line 131
    iget p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsProgress:F

    return p0
.end method

.method static synthetic access$4702(Lorg/telegram/ui/Components/SharedMediaLayout;F)F
    .locals 0

    .line 131
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsProgress:F

    return p1
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/view/View;)I
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getMessageId(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrolling:Z

    return p0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrolling:Z

    return p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->showFloatingDateView()V

    return-void
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/SharedMediaLayout;Ljava/lang/String;)I
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/graphics/Paint;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/SharedMediaLayout;IIIZ)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SharedMediaLayout;->jumpToDate(IIIZ)V

    return-void
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->saveScrollPosition()V

    return-void
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->hideFloatingDateView(Z)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animatingForward:Z

    return p0
.end method

.method static synthetic access$6002(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animatingForward:Z

    return p1
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollToTop()V

    return-void
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->startStopVisibleGifs()V

    return-void
.end method

.method static synthetic access$6302(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$6802(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->backAnimation:Z

    return p0
.end method

.method static synthetic access$7002(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybeStartTracking:Z

    return p1
.end method

.method static synthetic access$7102(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    return p1
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$7302(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    return-object p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    return-object p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    return-object p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Components/SharedMediaLayout;I)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->fixLayoutInternal(I)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/FragmentContextView;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    return-object p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method static synthetic access$8100(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    return p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/Components/SharedMediaLayout;Ljava/lang/String;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    return-object p0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlist:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioCellCache:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioCache:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    return-object p0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/Components/SharedMediaLayout;ILorg/telegram/ui/Components/RecyclerListView;Z)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout;->findPeriodAndJumpToDate(ILorg/telegram/ui/Components/RecyclerListView;Z)V

    return-void
.end method

.method static synthetic access$9200(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/RecyclerListView;ILandroid/util/SparseBooleanArray;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout;->animateItemsEnter(Lorg/telegram/ui/Components/RecyclerListView;ILandroid/util/SparseBooleanArray;)V

    return-void
.end method

.method static synthetic access$9300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object p0
.end method

.method private animateItemsEnter(Lorg/telegram/ui/Components/RecyclerListView;ILandroid/util/SparseBooleanArray;)V
    .locals 9

    .line 4532
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v7, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4535
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4536
    instance-of v3, v1, Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v3, :cond_0

    move-object v7, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_2

    .line 4542
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4544
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$28;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p3

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/SharedMediaLayout$28;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/RecyclerListView;Landroid/util/SparseBooleanArray;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private animateToMediaColumnsCount(I)V
    .locals 5

    const/4 v0, 0x0

    .line 2923
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getMediaPage(I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    const/4 v2, -0x1

    .line 2924
    iput v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    if-eqz v1, :cond_0

    .line 2927
    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 2928
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animateToColumnsCount:I

    .line 2929
    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2930
    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingPhotoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2931
    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4900(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 2932
    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    const/4 v2, 0x1

    .line 2934
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    .line 2935
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v3, v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setListFrozen(Z)V

    const/4 v0, 0x0

    .line 2936
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsProgress:F

    .line 2937
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->saveScrollPosition()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2938
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2940
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationIndex:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationIndex:I

    .line 2941
    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$21;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$21;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2948
    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$22;

    invoke-direct {v2, p0, p1, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$22;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;ILorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2966
    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x64

    .line 2967
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v1, 0x15e

    .line 2968
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2969
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private changeMediaFilterType()V
    .locals 10

    const/4 v0, 0x0

    .line 2654
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getMediaPage(I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2655
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    .line 2658
    :try_start_0
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 2660
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v3, :cond_0

    .line 2663
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->changeTypeAnimation:Z

    .line 2664
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2665
    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 2666
    new-instance v4, Landroid/view/View;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2667
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2668
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2670
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v7, 0xc8

    invoke-virtual {v5, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v9, Lorg/telegram/ui/Components/SharedMediaLayout$17;

    invoke-direct {v9, p0, v4, v1, v3}, Lorg/telegram/ui/Components/SharedMediaLayout$17;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/view/View;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2679
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2680
    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2681
    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2685
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getLastMediaCount()[I

    move-result-object v1

    .line 2686
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getSharedMediaData()[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    .line 2687
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v5, v4, v0

    iget v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-nez v5, :cond_1

    .line 2688
    aget-object v4, v4, v0

    aget v1, v1, v0

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setTotalCount(I)V

    goto :goto_1

    .line 2689
    :cond_1
    aget-object v5, v4, v0

    iget v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v5, v2, :cond_2

    .line 2690
    aget-object v4, v4, v0

    const/4 v5, 0x6

    aget v1, v1, v5

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setTotalCount(I)V

    goto :goto_1

    .line 2692
    :cond_2
    aget-object v4, v4, v0

    const/4 v5, 0x7

    aget v1, v1, v5

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setTotalCount(I)V

    .line 2694
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v1, v1, v0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollDataLoaded:Z

    .line 2695
    iget-wide v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, -0x80000000

    goto :goto_2

    :cond_3
    const v1, 0x7fffffff

    :goto_2
    invoke-direct {p0, v0, v1, v0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->jumpToDate(IIIZ)V

    .line 2696
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->loadFastScrollData(Z)V

    .line 2697
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;->updateSelectedMediaTabText()V

    .line 2698
    iget-wide v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    const/4 v4, 0x0

    .line 2699
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 2700
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 2701
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v7, v6, v0

    iget v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-nez v7, :cond_4

    .line 2702
    aget-object v6, v6, v0

    invoke-virtual {v6, v5, v0, v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;IZZ)Z

    goto :goto_4

    .line 2703
    :cond_4
    aget-object v6, v6, v0

    iget v6, v6, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v6, v2, :cond_5

    .line 2704
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2705
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v6, v6, v0

    invoke-virtual {v6, v5, v0, v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;IZZ)Z

    goto :goto_4

    .line 2708
    :cond_5
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v6

    if-nez v6, :cond_6

    .line 2709
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v6, v6, v0

    invoke-virtual {v6, v5, v0, v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;IZZ)Z

    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method private checkCurrentTabValid()V
    .locals 3

    .line 3390
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getCurrentTabId()I

    move-result v0

    .line 3391
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3392
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getFirstTabId()I

    move-result v0

    .line 3393
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setInitialTabId(I)V

    .line 3394
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$002(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;I)I

    .line 3395
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->switchToCurrentSelectedMode(Z)V

    :cond_0
    return-void
.end method

.method private checkLoadMoreScroll(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 3190
    iget-boolean v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    if-nez v3, :cond_1e

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->jumpToRunnable:Ljava/lang/Runnable;

    if-nez v3, :cond_1e

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    sget v4, Lcom/smedialink/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v3, v4, :cond_0

    goto/16 :goto_5

    .line 3193
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3194
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-wide v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->lastCheckScrollTime:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x12c

    cmp-long v9, v5, v7

    if-gez v9, :cond_1

    return-void

    .line 3197
    :cond_1
    iput-wide v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->lastCheckScrollTime:J

    .line 3198
    iget-boolean v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searching:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchWas:Z

    if-eqz v3, :cond_2

    return-void

    .line 3201
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_3

    const/4 v7, 0x0

    goto :goto_0

    .line 3202
    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v7, v6

    .line 3203
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v8

    .line 3204
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v9

    const/16 v10, 0x64

    const/4 v11, 0x4

    const/4 v12, 0x2

    if-eqz v9, :cond_4

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v9

    if-eq v9, v6, :cond_4

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v9

    if-eq v9, v12, :cond_4

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v9

    if-ne v9, v11, :cond_b

    .line 3205
    :cond_4
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    .line 3206
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->getStartOffset()I

    move-result v9

    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v13, v13, v8

    iget-object v13, v13, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/2addr v9, v13

    .line 3207
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v14, v13, v8

    iget-boolean v14, v14, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollDataLoaded:Z

    if-eqz v14, :cond_a

    aget-object v13, v13, v8

    iget-object v13, v13, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-le v13, v12, :cond_a

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v13

    if-nez v13, :cond_a

    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v13, v13, v8

    iget-object v13, v13, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eqz v13, :cond_a

    if-nez v8, :cond_5

    .line 3210
    iget v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:I

    goto :goto_1

    :cond_5
    const/4 v13, 0x1

    .line 3212
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v15

    int-to-float v15, v15

    int-to-float v13, v13

    div-float/2addr v15, v13

    div-float/2addr v14, v15

    mul-float v14, v14, v13

    const/high16 v13, 0x3fc00000    # 1.5f

    mul-float v14, v14, v13

    float-to-int v13, v14

    if-ge v13, v10, :cond_6

    const/16 v13, 0x64

    .line 3216
    :cond_6
    iget-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v14, v14, v8

    iget-object v14, v14, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    iget v14, v14, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->startOffset:I

    if-ge v13, v14, :cond_7

    .line 3217
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v13, v13, v8

    iget-object v13, v13, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    iget v13, v13, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->startOffset:I

    :cond_7
    if-le v3, v9, :cond_8

    sub-int v14, v3, v9

    if-gt v14, v13, :cond_9

    :cond_8
    add-int v14, v3, v7

    .line 3219
    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v15, v15, v8

    invoke-static {v15}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result v15

    if-ge v14, v15, :cond_a

    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v15, v15, v5

    invoke-static {v15}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result v15

    sub-int/2addr v15, v14

    if-le v15, v13, :cond_a

    .line 3220
    :cond_9
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0, v8, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;ILorg/telegram/ui/Components/RecyclerListView;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->jumpToRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_a
    move v8, v9

    .line 3229
    :cond_b
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v9

    const/4 v13, 0x7

    if-ne v9, v13, :cond_c

    add-int/2addr v3, v7

    add-int/lit8 v8, v8, -0x8

    if-lt v3, v8, :cond_1e

    .line 3233
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->onLoadMoreMembersListener:Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;

    if-eqz v1, :cond_1e

    .line 3234
    invoke-interface {v1}, Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;->onLoadMore()V

    goto/16 :goto_5

    .line 3238
    :cond_c
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v9

    const/4 v14, 0x6

    const/4 v15, 0x5

    if-ne v9, v14, :cond_d

    if-lez v7, :cond_1e

    .line 3240
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->access$6400(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->access$6500(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->access$6600(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    add-int/2addr v3, v7

    sub-int/2addr v8, v15

    if-lt v3, v8, :cond_1e

    .line 3241
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->access$6600(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->access$6600(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v1, v2, v3, v10}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->access$6700(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;JI)V

    goto/16 :goto_5

    .line 3246
    :cond_d
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v9

    const/4 v10, 0x3

    if-nez v9, :cond_e

    const/4 v9, 0x3

    goto :goto_2

    .line 3248
    :cond_e
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v9

    if-ne v9, v15, :cond_f

    const/16 v9, 0xa

    goto :goto_2

    :cond_f
    const/4 v9, 0x6

    :goto_2
    add-int/2addr v7, v3

    sub-int/2addr v8, v9

    if-gt v7, v8, :cond_10

    .line 3254
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    aget-object v7, v7, v8

    iget-boolean v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loadingAfterFastScroll:Z

    if-eqz v7, :cond_19

    :cond_10
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    aget-object v7, v7, v8

    iget-boolean v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    if-nez v7, :cond_19

    .line 3256
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v7

    if-nez v7, :cond_13

    .line 3258
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v8, v7, v5

    iget v8, v8, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v8, v6, :cond_11

    const/16 v22, 0x6

    goto :goto_3

    .line 3260
    :cond_11
    aget-object v7, v7, v5

    iget v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v7, v12, :cond_12

    const/16 v22, 0x7

    goto :goto_3

    :cond_12
    const/16 v22, 0x0

    goto :goto_3

    .line 3263
    :cond_13
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v7

    if-ne v7, v6, :cond_14

    const/16 v22, 0x1

    goto :goto_3

    .line 3265
    :cond_14
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v7

    if-ne v7, v12, :cond_15

    const/16 v22, 0x2

    goto :goto_3

    .line 3267
    :cond_15
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v7

    if-ne v7, v11, :cond_16

    const/16 v22, 0x4

    goto :goto_3

    .line 3269
    :cond_16
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v7

    if-ne v7, v15, :cond_17

    const/16 v22, 0x5

    goto :goto_3

    :cond_17
    const/16 v22, 0x3

    .line 3274
    :goto_3
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    aget-object v7, v7, v8

    iget-object v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v7, v7, v5

    if-nez v7, :cond_18

    .line 3275
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    aget-object v7, v7, v8

    iput-boolean v6, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    .line 3276
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v16

    iget-wide v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    const/16 v19, 0x32

    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v11

    aget-object v10, v10, v11

    iget-object v10, v10, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    aget v20, v10, v5

    const/16 v21, 0x0

    iget v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    const/16 v24, 0x1

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v25

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v12

    aget-object v11, v11, v12

    iget v11, v11, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->requestIndex:I

    move-wide/from16 v17, v7

    move/from16 v23, v10

    move/from16 v26, v11

    invoke-virtual/range {v16 .. v26}, Lorg/telegram/messenger/MediaDataController;->loadMedia(JIIIIIIII)V

    goto :goto_4

    .line 3277
    :cond_18
    iget-wide v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    const-wide/16 v10, 0x0

    cmp-long v12, v7, v10

    if-eqz v12, :cond_19

    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    aget-object v7, v7, v8

    iget-object v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v7, v7, v6

    if-nez v7, :cond_19

    .line 3278
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    aget-object v7, v7, v8

    iput-boolean v6, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    .line 3279
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v16

    iget-wide v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    const/16 v19, 0x32

    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v11

    aget-object v10, v10, v11

    iget-object v10, v10, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    aget v20, v10, v6

    const/16 v21, 0x0

    iget v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    const/16 v24, 0x1

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v25

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v12

    aget-object v11, v11, v12

    iget v11, v11, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->requestIndex:I

    move-wide/from16 v17, v7

    move/from16 v23, v10

    move/from16 v26, v11

    invoke-virtual/range {v16 .. v26}, Lorg/telegram/messenger/MediaDataController;->loadMedia(JIIIIIIII)V

    .line 3283
    :cond_19
    :goto_4
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    aget-object v7, v7, v8

    invoke-static {v7}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result v7

    .line 3284
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    if-nez v8, :cond_1a

    .line 3285
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getPositionForIndex(I)I

    move-result v7

    :cond_1a
    sub-int v7, v3, v7

    add-int/2addr v9, v6

    if-ge v7, v9, :cond_1b

    .line 3287
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    aget-object v7, v7, v8

    iget-boolean v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    if-nez v7, :cond_1b

    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    aget-object v7, v7, v8

    iget-boolean v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startReached:Z

    if-nez v7, :cond_1b

    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    aget-object v7, v7, v8

    iget-boolean v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loadingAfterFastScroll:Z

    if-nez v7, :cond_1b

    .line 3288
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->loadFromStart(I)V

    .line 3290
    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v5

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v1

    if-ne v1, v2, :cond_1e

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v5

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v5

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    if-ne v1, v15, :cond_1e

    :cond_1c
    if-eq v3, v4, :cond_1e

    .line 3291
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 3292
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    if-nez v2, :cond_1e

    .line 3293
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz v2, :cond_1d

    .line 3294
    check-cast v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    .line 3295
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->getMessageObject(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 3297
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-virtual {v2, v1, v5, v6}, Lorg/telegram/ui/Cells/ChatActionCell;->setCustomDate(IZZ)V

    goto :goto_5

    .line 3299
    :cond_1d
    instance-of v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v2, :cond_1e

    .line 3300
    check-cast v1, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 3301
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ContextLinkCell;->getDate()I

    move-result v1

    invoke-virtual {v2, v1, v5, v6}, Lorg/telegram/ui/Cells/ChatActionCell;->setCustomDate(IZZ)V

    :cond_1e
    :goto_5
    return-void
.end method

.method private checkPointerIds(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 405
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 408
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pointerId1:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pointerId2:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-ne v0, v2, :cond_1

    return v3

    .line 411
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pointerId1:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-ne v0, v2, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pointerId2:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    if-ne v0, p1, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method public static createEmptyStubView(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 1

    .line 5816
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;

    invoke-direct {v0, p0, p4}, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-nez p1, :cond_1

    .line 5818
    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5819
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->NoMediaSecret:I

    const-string p2, "NoMediaSecret"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 5821
    :cond_0
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->NoMedia:I

    const-string p2, "NoMedia"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_1
    const/4 p0, 0x1

    if-ne p1, p0, :cond_3

    .line 5824
    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 5825
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->NoSharedFilesSecret:I

    const-string p2, "NoSharedFilesSecret"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 5827
    :cond_2
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->NoSharedFiles:I

    const-string p2, "NoSharedFiles"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    const/4 p0, 0x2

    if-ne p1, p0, :cond_5

    .line 5830
    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 5831
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->NoSharedVoiceSecret:I

    const-string p2, "NoSharedVoiceSecret"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 5833
    :cond_4
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->NoSharedVoice:I

    const-string p2, "NoSharedVoice"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    const/4 p0, 0x3

    if-ne p1, p0, :cond_7

    .line 5836
    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 5837
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->NoSharedLinksSecret:I

    const-string p2, "NoSharedLinksSecret"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 5839
    :cond_6
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->NoSharedLinks:I

    const-string p2, "NoSharedLinks"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    const/4 p0, 0x4

    if-eq p1, p0, :cond_c

    .line 5841
    sget p0, Lcom/smedialink/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne p1, p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 p0, 0x5

    if-ne p1, p0, :cond_a

    .line 5852
    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 5853
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->NoSharedGifSecret:I

    const-string p2, "NoSharedGifSecret"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 5855
    :cond_9
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->NoGIFs:I

    const-string p2, "NoGIFs"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_a
    const/4 p0, 0x6

    const/4 p2, 0x0

    if-ne p1, p0, :cond_b

    .line 5858
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5859
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->NoGroupsInCommon:I

    const-string p2, "NoGroupsInCommon"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_b
    const/4 p0, 0x7

    if-ne p1, p0, :cond_f

    .line 5861
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5862
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5864
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyImageView:Landroid/widget/ImageView;

    sget p1, Lorg/telegram/messenger/R$drawable;->fork_members_tip:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5865
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->common_empty_state_title:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 5842
    :cond_c
    :goto_0
    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 5843
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->NoSharedAudioSecret:I

    const-string p2, "NoSharedAudioSecret"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 5846
    :cond_d
    sget p0, Lcom/smedialink/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne p1, p0, :cond_e

    .line 5847
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->music_playlist_empty_title:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 5849
    :cond_e
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->NoSharedAudio:I

    const-string p2, "NoSharedAudio"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    :goto_1
    return-object v0
.end method

.method private createScrollingTextTabStrip(Landroid/content/Context;)Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;
    .locals 4

    .line 2993
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p0, p1, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2994
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->initialTab:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 2995
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setInitialTabId(I)V

    .line 2996
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->initialTab:I

    :cond_0
    const-string/jumbo p1, "windowBackgroundWhite"

    .line 2998
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;->setBackgroundColor(I)V

    const-string p1, "profile_tabSelectedLine"

    const-string v1, "profile_tabSelectedText"

    const-string v2, "profile_tabText"

    const-string v3, "profile_tabSelector"

    .line 2999
    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3000
    new-instance p1, Lorg/telegram/ui/Components/SharedMediaLayout$23;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$23;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setDelegate(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;)V

    return-object v0
.end method

.method private fillMediaData(I)Z
    .locals 7

    .line 3092
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getSharedMediaData()[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    .line 3097
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v2, p1

    iget-boolean v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollDataLoaded:Z

    if-nez v3, :cond_2

    .line 3098
    aget-object v2, v2, p1

    aget-object v3, v0, p1

    iget v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    iput v3, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    goto :goto_0

    .line 3101
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v2, p1

    aget-object v3, v0, p1

    iget v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    iput v3, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    .line 3103
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    aget-object v3, v0, p1

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3105
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    aget-object v3, v0, p1

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3106
    aget-object v2, v0, p1

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sectionArrays:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3107
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v4, v4, p1

    iget-object v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sectionArrays:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    :goto_2
    const/4 v2, 0x2

    if-ge v1, v2, :cond_4

    .line 3110
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    aget-object v3, v0, p1

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v3

    aput-object v3, v2, v1

    .line 3111
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v2, p1

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    aget-object v4, v0, p1

    iget-object v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    aget v4, v4, v1

    aput v4, v3, v1

    .line 3112
    aget-object v2, v2, p1

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-object v3, v0, p1

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v3, v3, v1

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3114
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v1, v1, p1

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    aget-object v2, v0, p1

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3115
    aget-object p1, v0, p1

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private findPeriodAndJumpToDate(ILorg/telegram/ui/Components/RecyclerListView;Z)V
    .locals 4

    .line 6140
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    .line 6142
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    if-ltz p2, :cond_3

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 6145
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 6146
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    iget v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->startOffset:I

    if-gt p2, v3, :cond_0

    .line 6147
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    move-object v1, p2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 6152
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    :cond_2
    if-eqz v1, :cond_3

    .line 6156
    iget p2, v1, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->maxId:I

    iget v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->startOffset:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Components/SharedMediaLayout;->jumpToDate(IIIZ)V

    :cond_3
    return-void
.end method

.method private finishPinchToMediaColumnsCount()V
    .locals 8

    .line 2820
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2822
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 2823
    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-nez v3, :cond_0

    .line 2824
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_b

    .line 2829
    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsProgress:F

    const/16 v3, 0x8

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v2, v4

    if-nez v5, :cond_7

    .line 2830
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getItemCount()I

    move-result v2

    .line 2831
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    .line 2832
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v4, v4, v1

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setListFrozen(Z)V

    .line 2833
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2834
    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animateToColumnsCount:I

    iput v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:I

    .line 2835
    invoke-static {v3}, Lorg/telegram/messenger/SharedConfig;->setMediaColumnsCount(I)V

    .line 2836
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:I

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 2837
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    .line 2838
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getItemCount()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 2839
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    goto :goto_2

    .line 2841
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2844
    :goto_2
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    if-ltz v0, :cond_5

    .line 2845
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v2, v0

    if-ge v1, v2, :cond_6

    .line 2846
    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    if-nez v0, :cond_4

    .line 2847
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4900(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2849
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterOffset:I

    .line 2851
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterOffset:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2855
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->saveScrollPosition()V

    :cond_6
    return-void

    :cond_7
    const/4 v5, 0x0

    cmpl-float v6, v2, v5

    if-nez v6, :cond_8

    .line 2860
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    .line 2861
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v2, v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setListFrozen(Z)V

    .line 2862
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2863
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    :cond_8
    const v3, 0x3e4ccccd    # 0.2f

    const/4 v6, 0x1

    cmpl-float v3, v2, v3

    if-lez v3, :cond_9

    const/4 v3, 0x1

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    const/4 v7, 0x2

    new-array v7, v7, [F

    aput v2, v7, v1

    if-eqz v3, :cond_a

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    :goto_5
    aput v4, v7, v6

    .line 2867
    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2869
    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$19;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$19;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2876
    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$20;

    invoke-direct {v2, p0, v3, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$20;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;ZLorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2913
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xc8

    .line 2914
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2915
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_b
    return-void
.end method

.method private fixLayoutInternal(I)V
    .locals 2

    .line 5362
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 5363
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    if-nez p1, :cond_1

    .line 5365
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5366
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    goto :goto_0

    .line 5368
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 5372
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method private forwardCloud()V
    .locals 4

    .line 198
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    .line 202
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isCloudAlbumsEnabled:Z

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v2, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {v2, v3, v0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 205
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;->didSelectCloudDialog(J)V

    :goto_0
    return-void
.end method

.method private getMediaPage(I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;
    .locals 2

    const/4 p1, 0x0

    .line 2716
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 2717
    aget-object v0, v0, p1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2718
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getMessageId(Landroid/view/View;)I
    .locals 1

    .line 2593
    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v0, :cond_0

    .line 2594
    check-cast p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageId()I

    move-result p1

    return p1

    .line 2596
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v0, :cond_1

    .line 2597
    check-cast p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 2598
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    return p1

    .line 2600
    :cond_1
    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v0, :cond_2

    .line 2601
    check-cast p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    .line 2602
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 7309
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 7310
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private hasNoforwardsMessage()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ltz v2, :cond_4

    .line 2632
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 2633
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 2634
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v6, v6, v2

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2636
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 2637
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_1

    .line 2638
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v6, v6, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_1

    .line 2639
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v5, :cond_1

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    return v3
.end method

.method private hideFloatingDateView(Z)V
    .locals 8

    .line 3123
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hideFloatingDateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3124
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3127
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 3128
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 3129
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3130
    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 3133
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xb4

    .line 3134
    invoke-virtual {p1, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3135
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    .line 3136
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v1, v6

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v4, [F

    const/16 v5, 0x30

    .line 3137
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->additionalFloatingTranslation:F

    add-float/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v1, v4

    .line 3135
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3138
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3139
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$24;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$24;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3145
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 3147
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private jumpToDate(IIIZ)V
    .locals 4

    .line 6163
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6164
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 6165
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 6166
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setMaxId(II)V

    .line 6167
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setEndReached(IZ)V

    .line 6168
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v0, p1

    iput-boolean v1, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startReached:Z

    .line 6169
    aget-object v0, v0, p1

    invoke-static {v0, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$702(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;I)I

    .line 6170
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v0, p1

    aget-object v0, v0, p1

    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    sub-int/2addr v0, p3

    sub-int/2addr v0, v2

    invoke-static {v3, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$7502(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;I)I

    .line 6171
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object p3, p3, p1

    invoke-static {p3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$7500(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result p3

    if-gez p3, :cond_0

    .line 6172
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object p3, p3, p1

    invoke-static {p3, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$7502(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;I)I

    .line 6174
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, p3, p1

    iput p2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->min_id:I

    .line 6175
    aget-object p2, p3, p1

    iput-boolean v2, p2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loadingAfterFastScroll:Z

    .line 6176
    aget-object p2, p3, p1

    iput-boolean v1, p2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    .line 6177
    aget-object p2, p3, p1

    iget p3, p2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->requestIndex:I

    add-int/2addr p3, v2

    iput p3, p2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->requestIndex:I

    .line 6178
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getMediaPage(I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6179
    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 6180
    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    if-eqz p4, :cond_3

    const/4 p2, 0x0

    .line 6183
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length p4, p3

    if-ge p2, p4, :cond_3

    .line 6184
    aget-object p3, p3, p2

    invoke-static {p3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p3

    if-ne p3, p1, :cond_2

    .line 6185
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p3, p3, p2

    invoke-static {p3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object p3

    iget-object p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, p4, p1

    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    sub-int/2addr v0, v2

    aget-object p4, p4, p1

    invoke-static {p4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result p4

    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    invoke-virtual {p3, p4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private synthetic lambda$checkLoadMoreScroll$15(ILorg/telegram/ui/Components/RecyclerListView;)V
    .locals 1

    const/4 v0, 0x0

    .line 3221
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->findPeriodAndJumpToDate(ILorg/telegram/ui/Components/RecyclerListView;Z)V

    const/4 p1, 0x0

    .line 3222
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->jumpToRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$forwardCloud$0(J)V
    .locals 12

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->prepareForwardingMessages()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-wide v3, p1

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/ForwardingMessagesParams;Z)I

    .line 200
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->closeActionMode()Z

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$23(I)V
    .locals 5

    .line 7146
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, p1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7147
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, p1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 7149
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, p1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7150
    instance-of v4, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz v4, :cond_0

    .line 7151
    check-cast v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->updateCheckboxColor()V

    goto :goto_1

    .line 7152
    :cond_0
    instance-of v4, v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v4, :cond_1

    .line 7153
    check-cast v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->update(I)V

    goto :goto_1

    .line 7154
    :cond_1
    instance-of v4, v3, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v4, :cond_2

    .line 7155
    check-cast v3, Lorg/telegram/ui/Cells/UserCell;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static synthetic lambda$loadFastScrollData$16(Lorg/telegram/ui/Components/SharedMediaLayout$Period;Lorg/telegram/ui/Components/SharedMediaLayout$Period;)I
    .locals 0

    .line 3463
    iget p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->date:I

    iget p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->date:I

    sub-int/2addr p1, p0

    return p1
.end method

.method private synthetic lambda$loadFastScrollData$17(Lorg/telegram/tgnet/TLRPC$TL_error;IILorg/telegram/tgnet/TLObject;)V
    .locals 3

    if-eqz p1, :cond_0

    return-void

    .line 3451
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, p1, p3

    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->requestIndex:I

    if-eq p2, v0, :cond_1

    return-void

    .line 3454
    :cond_1
    check-cast p4, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsPositions;

    .line 3455
    aget-object p1, p1, p3

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3456
    iget-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsPositions;->positions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    .line 3457
    iget-object v1, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsPositions;->positions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_searchResultPosition;

    .line 3458
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_searchResultPosition;->date:I

    if-eqz v2, :cond_2

    .line 3459
    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$Period;-><init>(Lorg/telegram/tgnet/TLRPC$TL_searchResultPosition;)V

    .line 3460
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v1, v1, p3

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3463
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object p1, p1, p3

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    sget-object v0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda15;->INSTANCE:Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda15;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3464
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object p1, p1, p3

    iget p4, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsPositions;->count:I

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setTotalCount(I)V

    .line 3465
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object p4, p1, p3

    const/4 v0, 0x1

    iput-boolean v0, p4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollDataLoaded:Z

    .line 3466
    aget-object p1, p1, p3

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 3467
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length p4, p1

    if-ge p2, p4, :cond_5

    .line 3468
    aget-object p1, p1, p2

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p1

    if-ne p1, p3, :cond_4

    .line 3469
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p4, p1, p2

    iput-boolean v0, p4, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollEnabled:Z

    .line 3470
    aget-object p1, p1, p2

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateFastScrollVisibility(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Z)V

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 3474
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$loadFastScrollData$18(IILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 3447
    new-instance v6, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda14;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/tgnet/TLRPC$TL_error;IILorg/telegram/tgnet/TLObject;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    const/4 v0, 0x1

    .line 584
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->hideFloatingDateView(Z)V

    return-void
.end method

.method private synthetic lambda$new$10(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x65

    .line 1812
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->onActionBarItemClick(Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$new$11(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Landroid/view/View;IFF)V
    .locals 8

    .line 2362
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    .line 2363
    instance-of p2, p2, Lorg/telegram/ui/Cells/UserCell;

    if-eqz p2, :cond_1

    .line 2365
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3600(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2366
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3700(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3600(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    goto :goto_0

    .line 2368
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3700(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    :goto_0
    const/4 p2, 0x0

    .line 2370
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->onMemberClick(Lorg/telegram/tgnet/TLRPC$ChatParticipant;Z)Z

    goto/16 :goto_3

    .line 2371
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    if-ne p1, p2, :cond_e

    .line 2373
    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object p1

    .line 2374
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz p2, :cond_2

    .line 2375
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 2376
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide p1

    goto :goto_1

    .line 2377
    :cond_2
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz p2, :cond_4

    .line 2378
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 2379
    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    :goto_1
    const-wide/16 p3, 0x0

    cmp-long p5, p1, p3

    if-eqz p5, :cond_4

    .line 2384
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide p3

    cmp-long p5, p1, p3

    if-nez p5, :cond_3

    goto :goto_2

    .line 2387
    :cond_3
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p4, "user_id"

    .line 2388
    invoke-virtual {p3, p4, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2389
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance p2, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p2, p3}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_3

    :cond_4
    :goto_2
    return-void

    .line 2391
    :cond_5
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    instance-of v0, p2, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v0, :cond_7

    .line 2392
    check-cast p2, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 2393
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 2394
    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-string p1, "chat_id"

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2395
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 2398
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance p3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p3, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_3

    .line 2399
    :cond_7
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    instance-of v0, p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v0, :cond_8

    .line 2400
    move-object p4, p2

    check-cast p4, Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {p4}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    move-object v0, p0

    move v1, p3

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;II)V

    goto/16 :goto_3

    .line 2401
    :cond_8
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    instance-of v0, p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz v0, :cond_9

    .line 2402
    move-object p4, p2

    check-cast p4, Lorg/telegram/ui/Cells/SharedLinkCell;

    invoke-virtual {p4}, Lorg/telegram/ui/Cells/SharedLinkCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    move-object v0, p0

    move v1, p3

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;II)V

    goto/16 :goto_3

    .line 2403
    :cond_9
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    sget v1, Lcom/smedialink/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v0, v1, :cond_b

    :cond_a
    instance-of v0, p2, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v0, :cond_b

    .line 2404
    move-object p4, p2

    check-cast p4, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {p4}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    move-object v0, p0

    move v1, p3

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;II)V

    goto :goto_3

    .line 2405
    :cond_b
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    instance-of v0, p2, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v0, :cond_c

    .line 2406
    move-object p4, p2

    check-cast p4, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {p4}, Lorg/telegram/ui/Cells/ContextLinkCell;->getParentObject()Ljava/lang/Object;

    move-result-object p4

    move-object v3, p4

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    move-object v0, p0

    move v1, p3

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;II)V

    goto :goto_3

    .line 2407
    :cond_c
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    if-nez v0, :cond_e

    instance-of v0, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v0, :cond_e

    .line 2408
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    .line 2409
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->canRevealSpoiler()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2410
    invoke-virtual {v0, p4, p5}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->startRevealMedia(FF)V

    return-void

    .line 2413
    :cond_d
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    if-eqz v5, :cond_e

    const/4 v6, 0x0

    .line 2415
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v7

    move-object v2, p0

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/SharedMediaLayout;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;II)V

    :cond_e
    :goto_3
    return-void
.end method

.method private synthetic lambda$new$12(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Landroid/view/View;I)Z
    .locals 4

    .line 2442
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2445
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2446
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->getOnItemClickListener()Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2448
    invoke-interface {p1, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    :cond_1
    return v2

    .line 2452
    :cond_2
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_6

    instance-of v0, p2, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v0, :cond_6

    .line 2454
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3600(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2455
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3700(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3600(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    goto :goto_0

    :cond_3
    if-ltz p3, :cond_5

    .line 2458
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3700(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p3, p1, :cond_4

    goto :goto_1

    .line 2462
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3700(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 2464
    :goto_0
    invoke-virtual {p0, p1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->onMemberClick(Lorg/telegram/tgnet/TLRPC$ChatParticipant;Z)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    return v1

    .line 2465
    :cond_6
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p3

    if-ne p3, v2, :cond_7

    instance-of p3, p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz p3, :cond_7

    .line 2466
    move-object p1, p2

    check-cast p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    move-result p1

    return p1

    .line 2467
    :cond_7
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p3

    const/4 v0, 0x3

    if-ne p3, v0, :cond_8

    instance-of p3, p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz p3, :cond_8

    .line 2468
    move-object p1, p2

    check-cast p1, Lorg/telegram/ui/Cells/SharedLinkCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedLinkCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    move-result p1

    return p1

    .line 2469
    :cond_8
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_9

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p3

    const/4 v0, 0x4

    if-eq p3, v0, :cond_9

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p3

    sget v0, Lcom/smedialink/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne p3, v0, :cond_a

    :cond_9
    instance-of p3, p2, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz p3, :cond_a

    .line 2470
    move-object p1, p2

    check-cast p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    move-result p1

    return p1

    .line 2471
    :cond_a
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p3

    const/4 v0, 0x5

    if-ne p3, v0, :cond_b

    instance-of p3, p2, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz p3, :cond_b

    .line 2472
    move-object p1, p2

    check-cast p1, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ContextLinkCell;->getParentObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    move-result p1

    return p1

    .line 2473
    :cond_b
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p1

    if-nez p1, :cond_c

    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz p1, :cond_c

    .line 2474
    move-object p1, p2

    check-cast p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 2476
    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    move-result p1

    return p1

    :cond_c
    return v1
.end method

.method private static synthetic lambda$new$13(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$14(ZZ)V
    .locals 0

    if-nez p1, :cond_0

    .line 2564
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    .line 1570
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast p1, Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ProfileActivity;->showChooseMembersFilterDialog()V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 0

    .line 1576
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast p1, Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ProfileActivity;->processFilteredMembers()V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 0

    .line 1759
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->closeActionMode()Z

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 1

    .line 1773
    sget v0, Lcom/smedialink/common/IdFabric$Menu;->TOGGLE_MUSIC_PLAYLIST:I

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->onActionBarItemClick(Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x66

    .line 1785
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->onActionBarItemClick(Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/View;)V
    .locals 1

    .line 1792
    sget v0, Lcom/smedialink/common/IdFabric$Menu;->MESSAGE_FORWARD_CLOUD:I

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->onActionBarItemClick(Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$new$9(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x64

    .line 1802
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->onActionBarItemClick(Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$onActionBarItemClick$20()V
    .locals 2

    const/4 v0, 0x0

    .line 3576
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->showActionMode(Z)V

    .line 3577
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    .line 3578
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    .line 3579
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    return-void
.end method

.method private synthetic lambda$onActionBarItemClick$21()Ljava/util/ArrayList;
    .locals 1

    .line 3612
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->prepareForwardingMessages()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$onActionBarItemClick$22(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 3614
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x1

    const/4 v3, 0x1

    :goto_0
    const/4 v13, 0x0

    if-ltz v3, :cond_3

    .line 3616
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3617
    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v13, v5, :cond_0

    .line 3618
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v5, v5, v3

    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 3620
    :cond_0
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3621
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 3622
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_1

    .line 3623
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v6, v6, v3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3626
    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3628
    :cond_3
    iput v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    .line 3629
    iput v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    iput v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    .line 3630
    invoke-direct {v0, v13}, Lorg/telegram/ui/Components/SharedMediaLayout;->showActionMode(Z)V

    .line 3632
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v15, :cond_8

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v3, v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_8

    if-nez p3, :cond_8

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/DialogsActivity;->isCustomMultiForward()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_5

    .line 3655
    :cond_4
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v3, v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    .line 3656
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "scrollToTopOnResume"

    .line 3657
    invoke-virtual {v5, v6, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3658
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3659
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v3

    const-string v4, "enc_id"

    invoke-virtual {v5, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    .line 3661
    :cond_5
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string/jumbo v6, "user_id"

    .line 3662
    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_3

    :cond_6
    neg-long v3, v3

    const-string v6, "chat_id"

    .line 3664
    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3666
    :goto_3
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v5, v1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v3

    if-nez v3, :cond_7

    return v15

    .line 3671
    :cond_7
    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v6, v13, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3673
    new-instance v3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v3, v5}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 3674
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->applyTopic(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagesStorage$TopicKey;)V

    .line 3675
    invoke-virtual {v1, v3, v15}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 3676
    invoke-virtual {v3, v15, v14}, Lorg/telegram/ui/ChatActivity;->showFieldPanelForForward(ZLjava/util/ArrayList;)V

    goto/16 :goto_7

    .line 3633
    :cond_8
    :goto_5
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateRowsSelection()V

    .line 3634
    invoke-virtual {v1, v14}, Lorg/telegram/ui/DialogsActivity;->getSelectedMessages(Ljava/util/ArrayList;)V

    const/4 v12, 0x0

    .line 3635
    :goto_6
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v12, v3, :cond_a

    .line 3636
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v5, v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    if-eqz p3, :cond_9

    .line 3638
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v16

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    iget-boolean v3, v1, Lorg/telegram/ui/DialogsActivity;->notify:Z

    iget v4, v1, Lorg/telegram/ui/DialogsActivity;->scheduleDate:I

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-wide/from16 v18, v5

    move/from16 v27, v3

    move/from16 v28, v4

    invoke-virtual/range {v16 .. v31}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)V

    .line 3640
    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-boolean v9, v1, Lorg/telegram/ui/DialogsActivity;->notify:Z

    iget v10, v1, Lorg/telegram/ui/DialogsActivity;->scheduleDate:I

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/DialogsActivity;->getForwardingParams()Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v16

    const/16 v17, 0x1

    move-object v4, v14

    move/from16 v18, v12

    move-object/from16 v12, v16

    move/from16 v13, v17

    invoke-virtual/range {v3 .. v13}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/ForwardingMessagesParams;Z)I

    add-int/lit8 v12, v18, 0x1

    const/4 v13, 0x0

    goto :goto_6

    .line 3642
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    const/4 v1, 0x0

    .line 3644
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v4, v3, Lorg/telegram/ui/ProfileActivity;

    if-eqz v4, :cond_b

    .line 3645
    check-cast v3, Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ProfileActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    :cond_b
    if-eqz v1, :cond_d

    .line 3648
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v15, :cond_c

    const/4 v3, 0x0

    .line 3649
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v2, v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    const/16 v4, 0x35

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;)V

    goto :goto_7

    :cond_c
    const-wide/16 v3, 0x0

    const/16 v5, 0x35

    .line 3651
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_d
    :goto_7
    return v15
.end method

.method private static synthetic lambda$showFastScrollHint$19(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;)V
    .locals 2

    const/4 v0, 0x0

    .line 3498
    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    .line 3499
    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHideHintRunnable:Ljava/lang/Runnable;

    .line 3500
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xdc

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$25;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$25;-><init>(Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 3507
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private static synthetic lambda$static$2(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p0, v0

    mul-float v1, p0, p0

    mul-float v1, v1, p0

    mul-float v1, v1, p0

    mul-float v1, v1, p0

    add-float/2addr v1, v0

    return v1
.end method

.method private loadFastScrollData(Z)V
    .locals 8

    .line 3419
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3422
    :goto_0
    sget-object v2, Lorg/telegram/ui/Components/SharedMediaLayout;->supportedFastScrollTypes:[I

    array-length v3, v2

    if-ge v1, v3, :cond_9

    .line 3423
    aget v2, v2, v1

    .line 3424
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollDataLoaded:Z

    if-eqz v3, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    iget-wide v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    return-void

    .line 3427
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v3, v2

    iput-boolean v0, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollDataLoaded:Z

    .line 3428
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;-><init>()V

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v2, :cond_6

    .line 3430
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v7, v6, v2

    iget v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v7, v5, :cond_4

    .line 3431
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotos;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotos;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1

    .line 3432
    :cond_4
    aget-object v5, v6, v2

    iget v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v5, v4, :cond_5

    .line 3433
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVideo;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVideo;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1

    .line 3435
    :cond_5
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideo;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideo;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1

    :cond_6
    if-ne v2, v5, :cond_7

    .line 3438
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1

    :cond_7
    if-ne v2, v4, :cond_8

    .line 3440
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterRoundVoice;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterRoundVoice;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1

    .line 3442
    :cond_8
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    :goto_1
    const/16 v4, 0x64

    .line 3444
    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;->limit:I

    .line 3445
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3446
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v4, v4, v2

    iget v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->requestIndex:I

    .line 3447
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v5

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda17;

    invoke-direct {v6, p0, v4, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;II)V

    invoke-virtual {v5, v3, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    .line 3476
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private loadFromStart(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v1, :cond_2

    .line 3312
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v2, v5

    iget v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v3, v6, :cond_0

    const/4 v2, 0x6

    const/4 v13, 0x6

    goto :goto_0

    .line 3314
    :cond_0
    aget-object v2, v2, v5

    iget v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v2, v4, :cond_1

    const/4 v2, 0x7

    const/4 v13, 0x7

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    :cond_2
    if-ne v1, v6, :cond_3

    const/4 v13, 0x1

    goto :goto_0

    :cond_3
    if-ne v1, v4, :cond_4

    const/4 v13, 0x2

    goto :goto_0

    :cond_4
    if-ne v1, v3, :cond_5

    const/4 v13, 0x4

    goto :goto_0

    :cond_5
    if-ne v1, v2, :cond_6

    const/4 v13, 0x5

    goto :goto_0

    :cond_6
    const/4 v2, 0x3

    const/4 v13, 0x3

    .line 3328
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v2, v1

    iput-boolean v6, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    .line 3329
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v7

    iget-wide v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    const/16 v10, 0x32

    const/4 v11, 0x0

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v2, v1

    iget v12, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->min_id:I

    iget v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    const/4 v15, 0x1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v16

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v1, v2, v1

    iget v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->requestIndex:I

    move/from16 v17, v1

    invoke-virtual/range {v7 .. v17}, Lorg/telegram/messenger/MediaDataController;->loadMedia(JIIIIIIII)V

    return-void
.end method

.method private onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;II)V
    .locals 14

    move-object v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move/from16 v3, p5

    if-eqz v2, :cond_2e

    .line 5189
    iget-boolean v4, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    if-eqz v4, :cond_0

    goto/16 :goto_d

    .line 5192
    :cond_0
    iget-boolean v4, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_1d

    .line 5193
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    iget-wide v10, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    cmp-long v4, v8, v10

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    .line 5194
    :goto_0
    iget-object v8, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v8, v8, v4

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v8

    if-ltz v8, :cond_4

    .line 5195
    iget-object v8, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v8, v8, v4

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->remove(I)V

    .line 5196
    invoke-virtual {v2, v6, v5}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(ZLorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 5197
    iget v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    sub-int/2addr v5, v7

    iput v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    .line 5200
    :cond_2
    iget-object v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v5

    if-eqz v5, :cond_8

    sget v5, Lcom/smedialink/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-eq v3, v5, :cond_8

    .line 5201
    iget-object v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->playlist:Ljava/util/LinkedHashMap;

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5202
    iget v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    sub-int/2addr v5, v7

    iput v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    goto :goto_1

    .line 5204
    :cond_3
    iget v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    sub-int/2addr v5, v7

    iput v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    goto :goto_1

    .line 5209
    :cond_4
    iget-object v8, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    iget-object v9, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    add-int/2addr v8, v9

    const/16 v9, 0x64

    if-lt v8, v9, :cond_5

    return-void

    .line 5212
    :cond_5
    iget-object v8, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v8, v8, v4

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-virtual {v8, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5213
    invoke-virtual {v2, v6, v5}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(ZLorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 5214
    iget v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    add-int/2addr v5, v7

    iput v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    .line 5217
    :cond_6
    iget-object v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v5

    if-eqz v5, :cond_8

    sget v5, Lcom/smedialink/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-eq v3, v5, :cond_8

    .line 5218
    iget-object v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->playlist:Ljava/util/LinkedHashMap;

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 5219
    iget v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    add-int/2addr v5, v7

    iput v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    goto :goto_1

    .line 5221
    :cond_7
    iget v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    add-int/2addr v5, v7

    iput v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    .line 5226
    :cond_8
    :goto_1
    iget-object v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_9

    .line 5227
    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->showActionMode(Z)V

    goto :goto_7

    .line 5230
    :cond_9
    iget-object v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v8, 0x8

    if-eqz v5, :cond_e

    .line 5231
    sget v9, Lcom/smedialink/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v3, v9, :cond_a

    .line 5232
    iput v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    .line 5233
    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_5

    .line 5235
    :cond_a
    iget v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    if-eqz v3, :cond_c

    iget v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    if-nez v3, :cond_b

    goto :goto_2

    :cond_b
    const/16 v3, 0x8

    goto :goto_3

    :cond_c
    :goto_2
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5236
    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    if-nez v5, :cond_d

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_tone_add:I

    goto :goto_4

    :cond_d
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_tone_off:I

    :goto_4
    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 5240
    :cond_e
    :goto_5
    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    iget-object v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    iget-object v9, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    add-int/2addr v5, v9

    invoke-virtual {v3, v5, v7}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 5241
    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    if-nez v5, :cond_f

    const/4 v5, 0x0

    goto :goto_6

    :cond_f
    const/16 v5, 0x8

    :goto_6
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5242
    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_11

    .line 5243
    iget-object v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ne v5, v7, :cond_10

    const/4 v8, 0x0

    :cond_10
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5246
    :cond_11
    :goto_7
    iput-boolean v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->scrolling:Z

    .line 5247
    instance-of v3, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v3, :cond_13

    .line 5248
    check-cast v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v4

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_12

    const/4 v6, 0x1

    :cond_12
    invoke-virtual {v0, v6, v7}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto/16 :goto_c

    .line 5249
    :cond_13
    instance-of v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz v3, :cond_15

    .line 5250
    check-cast v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v4

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_14

    move/from16 v2, p4

    const/4 v6, 0x1

    goto :goto_8

    :cond_14
    move/from16 v2, p4

    :goto_8
    invoke-virtual {v0, v2, v6, v7}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setChecked(IZZ)V

    goto/16 :goto_c

    .line 5251
    :cond_15
    instance-of v3, v0, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz v3, :cond_17

    .line 5252
    check-cast v0, Lorg/telegram/ui/Cells/SharedLinkCell;

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v4

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_16

    const/4 v6, 0x1

    :cond_16
    invoke-virtual {v0, v6, v7}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto/16 :goto_c

    .line 5253
    :cond_17
    instance-of v3, v0, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v3, :cond_19

    .line 5254
    check-cast v0, Lorg/telegram/ui/Cells/SharedAudioCell;

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v4

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_18

    const/4 v6, 0x1

    :cond_18
    invoke-virtual {v0, v6, v7}, Lorg/telegram/ui/Cells/SharedAudioCell;->setChecked(ZZ)V

    goto/16 :goto_c

    .line 5255
    :cond_19
    instance-of v3, v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v3, :cond_1b

    .line 5256
    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v4

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_1a

    const/4 v6, 0x1

    :cond_1a
    invoke-virtual {v0, v6, v7}, Lorg/telegram/ui/Cells/ContextLinkCell;->setChecked(ZZ)V

    goto/16 :goto_c

    .line 5257
    :cond_1b
    instance-of v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v3, :cond_2d

    .line 5258
    check-cast v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v4

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_1c

    const/4 v6, 0x1

    :cond_1c
    invoke-virtual {v0, v6, v7}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setChecked(ZZ)V

    goto/16 :goto_c

    :cond_1d
    if-nez v3, :cond_1e

    .line 5262
    iget-object v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, v3

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result v0

    sub-int v4, p1, v0

    if-ltz v4, :cond_2d

    .line 5263
    iget-object v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, v3

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_2d

    .line 5264
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 5265
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    iget-object v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    iget-wide v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    iget-wide v7, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    iget v9, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    iget-object v10, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    goto/16 :goto_c

    :cond_1e
    const/4 v4, 0x2

    if-eq v3, v4, :cond_2c

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2c

    .line 5267
    sget v4, Lcom/smedialink/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v3, v4, :cond_1f

    goto/16 :goto_b

    :cond_1f
    const/4 v4, 0x5

    if-ne v3, v4, :cond_21

    .line 5272
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v4, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 5273
    iget-object v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, v3

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_20

    .line 5275
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5276
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5277
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v5

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    iget-object v13, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-virtual/range {v5 .. v13}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    goto/16 :goto_c

    .line 5279
    :cond_20
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    iget-object v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    iget-wide v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    iget-wide v7, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    iget v9, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    iget-object v10, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    goto/16 :goto_c

    :cond_21
    if-ne v3, v7, :cond_26

    .line 5282
    instance-of v4, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v4, :cond_2d

    .line 5283
    check-cast v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 5284
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    .line 5285
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoaded()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 5286
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->canPreviewDocument()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 5287
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v4, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 5288
    iget-object v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, v3

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_22

    .line 5290
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5291
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5292
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v5

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    iget-object v13, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-virtual/range {v5 .. v13}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    goto :goto_9

    .line 5294
    :cond_22
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    iget-object v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    iget-wide v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    iget-wide v7, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    iget v9, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    iget-object v10, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    :goto_9
    return-void

    .line 5298
    :cond_23
    iget-object v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v2, v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->openDocument(Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto/16 :goto_c

    .line 5299
    :cond_24
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoading()Z

    move-result v2

    if-nez v2, :cond_25

    .line 5300
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    .line 5301
    iput-boolean v7, v2, Lorg/telegram/messenger/MessageObject;->putInDownloadsStore:Z

    .line 5302
    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v4, v2, v6, v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 5303
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon(Z)V

    goto/16 :goto_c

    .line 5305
    :cond_25
    iget-object v2, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 5306
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon(Z)V

    goto :goto_c

    :cond_26
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2d

    .line 5311
    :try_start_0
    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v3

    if-eqz v3, :cond_27

    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    goto :goto_a

    :cond_27
    move-object v3, v5

    :goto_a
    if-eqz v3, :cond_2a

    .line 5313
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;

    if-nez v4, :cond_2a

    .line 5314
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz v4, :cond_28

    .line 5315
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 5316
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;)Z

    return-void

    .line 5318
    :cond_28
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    if-eqz v4, :cond_29

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_29

    .line 5319
    invoke-direct {p0, v3, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;)V

    return-void

    .line 5322
    :cond_29
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    :cond_2a
    if-nez v5, :cond_2b

    .line 5326
    check-cast v0, Lorg/telegram/ui/Cells/SharedLinkCell;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/SharedLinkCell;->getLink(I)Ljava/lang/String;

    move-result-object v5

    :cond_2b
    if-eqz v5, :cond_2d

    .line 5329
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->openUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    .line 5332
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_c

    .line 5268
    :cond_2c
    :goto_b
    instance-of v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v2, :cond_2d

    .line 5269
    check-cast v0, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedAudioCell;->didPressedButton()V

    .line 5336
    :cond_2d
    :goto_c
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateForwardItem()V

    :cond_2e
    :goto_d
    return-void
.end method

.method private onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z
    .locals 8

    .line 5128
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_13

    if-nez p1, :cond_0

    goto/16 :goto_8

    .line 5131
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 5132
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-nez v7, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    aget-object v0, v0, v2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 5133
    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(ZLorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5134
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    add-int/2addr v0, v6

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    .line 5137
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0x8

    if-eqz v0, :cond_8

    .line 5138
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    sget v3, Lcom/smedialink/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v0, v3, :cond_3

    .line 5139
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    .line 5140
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_5

    .line 5142
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlist:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5143
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    add-int/2addr p1, v6

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    goto :goto_1

    .line 5145
    :cond_4
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    add-int/2addr p1, v6

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    .line 5147
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    if-nez v0, :cond_5

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_tone_add:I

    goto :goto_2

    :cond_5
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_tone_off:I

    :goto_2
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 5148
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    const/16 v0, 0x8

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5152
    :cond_8
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    if-nez v0, :cond_9

    const/4 v2, 0x0

    :cond_9
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5153
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_a

    .line 5154
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5156
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {p1, v6, v1}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 5157
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 5158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 5159
    :goto_6
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 5160
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 5161
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    .line 5162
    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 5164
    :cond_b
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v2, 0xfa

    .line 5165
    invoke-virtual {p1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5166
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 5167
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrolling:Z

    .line 5168
    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz p1, :cond_c

    .line 5169
    check-cast p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {p2, v6, v6}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto :goto_7

    .line 5170
    :cond_c
    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz p1, :cond_d

    .line 5171
    check-cast p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    invoke-virtual {p2, p3, v6, v6}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setChecked(IZZ)V

    goto :goto_7

    .line 5172
    :cond_d
    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz p1, :cond_e

    .line 5173
    check-cast p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    invoke-virtual {p2, v6, v6}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto :goto_7

    .line 5174
    :cond_e
    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz p1, :cond_f

    .line 5175
    check-cast p2, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {p2, v6, v6}, Lorg/telegram/ui/Cells/SharedAudioCell;->setChecked(ZZ)V

    goto :goto_7

    .line 5176
    :cond_f
    instance-of p1, p2, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz p1, :cond_10

    .line 5177
    check-cast p2, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {p2, v6, v6}, Lorg/telegram/ui/Cells/ContextLinkCell;->setChecked(ZZ)V

    goto :goto_7

    .line 5178
    :cond_10
    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz p1, :cond_11

    .line 5179
    check-cast p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {p2, v6, v6}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setChecked(ZZ)V

    .line 5181
    :cond_11
    :goto_7
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    if-nez p1, :cond_12

    .line 5182
    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->showActionMode(Z)V

    .line 5184
    :cond_12
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateForwardItem()V

    return v6

    :cond_13
    :goto_8
    return v1

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private openUrl(Ljava/lang/String;)V
    .locals 2

    .line 5340
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowUrlInAlert(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5341
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v1}, Lorg/telegram/ui/Components/AlertsCreator;->showOpenUrlAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 5343
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;)V
    .locals 10

    .line 5348
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    iget v7, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_width:I

    iget v8, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_height:I

    const/4 v9, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/Components/EmbedBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    return-void
.end method

.method private prepareForMoving(Landroid/view/MotionEvent;Z)Z
    .locals 7

    .line 3713
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getNextPageIdByPosition(Z)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getNextPageId(Z)I

    move-result v0

    .line 3715
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 3716
    iget-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    if-nez v1, :cond_1

    if-eq v0, v2, :cond_3

    sget v1, Lcom/smedialink/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-eq v0, v1, :cond_3

    :cond_1
    return v3

    :cond_2
    if-gez v0, :cond_3

    return v3

    .line 3723
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_6

    .line 3724
    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    if-eqz v1, :cond_7

    const/4 v6, 0x2

    if-ne v1, v6, :cond_4

    .line 3726
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_1

    :cond_4
    if-ne v1, v5, :cond_5

    .line 3728
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3729
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3731
    :cond_5
    :goto_1
    iput v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    goto :goto_2

    .line 3734
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3735
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3738
    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3739
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->hideFloatingDateView(Z)V

    .line 3740
    iput-boolean v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybeStartTracking:Z

    .line 3741
    iput-boolean v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    .line 3742
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTrackingX:I

    .line 3743
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 3744
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setEnabled(Z)V

    .line 3745
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p1, p1, v5

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$002(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;I)I

    .line 3746
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p1, p1, v5

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3747
    iput-boolean p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animatingForward:Z

    .line 3748
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->switchToCurrentSelectedMode(Z)V

    if-eqz p2, :cond_8

    .line 3750
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p2, p1, v5

    aget-object p1, p1, v3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_3

    .line 3752
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p2, p1, v5

    aget-object p1, p1, v3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :goto_3
    return v5
.end method

.method private prepareForwardingMessages()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 212
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 213
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 214
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v4, v4, v1

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 216
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 217
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 218
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_1

    .line 219
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v4, v4, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 5352
    instance-of v0, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    if-eqz v0, :cond_0

    .line 5353
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cellCache:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cache:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5354
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cache:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 5355
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-ne p1, v0, :cond_2

    .line 5356
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioCellCache:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioCache:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5357
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioCache:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_2
    :goto_0
    return-void
.end method

.method private saveScrollPosition()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4479
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v3, v2

    if-ge v1, v3, :cond_9

    .line 4480
    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4484
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 4485
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4486
    instance-of v7, v6, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v7, :cond_0

    .line 4487
    move-object v4, v6

    check-cast v4, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    .line 4488
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageId()I

    move-result v5

    .line 4489
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    move v9, v5

    move v5, v4

    move v4, v9

    .line 4491
    :cond_0
    instance-of v7, v6, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v7, :cond_1

    .line 4492
    move-object v4, v6

    check-cast v4, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 4493
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    .line 4494
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTop()I

    move-result v4

    move v9, v5

    move v5, v4

    move v4, v9

    .line 4496
    :cond_1
    instance-of v7, v6, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v7, :cond_2

    .line 4497
    check-cast v6, Lorg/telegram/ui/Cells/SharedAudioCell;

    .line 4498
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    .line 4499
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    :cond_2
    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v4, :cond_8

    const/4 v3, -0x1

    .line 4507
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v6

    if-ltz v6, :cond_8

    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length v7, v7

    if-lt v6, v7, :cond_5

    goto/16 :goto_5

    :cond_5
    const/4 v6, 0x0

    .line 4510
    :goto_3
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v8, v8, v1

    invoke-static {v8}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    aget-object v7, v7, v8

    iget-object v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 4511
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v8, v8, v1

    invoke-static {v8}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    aget-object v7, v7, v8

    iget-object v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    if-ne v4, v7, :cond_6

    move v3, v6

    goto :goto_4

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 4517
    :cond_7
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v6

    aget-object v4, v4, v6

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result v4

    add-int/2addr v4, v3

    if-ltz v3, :cond_8

    .line 4519
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, v5

    invoke-virtual {v2, v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 4520
    iget-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    if-eqz v2, :cond_8

    .line 4521
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4900(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, v5

    invoke-virtual {v2, v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_8
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private scrollToTop()V
    .locals 5

    .line 3153
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    const/16 v0, 0x3a

    .line 3170
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    .line 3166
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    .line 3163
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x38

    .line 3160
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_0

    .line 3155
    :cond_3
    invoke-static {v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->getItemSize(I)I

    move-result v0

    .line 3174
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-nez v3, :cond_4

    .line 3175
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:I

    div-int/2addr v3, v4

    goto :goto_1

    .line 3177
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    :goto_1
    mul-int v3, v3, v0

    int-to-float v0, v3

    .line 3179
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f99999a    # 1.2f

    mul-float v3, v3, v4

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5

    .line 3180
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollDirection(I)V

    .line 3181
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollToPosition(IIZZ)V

    goto :goto_2

    .line 3183
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :goto_2
    return-void
.end method

.method private selectPinchPosition(II)V
    .locals 7

    const/4 v0, -0x1

    .line 382
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    .line 383
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/BlurredRecyclerView;->blurTopPadding:I

    add-int/2addr p2, v1

    .line 384
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->viewType:I

    if-ne v1, v4, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 v1, 0x0

    .line 387
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 388
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 389
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 390
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->rect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 391
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v2

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v6

    iput v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    .line 392
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterOffset:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 395
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    invoke-interface {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;->canSearchMembers()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 396
    iget p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    if-ne p2, v0, :cond_3

    const/high16 p2, 0x3f800000    # 1.0f

    int-to-float p1, p1

    .line 397
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 398
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p2, p2, v2

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    mul-float v0, v0, p1

    add-float/2addr p2, v0

    float-to-int p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    .line 399
    iput v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterOffset:I

    :cond_3
    return-void
.end method

.method private showActionMode(Z)V
    .locals 7

    .line 4076
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 4079
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    .line 4080
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 4081
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 4084
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4086
    :cond_2
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeAnimation:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/animation/Animator;

    .line 4087
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    if-eqz p1, :cond_3

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    aput v6, v2, v0

    invoke-static {v4, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4088
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4089
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$27;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$27;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4106
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private static showFastScrollHint(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;Z)V
    .locals 2

    if-eqz p2, :cond_2

    .line 3483
    sget p2, Lorg/telegram/messenger/SharedConfig;->fastScrollHintCount:I

    if-lez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHinWasShown:Z

    if-nez p2, :cond_1

    invoke-static {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isVisible:Z

    if-eqz p2, :cond_1

    invoke-static {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    const/16 p2, 0x32

    if-ge p1, p2, :cond_0

    goto :goto_0

    .line 3486
    :cond_0
    sget p1, Lorg/telegram/messenger/SharedConfig;->fastScrollHintCount:I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setFastScrollHintCount(I)V

    .line 3487
    iput-boolean p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHinWasShown:Z

    .line 3488
    new-instance p1, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;-><init>(Landroid/content/Context;)V

    .line 3489
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    const/4 p2, -0x2

    .line 3490
    invoke-static {p2, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3491
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3492
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 3493
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 3494
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x96

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3495
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 3497
    new-instance p2, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHideHintRunnable:Ljava/lang/Runnable;

    const-wide/16 p0, 0xfa0

    invoke-static {p2, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 3510
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHideHintRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_3

    goto :goto_1

    .line 3513
    :cond_3
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3514
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHideHintRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 3515
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHideHintRunnable:Ljava/lang/Runnable;

    .line 3516
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    :cond_4
    :goto_1
    return-void
.end method

.method private showFloatingDateView()V
    .locals 0

    return-void
.end method

.method private showMediaCalendar(Z)V
    .locals 7

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2725
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->viewType:I

    if-ne v1, v0, :cond_0

    return-void

    .line 2728
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2729
    iget-wide v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    const-string v4, "dialog_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2730
    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    const-string/jumbo v3, "topic_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 2733
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->getMediaPage(I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2735
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    const/4 v4, 0x0

    .line 2737
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    if-ltz p1, :cond_4

    if-eqz v3, :cond_3

    const/4 v5, 0x0

    .line 2740
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 2741
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    iget v6, v6, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->startOffset:I

    if-gt p1, v6, :cond_1

    .line 2742
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    move-object v4, p1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 2747
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    :cond_3
    if-eqz v4, :cond_4

    .line 2751
    iget p1, v4, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->date:I

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    const-string/jumbo v3, "type"

    .line 2756
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2757
    new-instance v0, Lorg/telegram/ui/CalendarActivity;

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v3, v2

    iget v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    invoke-direct {v0, v1, v2, p1}, Lorg/telegram/ui/CalendarActivity;-><init>(Landroid/os/Bundle;II)V

    .line 2758
    new-instance p1, Lorg/telegram/ui/Components/SharedMediaLayout$18;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$18;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/CalendarActivity;->setCallback(Lorg/telegram/ui/CalendarActivity$Callback;)V

    .line 2779
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private startPinchToMediaColumnsCount(Z)V
    .locals 5

    .line 2783
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2787
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 2788
    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-nez v3, :cond_1

    .line 2789
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_6

    .line 2794
    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:I

    invoke-virtual {p0, v2, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getNextMediaColumnsCount(IZ)I

    move-result p1

    .line 2795
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animateToColumnsCount:I

    .line 2796
    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:I

    if-ne p1, v2, :cond_3

    return-void

    .line 2799
    :cond_3
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2800
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingPhotoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2801
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4900(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 2802
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    const/4 p1, 0x1

    .line 2804
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    .line 2805
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setListFrozen(Z)V

    const/4 p1, 0x0

    .line 2806
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsProgress:F

    .line 2807
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    if-ltz p1, :cond_5

    .line 2808
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v0, p1

    if-ge v1, v0, :cond_6

    .line 2809
    aget-object p1, p1, v1

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p1

    if-nez p1, :cond_4

    .line 2810
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p1, p1, v1

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4900(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterOffset:I

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2814
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->saveScrollPosition()V

    :cond_6
    return-void
.end method

.method private startStopVisibleGifs()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4868
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 4869
    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    .line 4871
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4872
    instance-of v5, v4, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v5, :cond_1

    .line 4873
    check-cast v4, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 4874
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ContextLinkCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    if-nez v1, :cond_0

    const/4 v5, 0x1

    .line 4876
    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 4877
    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    goto :goto_2

    .line 4879
    :cond_0
    invoke-virtual {v4, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 4880
    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->stopAnimation()V

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private switchToCurrentSelectedMode(Z)V
    .locals 26

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4888
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 4889
    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4892
    :cond_0
    aget-object v2, v3, p1

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 4896
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, p1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    .line 4898
    iget-boolean v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searching:Z

    const/4 v5, 0x0

    const/16 v6, 0x64

    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/4 v10, 0x6

    const/4 v11, 0x2

    const/4 v12, 0x7

    const/4 v13, 0x4

    const/4 v14, 0x1

    if-eqz v4, :cond_13

    iget-boolean v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchWas:Z

    if-eqz v4, :cond_13

    if-eqz p1, :cond_8

    .line 4900
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-eq v2, v11, :cond_7

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-eq v2, v8, :cond_7

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-eq v2, v10, :cond_7

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-ne v2, v12, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;->canSearchMembers()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-ne v2, v12, :cond_2

    iget-boolean v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->isMembersMenuVisible:Z

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 4906
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4908
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    sget v8, Lcom/smedialink/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v4, v8, :cond_3

    .line 4909
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eqz v4, :cond_12

    .line 4910
    invoke-virtual {v4, v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->search(Ljava/lang/String;Z)V

    .line 4911
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eq v3, v2, :cond_12

    .line 4912
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4913
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_2

    .line 4917
    :cond_3
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-ne v4, v14, :cond_4

    .line 4918
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eqz v4, :cond_12

    .line 4919
    invoke-virtual {v4, v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->search(Ljava/lang/String;Z)V

    .line 4920
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eq v3, v2, :cond_12

    .line 4921
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4922
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_2

    .line 4925
    :cond_4
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-ne v4, v9, :cond_5

    .line 4926
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eqz v4, :cond_12

    .line 4927
    invoke-virtual {v4, v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->search(Ljava/lang/String;Z)V

    .line 4928
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eq v3, v2, :cond_12

    .line 4929
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4930
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_2

    .line 4933
    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-ne v4, v13, :cond_6

    .line 4934
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eqz v4, :cond_12

    .line 4935
    invoke-virtual {v4, v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->search(Ljava/lang/String;Z)V

    .line 4936
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eq v3, v2, :cond_12

    .line 4937
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4938
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_2

    .line 4941
    :cond_6
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-ne v4, v12, :cond_12

    .line 4942
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    if-eqz v4, :cond_12

    .line 4943
    invoke-virtual {v4, v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->search(Ljava/lang/String;Z)V

    .line 4944
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    if-eq v3, v2, :cond_12

    .line 4945
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4946
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_2

    .line 4901
    :cond_7
    :goto_1
    iput-boolean v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searching:Z

    .line 4902
    iput-boolean v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchWas:Z

    .line 4903
    invoke-direct {v0, v14}, Lorg/telegram/ui/Components/SharedMediaLayout;->switchToCurrentSelectedMode(Z)V

    return-void

    .line 4952
    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 4954
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    sget v4, Lcom/smedialink/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v2, v4, :cond_a

    .line 4955
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eq v3, v2, :cond_9

    .line 4956
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4957
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4959
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 4961
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-ne v2, v14, :cond_c

    .line 4962
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eq v3, v2, :cond_b

    .line 4963
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4964
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4966
    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 4967
    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-ne v2, v9, :cond_e

    .line 4968
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eq v3, v2, :cond_d

    .line 4969
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4970
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4972
    :cond_d
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 4973
    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-ne v2, v13, :cond_10

    .line 4974
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eq v3, v2, :cond_f

    .line 4975
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4976
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4978
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 4979
    :cond_10
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-ne v2, v12, :cond_12

    .line 4980
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    if-eq v3, v2, :cond_11

    .line 4981
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4982
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4984
    :cond_11
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->notifyDataSetChanged()V

    :cond_12
    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_f

    .line 4989
    :cond_13
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setPinnedHeaderShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4992
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    sget v15, Lcom/smedialink/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v4, v15, :cond_14

    .line 4993
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eq v3, v2, :cond_22

    .line 4994
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4995
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_7

    .line 4998
    :cond_14
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-nez v4, :cond_18

    .line 4999
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    if-eq v3, v4, :cond_15

    .line 5000
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5001
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, p1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5003
    :cond_15
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 5004
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v2, v1

    iget-boolean v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollDataLoaded:Z

    if-eqz v3, :cond_16

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    const/4 v2, 0x1

    goto :goto_3

    :cond_16
    const/4 v2, 0x0

    .line 5007
    :goto_3
    iget v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:I

    .line 5008
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinnedHeaderShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setPinnedHeaderShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5009
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v5, v4, v1

    iget-object v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->recycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    if-nez v5, :cond_17

    .line 5010
    aget-object v4, v4, v1

    new-instance v5, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v5}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v5, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->recycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 5012
    :cond_17
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v4, v4, v1

    iget-object v5, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->recycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    goto/16 :goto_9

    .line 5013
    :cond_18
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-ne v2, v14, :cond_1a

    .line 5014
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v4, v2, v14

    iget-boolean v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollDataLoaded:Z

    if-eqz v4, :cond_19

    aget-object v2, v2, v14

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    const/4 v2, 0x1

    goto :goto_4

    :cond_19
    const/4 v2, 0x0

    .line 5017
    :goto_4
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eq v3, v4, :cond_23

    .line 5018
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5019
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, p1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_8

    .line 5021
    :cond_1a
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-ne v2, v11, :cond_1c

    .line 5022
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v4, v2, v11

    iget-boolean v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollDataLoaded:Z

    if-eqz v4, :cond_1b

    aget-object v2, v2, v11

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_5

    :cond_1b
    const/4 v2, 0x0

    .line 5025
    :goto_5
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eq v3, v4, :cond_23

    .line 5026
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5027
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, p1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_8

    .line 5029
    :cond_1c
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-ne v2, v9, :cond_1d

    .line 5030
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    if-eq v3, v2, :cond_22

    .line 5031
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5032
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_7

    .line 5034
    :cond_1d
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-ne v2, v13, :cond_1f

    .line 5035
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v4, v2, v13

    iget-boolean v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollDataLoaded:Z

    if-eqz v4, :cond_1e

    aget-object v2, v2, v13

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 v2, 0x1

    goto :goto_6

    :cond_1e
    const/4 v2, 0x0

    .line 5038
    :goto_6
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eq v3, v4, :cond_23

    .line 5039
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5040
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, p1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_8

    .line 5042
    :cond_1f
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-ne v2, v8, :cond_20

    .line 5043
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    if-eq v3, v2, :cond_22

    .line 5044
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5045
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_7

    .line 5047
    :cond_20
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-ne v2, v10, :cond_21

    .line 5048
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    if-eq v3, v2, :cond_22

    .line 5049
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5050
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_7

    .line 5052
    :cond_21
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-ne v2, v12, :cond_22

    .line 5053
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    if-eq v3, v2, :cond_22

    .line 5054
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5055
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_22
    :goto_7
    const/4 v2, 0x0

    :cond_23
    :goto_8
    const/16 v3, 0x64

    .line 5058
    :goto_9
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-eqz v4, :cond_2a

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-eq v4, v11, :cond_2a

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-eq v4, v8, :cond_2a

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-eq v4, v10, :cond_2a

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-ne v4, v12, :cond_24

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    invoke-interface {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;->canSearchMembers()Z

    move-result v4

    if-eqz v4, :cond_2a

    :cond_24
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-ne v4, v12, :cond_25

    iget-boolean v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->isMembersMenuVisible:Z

    if-eqz v4, :cond_25

    goto :goto_b

    :cond_25
    if-eqz p1, :cond_28

    .line 5067
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-ne v4, v13, :cond_27

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v4

    if-nez v4, :cond_27

    .line 5068
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 5069
    iput v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    .line 5070
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_a

    .line 5072
    :cond_26
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5074
    :goto_a
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_c

    .line 5076
    :cond_27
    iput v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    goto :goto_c

    .line 5078
    :cond_28
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-ne v4, v13, :cond_2c

    .line 5079
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 5080
    iput v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    .line 5081
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5082
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_c

    .line 5084
    :cond_29
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5085
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_c

    :cond_2a
    :goto_b
    if-eqz p1, :cond_2b

    .line 5060
    iput v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    goto :goto_c

    .line 5062
    :cond_2b
    iput v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    .line 5063
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5089
    :cond_2c
    :goto_c
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-ne v4, v10, :cond_2d

    .line 5090
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->access$6500(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;)Z

    move-result v4

    if-nez v4, :cond_31

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->access$6400(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;)Z

    move-result v4

    if-nez v4, :cond_31

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->access$6600(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 5091
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    const-wide/16 v8, 0x0

    invoke-static {v4, v8, v9, v6}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->access$6700(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;JI)V

    goto/16 :goto_e

    .line 5093
    :cond_2d
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-eq v4, v12, :cond_31

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-ne v4, v15, :cond_2e

    goto/16 :goto_e

    .line 5096
    :cond_2e
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, p1

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v6

    aget-object v4, v4, v6

    iget-boolean v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    if-nez v4, :cond_31

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, p1

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v6

    aget-object v4, v4, v6

    iget-object v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v4, v4, v1

    if-nez v4, :cond_31

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, p1

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v6

    aget-object v4, v4, v6

    iget-object v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 5097
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, p1

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v6

    aget-object v4, v4, v6

    iput-boolean v14, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    .line 5098
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5099
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-nez v4, :cond_30

    .line 5101
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v8, v6, v1

    iget v8, v8, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v8, v14, :cond_2f

    const/16 v21, 0x6

    goto :goto_d

    .line 5103
    :cond_2f
    aget-object v6, v6, v1

    iget v6, v6, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v6, v11, :cond_30

    const/16 v21, 0x7

    goto :goto_d

    :cond_30
    move/from16 v21, v4

    .line 5107
    :goto_d
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v15

    iget-wide v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    const/16 v18, 0x32

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    const/16 v23, 0x1

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v24

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v10, v10, p1

    invoke-static {v10}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v10

    aget-object v6, v6, v10

    iget v6, v6, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->requestIndex:I

    move-wide/from16 v16, v8

    move/from16 v22, v4

    move/from16 v25, v6

    invoke-virtual/range {v15 .. v25}, Lorg/telegram/messenger/MediaDataController;->loadMedia(JIIIIIIII)V

    .line 5110
    :cond_31
    :goto_e
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    move v6, v3

    .line 5112
    :goto_f
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v3, p1

    iput-boolean v2, v4, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollEnabled:Z

    .line 5113
    aget-object v2, v3, p1

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateFastScrollVisibility(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Z)V

    .line 5114
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 5115
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 5116
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 5118
    iget v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    if-ne v2, v11, :cond_32

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 5119
    iput-boolean v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->ignoreSearchCollapse:Z

    .line 5120
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    .line 5121
    iput v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    .line 5122
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5123
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_32
    return-void
.end method

.method private updateForwardItem()V
    .locals 8

    .line 2608
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    return-void

    .line 2611
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isChatNoForwards(J)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->hasNoforwardsMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 2612
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    const/high16 v4, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v1, 0x5

    const-string v4, "actionBarActionModeDefaultSelector"

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    .line 2613
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 2614
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_4
    if-nez v0, :cond_5

    .line 2615
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_5

    .line 2616
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2619
    :cond_5
    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    if-eqz v0, :cond_7

    .line 2621
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2622
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 2624
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_8

    .line 2625
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    :goto_5
    return-void
.end method

.method private updateRowsSelection()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4702
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v3, v2

    if-ge v1, v3, :cond_6

    .line 4703
    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    .line 4705
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4706
    instance-of v5, v4, Lorg/telegram/ui/Cells/SharedDocumentCell;

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 4707
    check-cast v4, Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {v4, v0, v6}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto :goto_2

    .line 4708
    :cond_0
    instance-of v5, v4, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v5, :cond_1

    .line 4709
    check-cast v4, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v4, v0, v6}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setChecked(ZZ)V

    goto :goto_2

    .line 4710
    :cond_1
    instance-of v5, v4, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz v5, :cond_2

    .line 4711
    check-cast v4, Lorg/telegram/ui/Cells/SharedLinkCell;

    invoke-virtual {v4, v0, v6}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto :goto_2

    .line 4712
    :cond_2
    instance-of v5, v4, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v5, :cond_3

    .line 4713
    check-cast v4, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {v4, v0, v6}, Lorg/telegram/ui/Cells/SharedAudioCell;->setChecked(ZZ)V

    goto :goto_2

    .line 4714
    :cond_3
    instance-of v5, v4, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v5, :cond_4

    .line 4715
    check-cast v4, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v4, v0, v6}, Lorg/telegram/ui/Cells/ContextLinkCell;->setChecked(ZZ)V

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private updateTabs(Z)V
    .locals 12

    .line 4726
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    if-nez v0, :cond_0

    return-void

    .line 4729
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;->isFragmentOpened()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 4733
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3700(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v3

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 4736
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v3, v3, v1

    if-gtz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v5

    if-ne v3, v5, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 4739
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v3, v3, v2

    if-gtz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v5

    if-ne v3, v5, :cond_7

    add-int/lit8 v0, v0, 0x1

    .line 4742
    :cond_7
    iget-wide v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    const/4 v5, 0x3

    const/4 v6, 0x4

    if-nez v3, :cond_b

    .line 4743
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v3, v3, v5

    if-gtz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    :goto_4
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v7

    if-ne v3, v7, :cond_9

    add-int/lit8 v0, v0, 0x1

    .line 4746
    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v3, v3, v6

    if-gtz v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v7

    if-ne v3, v7, :cond_d

    goto :goto_7

    .line 4750
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v3, v3, v6

    if-gtz v3, :cond_c

    const/4 v3, 0x1

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    :goto_6
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v7

    if-ne v3, v7, :cond_d

    :goto_7
    add-int/lit8 v0, v0, 0x1

    .line 4754
    :cond_d
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    const/4 v7, 0x2

    aget v3, v3, v7

    if-gtz v3, :cond_e

    const/4 v3, 0x1

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    :goto_8
    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v8

    if-ne v3, v8, :cond_f

    add-int/lit8 v0, v0, 0x1

    .line 4757
    :cond_f
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    const/4 v8, 0x5

    aget v3, v3, v8

    if-gtz v3, :cond_10

    const/4 v3, 0x1

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    :goto_9
    iget-object v9, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v9, v8}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v9

    if-ne v3, v9, :cond_11

    add-int/lit8 v0, v0, 0x1

    .line 4760
    :cond_11
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    const/4 v9, 0x6

    aget v3, v3, v9

    if-gtz v3, :cond_12

    const/4 v3, 0x1

    goto :goto_a

    :cond_12
    const/4 v3, 0x0

    :goto_a
    iget-object v10, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v10, v9}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v10

    if-ne v3, v10, :cond_13

    add-int/lit8 v0, v0, 0x1

    :cond_13
    if-lez v0, :cond_20

    if-eqz p1, :cond_14

    .line 4764
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt p1, v3, :cond_14

    .line 4765
    new-instance p1, Landroid/transition/TransitionSet;

    invoke-direct {p1}, Landroid/transition/TransitionSet;-><init>()V

    .line 4766
    invoke-virtual {p1, v1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 4767
    new-instance v3, Landroid/transition/ChangeBounds;

    invoke-direct {v3}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {p1, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 4768
    new-instance v3, Lorg/telegram/ui/Components/SharedMediaLayout$30;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$30;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {p1, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    const-wide/16 v10, 0xc8

    .line 4793
    invoke-virtual {p1, v10, v11}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 4794
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getTabsContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 4796
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->recordIndicatorParams()V

    .line 4798
    :cond_14
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->removeTabs()Landroid/util/SparseArray;

    move-result-object p1

    if-le v0, v5, :cond_15

    const/4 p1, 0x0

    .line 4802
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3700(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 4803
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 4804
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v3, Lorg/telegram/messenger/R$string;->GroupMembers:I

    const-string v10, "GroupMembers"

    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 4807
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v0, v0, v1

    if-lez v0, :cond_18

    .line 4808
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 4809
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v3, v0, v2

    if-nez v3, :cond_17

    aget v3, v0, v7

    if-nez v3, :cond_17

    aget v3, v0, v5

    if-nez v3, :cond_17

    aget v3, v0, v6

    if-nez v3, :cond_17

    aget v3, v0, v8

    if-nez v3, :cond_17

    aget v0, v0, v9

    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3700(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-nez v0, :cond_17

    .line 4810
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v3, Lorg/telegram/messenger/R$string;->SharedMediaTabFull2:I

    const-string v4, "SharedMediaTabFull2"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    goto :goto_b

    .line 4812
    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v3, Lorg/telegram/messenger/R$string;->SharedMediaTab2:I

    const-string v4, "SharedMediaTab2"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 4816
    :cond_18
    :goto_b
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v0, v0, v2

    if-lez v0, :cond_19

    .line 4817
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 4818
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v3, Lorg/telegram/messenger/R$string;->SharedFilesTab2:I

    const-string v4, "SharedFilesTab2"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 4821
    :cond_19
    iget-wide v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    const-string v2, "SharedMusicTab2"

    if-nez v0, :cond_1b

    .line 4822
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v0, v0, v5

    if-lez v0, :cond_1a

    .line 4823
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 4824
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v3, Lorg/telegram/messenger/R$string;->SharedLinksTab2:I

    const-string v4, "SharedLinksTab2"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 4827
    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v0, v0, v6

    if-lez v0, :cond_1c

    .line 4828
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 4829
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v3, Lorg/telegram/messenger/R$string;->SharedMusicTab2:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    goto :goto_c

    .line 4833
    :cond_1b
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v0, v0, v6

    if-lez v0, :cond_1c

    .line 4834
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 4835
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v3, Lorg/telegram/messenger/R$string;->SharedMusicTab2:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 4840
    :cond_1c
    :goto_c
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v2, Lcom/smedialink/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 4841
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v3, Lorg/telegram/messenger/R$string;->music_tab_playlist:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 4844
    :cond_1d
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v0, v0, v7

    if-lez v0, :cond_1e

    .line 4845
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 4846
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v2, Lorg/telegram/messenger/R$string;->SharedVoiceTab2:I

    const-string v3, "SharedVoiceTab2"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v2, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 4849
    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v0, v0, v8

    if-lez v0, :cond_1f

    .line 4850
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 4851
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v2, Lorg/telegram/messenger/R$string;->SharedGIFsTab2:I

    const-string v3, "SharedGIFsTab2"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 4854
    :cond_1f
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v0, v0, v9

    if-lez v0, :cond_20

    .line 4855
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 4856
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v2, Lorg/telegram/messenger/R$string;->SharedGroupsTab2:I

    const-string v3, "SharedGroupsTab2"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9, v2, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 4860
    :cond_20
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getCurrentTabId()I

    move-result p1

    if-gez p1, :cond_21

    .line 4861
    sget v0, Lcom/smedialink/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne p1, v0, :cond_22

    .line 4862
    :cond_21
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$002(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;I)I

    .line 4864
    :cond_22
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->finishAddingTabs()V

    return-void
.end method


# virtual methods
.method protected canShowSearchItem()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public checkPinchToZoom(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 280
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    if-nez v0, :cond_1

    return v2

    .line 284
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x2

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v7, 0x5

    if-ne v0, v7, :cond_2

    goto/16 :goto_5

    .line 313
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_15

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybePinchToZoomTouchMode2:Z

    if-eqz v0, :cond_15

    :cond_3
    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    .line 316
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ge v3, v9, :cond_6

    .line 317
    iget v9, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pointerId1:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    if-ne v9, v10, :cond_4

    move v7, v3

    .line 320
    :cond_4
    iget v9, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pointerId2:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    if-ne v9, v10, :cond_5

    move v8, v3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    if-eq v7, v0, :cond_14

    if-ne v8, v0, :cond_7

    goto/16 :goto_4

    .line 331
    :cond_7
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v0, v3

    float-to-double v9, v0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v0, v3

    float-to-double v7, v0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v0, v7

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchStartDistance:F

    div-float/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchScale:F

    .line 332
    iget-boolean v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    if-nez v3, :cond_a

    const v3, 0x3f8147ae    # 1.01f

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_8

    const v3, 0x3f7d70a4    # 0.99f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_a

    .line 333
    :cond_8
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    cmpl-float v0, v0, v6

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    .line 334
    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchScaleUp:Z

    .line 336
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->startPinchToMediaColumnsCount(Z)V

    .line 338
    :cond_a
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    if-eqz v0, :cond_1a

    .line 339
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchScaleUp:Z

    if-eqz v0, :cond_b

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchScale:F

    cmpg-float v3, v3, v6

    if-ltz v3, :cond_c

    :cond_b
    if-nez v0, :cond_d

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchScale:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_d

    .line 340
    :cond_c
    iput v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsProgress:F

    goto :goto_3

    :cond_d
    if-eqz v0, :cond_e

    .line 342
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchScale:F

    sub-float/2addr v4, v0

    div-float/2addr v4, v6

    sub-float v0, v6, v4

    goto :goto_2

    :cond_e
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchScale:F

    sub-float v0, v6, v0

    const/high16 v3, 0x3f000000    # 0.5f

    div-float/2addr v0, v3

    :goto_2
    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsProgress:F

    .line 344
    :goto_3
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsProgress:F

    cmpl-float v3, v0, v6

    if-eqz v3, :cond_f

    cmpl-float v3, v0, v5

    if-nez v3, :cond_13

    :cond_f
    cmpl-float v0, v0, v6

    if-nez v0, :cond_11

    .line 347
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    int-to-float v0, v0

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animateToColumnsCount:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    .line 348
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animateToColumnsCount:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 349
    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTrackingX:I

    int-to-float v4, v4

    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v6, v3

    int-to-float v3, v6

    div-float/2addr v4, v3

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animateToColumnsCount:I

    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    mul-float v4, v4, v6

    float-to-int v4, v4

    mul-int v0, v0, v3

    add-int/2addr v0, v4

    .line 351
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getItemCount()I

    move-result v3

    if-lt v0, v3, :cond_10

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v2

    .line 354
    :cond_10
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    .line 357
    :cond_11
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->finishPinchToMediaColumnsCount()V

    .line 358
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsProgress:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_12

    .line 359
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchScaleUp:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchScaleUp:Z

    .line 362
    :cond_12
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchScaleUp:Z

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->startPinchToMediaColumnsCount(Z)V

    .line 363
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v0, v3

    float-to-double v3, v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    float-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float p1, v2

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchStartDistance:F

    .line 366
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p1, p1, v1

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 367
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, p1, v1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    if-eqz v0, :cond_1a

    .line 368
    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    goto/16 :goto_6

    .line 325
    :cond_14
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybePinchToZoomTouchMode:Z

    .line 326
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybePinchToZoomTouchMode2:Z

    .line 327
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    .line 328
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->finishPinchToMediaColumnsCount()V

    return v1

    .line 371
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v2, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_16

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->checkPointerIds(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1a

    :cond_17
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    if-eqz p1, :cond_1a

    .line 372
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybePinchToZoomTouchMode2:Z

    .line 373
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybePinchToZoomTouchMode:Z

    .line 374
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    .line 375
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->finishPinchToMediaColumnsCount()V

    goto/16 :goto_6

    .line 285
    :cond_18
    :goto_5
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybePinchToZoomTouchMode:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    if-nez v0, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_19

    .line 286
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v0, v3

    float-to-double v7, v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v0, v3

    float-to-double v9, v0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v0, v7

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchStartDistance:F

    .line 288
    iput v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchScale:F

    .line 290
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pointerId1:I

    .line 291
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pointerId2:I

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    .line 294
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 297
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 298
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v3, v6

    div-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v6

    sub-float/2addr v3, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v6

    sub-float/2addr v3, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getX()F

    move-result v6

    sub-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterX:I

    .line 299
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    add-float/2addr v3, v6

    div-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    sub-float/2addr v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    sub-float/2addr v3, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    sub-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterY:I

    .line 301
    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterX:I

    invoke-direct {p0, v3, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->selectPinchPosition(II)V

    .line 302
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybePinchToZoomTouchMode2:Z

    .line 304
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1a

    .line 305
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    sub-float/2addr p1, v0

    cmpl-float p1, p1, v5

    if-lez p1, :cond_1a

    .line 309
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybePinchToZoomTouchMode:Z

    .line 378
    :cond_1a
    :goto_6
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    return p1

    :cond_1b
    :goto_7
    return v1
.end method

.method public checkTabsAnimationInProgress()Z
    .locals 7

    .line 3802
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimationInProgress:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 3804
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->backAnimation:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    .line 3805
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    .line 3806
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3807
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v0, v5

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-boolean v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animatingForward:Z

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    mul-int v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_1

    .line 3810
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    .line 3811
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v0, v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-boolean v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animatingForward:Z

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    mul-int v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3812
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v5

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_5

    .line 3816
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    .line 3817
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 3818
    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    .line 3820
    :cond_4
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimationInProgress:Z

    .line 3822
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimationInProgress:Z

    return v0

    :cond_6
    return v1
.end method

.method public closeActionMode()Z
    .locals 4

    .line 4050
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v2, 0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 4052
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4054
    :cond_0
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    .line 4055
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    .line 4056
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->showActionMode(Z)V

    .line 4057
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateRowsSelection()V

    return v0

    :cond_1
    return v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 4112
    sget v2, Lorg/telegram/messenger/NotificationCenter;->playlistDidChanged:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_3

    .line 4113
    aget-object v1, p3, v4

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4115
    aget-object v1, p3, v3

    check-cast v1, Ljava/util/List;

    .line 4116
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 4117
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlist:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4120
    :cond_0
    aget-object v1, p3, v3

    check-cast v1, Ljava/util/List;

    .line 4121
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 4122
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4125
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v1, :cond_2

    .line 4126
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4128
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v1, :cond_5f

    .line 4129
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_21

    .line 4132
    :cond_3
    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoad:I

    const/4 v5, 0x6

    const/4 v6, 0x3

    const/4 v7, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x2

    if-ne v1, v2, :cond_2f

    .line 4133
    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 4134
    aget-object v13, p3, v6

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x7

    .line 4135
    aget-object v15, p3, v14

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 4136
    aget-object v16, p3, v11

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 4137
    aget-object v16, p3, v5

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eq v10, v5, :cond_4

    if-ne v10, v14, :cond_5

    :cond_4
    const/4 v10, 0x0

    .line 4143
    :cond_5
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v5

    if-ne v13, v5, :cond_25

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v13, v5, v10

    iget v13, v13, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->requestIndex:I

    if-ne v15, v13, :cond_25

    if-eqz v10, :cond_6

    if-eq v10, v4, :cond_6

    if-eq v10, v12, :cond_6

    if-eq v10, v11, :cond_6

    .line 4145
    aget-object v5, v5, v10

    aget-object v13, p3, v4

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    .line 4147
    :cond_6
    aget-object v5, p3, v12

    check-cast v5, Ljava/util/ArrayList;

    .line 4149
    iget-wide v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v13, v14}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v13

    .line 4150
    iget-wide v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    cmp-long v17, v1, v14

    if-nez v17, :cond_7

    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    const/4 v1, 0x1

    .line 4154
    :goto_2
    sget v2, Lcom/smedialink/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v10, v2, :cond_8

    .line 4155
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_3

    :cond_8
    if-nez v10, :cond_9

    .line 4158
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    goto :goto_3

    :cond_9
    if-ne v10, v4, :cond_a

    .line 4160
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_3

    :cond_a
    if-ne v10, v12, :cond_b

    .line 4162
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_3

    :cond_b
    if-ne v10, v6, :cond_c

    .line 4164
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    goto :goto_3

    :cond_c
    if-ne v10, v11, :cond_d

    .line 4166
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_3

    :cond_d
    if-ne v10, v7, :cond_e

    .line 4168
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    goto :goto_3

    :cond_e
    const/4 v2, 0x0

    .line 4171
    :goto_3
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v6, v6, v10

    iget-object v6, v6, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v2, :cond_f

    .line 4173
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v11

    .line 4174
    instance-of v14, v2, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    if-eqz v14, :cond_10

    .line 4175
    move-object v14, v2

    check-cast v14, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    .line 4176
    invoke-virtual {v14}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifySectionsChanged()V

    goto :goto_4

    :cond_f
    const/4 v11, 0x0

    .line 4181
    :cond_10
    :goto_4
    iget-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v14, v14, v10

    iput-boolean v3, v14, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    .line 4183
    new-instance v14, Landroid/util/SparseBooleanArray;

    invoke-direct {v14}, Landroid/util/SparseBooleanArray;-><init>()V

    if-eqz v16, :cond_13

    .line 4186
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v15, v4

    :goto_5
    if-ltz v15, :cond_12

    .line 4187
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    .line 4188
    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v8, v8, v10

    invoke-virtual {v8, v12, v1, v4, v13}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;IZZ)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 4190
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-virtual {v14, v8, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4191
    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v8, v8, v10

    invoke-static {v8}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$710(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    .line 4192
    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v8, v8, v10

    invoke-static {v8}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result v8

    if-gez v8, :cond_11

    .line 4193
    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v8, v8, v10

    invoke-static {v8, v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$702(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;I)I

    :cond_11
    add-int/lit8 v15, v15, -0x1

    const/4 v12, 0x2

    goto :goto_5

    .line 4197
    :cond_12
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v5, v5, v10

    aget-object v7, p3, v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startReached:Z

    .line 4198
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v7, v5, v10

    iget-boolean v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startReached:Z

    if-eqz v7, :cond_17

    .line 4199
    aget-object v5, v5, v10

    invoke-static {v5, v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$702(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;I)I

    goto/16 :goto_7

    :cond_13
    const/4 v8, 0x0

    .line 4202
    :goto_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_15

    .line 4203
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    .line 4204
    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v12, v12, v10

    invoke-virtual {v12, v9, v1, v3, v13}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;IZZ)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 4205
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-virtual {v14, v9, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4206
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v9, v9, v10

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$7510(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    .line 4207
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v9, v9, v10

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$7500(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result v9

    if-gez v9, :cond_14

    .line 4208
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v9, v9, v10

    invoke-static {v9, v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$7502(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;I)I

    :cond_14
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 4212
    :cond_15
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v8, v5, v10

    iget-boolean v8, v8, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loadingAfterFastScroll:Z

    if-eqz v8, :cond_16

    aget-object v5, v5, v10

    iget-object v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_16

    .line 4213
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v8, v5, v10

    aget-object v5, v5, v10

    iget-object v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    iput v5, v8, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->min_id:I

    .line 4215
    :cond_16
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v5, v5, v10

    iget-object v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-object v7, p3, v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    aput-boolean v7, v5, v1

    .line 4216
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v7, v5, v10

    iget-object v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v7, v7, v1

    if-eqz v7, :cond_17

    .line 4217
    aget-object v7, v5, v10

    aget-object v5, v5, v10

    iget-object v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v8, v8, v10

    invoke-static {v8}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result v8

    add-int/2addr v5, v8

    iput v5, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    :cond_17
    :goto_7
    if-nez v16, :cond_18

    if-nez v1, :cond_18

    .line 4220
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v7, v5, v10

    iget-object v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v1, v7, v1

    if-eqz v1, :cond_18

    iget-wide v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    const-wide/16 v12, 0x0

    cmp-long v1, v7, v12

    if-eqz v1, :cond_18

    .line 4221
    aget-object v1, v5, v10

    iput-boolean v4, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    .line 4222
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v17

    iget-wide v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    const/16 v20, 0x32

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v1, v1, v10

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    aget v21, v1, v4

    const/16 v22, 0x0

    iget v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    const/16 v25, 0x1

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v26

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v5, v5, v10

    iget v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->requestIndex:I

    move-wide/from16 v18, v7

    move/from16 v23, v10

    move/from16 v24, v1

    move/from16 v27, v5

    invoke-virtual/range {v17 .. v27}, Lorg/telegram/messenger/MediaDataController;->loadMedia(JIIIIIIII)V

    :cond_18
    if-eqz v2, :cond_22

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 4226
    :goto_8
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v8, v7

    if-ge v5, v8, :cond_1a

    .line 4227
    aget-object v7, v7, v5

    invoke-static {v7}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v7

    if-ne v7, v2, :cond_19

    .line 4228
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v5

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v1

    .line 4229
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v7, v7, v5

    invoke-static {v7}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 4232
    :cond_1a
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    .line 4233
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    if-ne v2, v7, :cond_1c

    .line 4234
    invoke-virtual {v7}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getItemCount()I

    move-result v7

    if-ne v7, v11, :cond_1b

    .line 4235
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    goto :goto_9

    .line 4237
    :cond_1b
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_9

    .line 4240
    :cond_1c
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4242
    :goto_9
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v7, v7, v10

    iget-object v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1d

    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v7, v7, v10

    iget-boolean v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    if-nez v7, :cond_1d

    if-eqz v1, :cond_1f

    .line 4244
    invoke-direct {v0, v1, v11, v14}, Lorg/telegram/ui/Components/SharedMediaLayout;->animateItemsEnter(Lorg/telegram/ui/Components/RecyclerListView;ILandroid/util/SparseBooleanArray;)V

    goto :goto_a

    :cond_1d
    if-eqz v1, :cond_1f

    .line 4247
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    if-eq v2, v7, :cond_1e

    if-lt v5, v11, :cond_1f

    .line 4248
    :cond_1e
    invoke-direct {v0, v1, v11, v14}, Lorg/telegram/ui/Components/SharedMediaLayout;->animateItemsEnter(Lorg/telegram/ui/Components/RecyclerListView;ILandroid/util/SparseBooleanArray;)V

    :cond_1f
    :goto_a
    if-eqz v1, :cond_22

    .line 4251
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v2, v10

    iget-boolean v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loadingAfterFastScroll:Z

    if-nez v2, :cond_22

    if-nez v6, :cond_21

    const/4 v2, 0x0

    :goto_b
    const/4 v5, 0x2

    if-ge v2, v5, :cond_22

    .line 4254
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    if-nez v5, :cond_20

    .line 4255
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getPositionForIndex(I)I

    move-result v5

    .line 4256
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v6, v5, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 4260
    :cond_21
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->saveScrollPosition()V

    .line 4264
    :cond_22
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v1, v10

    iget-boolean v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loadingAfterFastScroll:Z

    if-eqz v2, :cond_24

    .line 4265
    aget-object v1, v1, v10

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_23

    .line 4266
    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->loadFromStart(I)V

    goto :goto_c

    .line 4268
    :cond_23
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v1, v1, v10

    iput-boolean v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loadingAfterFastScroll:Z

    .line 4271
    :cond_24
    :goto_c
    iput-boolean v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrolling:Z

    goto/16 :goto_21

    .line 4272
    :cond_25
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    if-eqz v1, :cond_5f

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v1, v1, v10

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5f

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v1, v1, v10

    iget-boolean v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loadingAfterFastScroll:Z

    if-nez v1, :cond_5f

    .line 4273
    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->fillMediaData(I)Z

    move-result v1

    if-eqz v1, :cond_5f

    if-nez v10, :cond_26

    .line 4276
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    goto :goto_d

    :cond_26
    if-ne v10, v4, :cond_27

    .line 4278
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_d

    :cond_27
    const/4 v1, 0x2

    if-ne v10, v1, :cond_28

    .line 4280
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_d

    :cond_28
    if-ne v10, v6, :cond_29

    .line 4282
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    goto :goto_d

    :cond_29
    if-ne v10, v11, :cond_2a

    .line 4284
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_d

    :cond_2a
    if-ne v10, v7, :cond_2b

    .line 4286
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    goto :goto_d

    :cond_2b
    const/4 v10, 0x0

    :goto_d
    if-eqz v10, :cond_2e

    .line 4289
    :goto_e
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v2, v1

    if-ge v3, v2, :cond_2d

    .line 4290
    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-ne v1, v10, :cond_2c

    .line 4291
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 4294
    :cond_2d
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4296
    :cond_2e
    iput-boolean v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrolling:Z

    goto/16 :goto_21

    .line 4299
    :cond_2f
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    const/4 v8, -0x1

    if-ne v1, v2, :cond_43

    const/4 v2, 0x2

    .line 4300
    aget-object v1, p3, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_30

    return-void

    .line 4305
    :cond_30
    iget-wide v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 4306
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v10

    goto :goto_f

    :cond_31
    const/4 v10, 0x0

    .line 4308
    :goto_f
    aget-object v1, p3, v4

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 4310
    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_34

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-nez v7, :cond_32

    .line 4311
    iget-wide v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    cmp-long v7, v12, v5

    if-eqz v7, :cond_32

    const/4 v1, 0x1

    goto :goto_11

    .line 4313
    :cond_32
    iget-wide v5, v10, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long v7, v1, v5

    if-nez v7, :cond_33

    goto :goto_10

    :cond_33
    return-void

    :cond_34
    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-eqz v7, :cond_35

    return-void

    :cond_35
    :goto_10
    const/4 v1, 0x0

    .line 4321
    :goto_11
    aget-object v2, p3, v3

    check-cast v2, Ljava/util/ArrayList;

    .line 4324
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_12
    if-ge v6, v5, :cond_38

    const/4 v9, 0x0

    .line 4325
    :goto_13
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length v12, v10

    if-ge v9, v12, :cond_37

    .line 4326
    aget-object v10, v10, v9

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v10, v12, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->deleteMessage(II)Lorg/telegram/messenger/MessageObject;

    move-result-object v10

    if-eqz v10, :cond_36

    move v8, v9

    const/4 v7, 0x1

    :cond_36
    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_37
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 4333
    :cond_38
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 4334
    invoke-static/range {p2 .. p2}, Lorg/fork/controller/MusicController;->getInstance(I)Lorg/fork/controller/MusicController;

    move-result-object v1

    iget-wide v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-virtual {v1, v5, v6, v2}, Lorg/fork/controller/MusicController;->removePlaylistMessage(JLjava/util/List;)V

    :cond_39
    if-eqz v7, :cond_42

    .line 4338
    iput-boolean v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrolling:Z

    .line 4340
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v1, :cond_3a

    .line 4341
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4344
    :cond_3a
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    if-eqz v1, :cond_3b

    .line 4345
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4347
    :cond_3b
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v1, :cond_3c

    .line 4348
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4350
    :cond_3c
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v1, :cond_3d

    .line 4351
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4353
    :cond_3d
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    if-eqz v1, :cond_3e

    .line 4354
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    .line 4356
    :cond_3e
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v1, :cond_3f

    .line 4357
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4359
    :cond_3f
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    if-eqz v1, :cond_40

    .line 4360
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_40
    if-eqz v8, :cond_41

    if-eq v8, v4, :cond_41

    const/4 v1, 0x2

    if-eq v8, v1, :cond_41

    if-ne v8, v11, :cond_42

    .line 4364
    :cond_41
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->loadFastScrollData(Z)V

    .line 4367
    :cond_42
    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/SharedMediaLayout;->getMediaPage(I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    goto/16 :goto_21

    .line 4368
    :cond_43
    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    if-ne v1, v2, :cond_54

    const/4 v2, 0x2

    .line 4369
    aget-object v1, p3, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_44

    return-void

    .line 4373
    :cond_44
    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 4374
    iget-wide v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    cmp-long v5, v1, v9

    if-nez v5, :cond_5f

    .line 4375
    aget-object v1, p3, v4

    check-cast v1, Ljava/util/ArrayList;

    .line 4376
    invoke-static {v9, v10}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v2

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 4378
    :goto_14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_49

    .line 4379
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessageObject;

    .line 4380
    iget-object v12, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v12}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v12

    if-eqz v12, :cond_48

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z

    move-result v12

    if-eqz v12, :cond_45

    goto :goto_16

    .line 4383
    :cond_45
    iget-object v12, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v12}, Lorg/telegram/messenger/MediaDataController;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v12

    if-ne v12, v8, :cond_46

    return-void

    .line 4387
    :cond_46
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v14, v13, v12

    iget-boolean v14, v14, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startReached:Z

    if-eqz v14, :cond_48

    aget-object v13, v13, v12

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v14

    iget-wide v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    cmp-long v17, v14, v7

    if-nez v17, :cond_47

    const/4 v7, 0x0

    goto :goto_15

    :cond_47
    const/4 v7, 0x1

    :goto_15
    invoke-virtual {v13, v10, v7, v4, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;IZZ)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 4389
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aput v4, v7, v12

    const/4 v9, 0x1

    :cond_48
    :goto_16
    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x5

    const/4 v8, -0x1

    goto :goto_14

    :cond_49
    if-eqz v9, :cond_5f

    .line 4393
    iput-boolean v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrolling:Z

    .line 4394
    :goto_17
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v2, v1

    if-ge v3, v2, :cond_53

    .line 4397
    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    sget v2, Lcom/smedialink/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v1, v2, :cond_4a

    .line 4398
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    :goto_18
    const/4 v2, 0x2

    :goto_19
    const/4 v5, 0x5

    goto :goto_1a

    .line 4400
    :cond_4a
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    if-nez v1, :cond_4b

    .line 4401
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    goto :goto_18

    .line 4402
    :cond_4b
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    if-ne v1, v4, :cond_4c

    .line 4403
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_18

    .line 4404
    :cond_4c
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4d

    .line 4405
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_19

    .line 4406
    :cond_4d
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    if-ne v1, v6, :cond_4e

    .line 4407
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    goto :goto_19

    .line 4408
    :cond_4e
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    if-ne v1, v11, :cond_4f

    .line 4409
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_19

    .line 4410
    :cond_4f
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    const/4 v5, 0x5

    if-ne v1, v5, :cond_50

    .line 4411
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    goto :goto_1a

    :cond_50
    const/4 v1, 0x0

    :goto_1a
    if-eqz v1, :cond_52

    .line 4414
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 4416
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v1, :cond_51

    .line 4417
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4420
    :cond_51
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4421
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4422
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4423
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    .line 4424
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4425
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_17

    .line 4428
    :cond_53
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateTabs(Z)V

    goto/16 :goto_21

    .line 4431
    :cond_54
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    if-ne v1, v2, :cond_56

    .line 4432
    aget-object v1, p3, v5

    check-cast v1, Ljava/lang/Boolean;

    .line 4433
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_55

    return-void

    .line 4436
    :cond_55
    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/Integer;

    .line 4437
    aget-object v2, p3, v4

    check-cast v2, Ljava/lang/Integer;

    .line 4438
    :goto_1b
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length v5, v4

    if-ge v3, v5, :cond_5f

    .line 4439
    aget-object v4, v4, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->replaceMid(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 4441
    :cond_56
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    if-eq v1, v2, :cond_57

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-eq v1, v2, :cond_57

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-ne v1, v2, :cond_5f

    .line 4442
    :cond_57
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-eq v1, v2, :cond_5c

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-ne v1, v2, :cond_58

    goto :goto_1e

    .line 4457
    :cond_58
    aget-object v1, p3, v3

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 4458
    iget-wide v1, v1, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-eqz v7, :cond_59

    return-void

    :cond_59
    const/4 v1, 0x0

    .line 4461
    :goto_1c
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v5, v2

    if-ge v1, v5, :cond_5f

    .line 4462
    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v5, 0x0

    :goto_1d
    if-ge v5, v2, :cond_5b

    .line 4464
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4465
    instance-of v7, v6, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v7, :cond_5a

    .line 4466
    check-cast v6, Lorg/telegram/ui/Cells/SharedAudioCell;

    .line 4467
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    if-eqz v7, :cond_5a

    .line 4469
    invoke-virtual {v6, v3, v4}, Lorg/telegram/ui/Cells/SharedAudioCell;->updateButtonState(ZZ)V

    :cond_5a
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_5c
    :goto_1e
    const/4 v1, 0x0

    .line 4443
    :goto_1f
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v5, v2

    if-ge v1, v5, :cond_5f

    .line 4444
    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v5, 0x0

    :goto_20
    if-ge v5, v2, :cond_5e

    .line 4446
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4447
    instance-of v7, v6, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v7, :cond_5d

    .line 4448
    check-cast v6, Lorg/telegram/ui/Cells/SharedAudioCell;

    .line 4449
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    if-eqz v7, :cond_5d

    .line 4451
    invoke-virtual {v6, v3, v4}, Lorg/telegram/ui/Cells/SharedAudioCell;->updateButtonState(ZZ)V

    :cond_5d
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_5f
    :goto_21
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 2975
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    if-eqz v0, :cond_0

    .line 2976
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2977
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2978
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;->drawBackground(Landroid/graphics/Canvas;)V

    .line 2979
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2981
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2982
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentContextView;->isCallStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2983
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2984
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2985
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->setDrawOverlay(Z)V

    .line 2986
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2987
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->setDrawOverlay(Z)V

    .line 2988
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public dispatchFastScrollEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 249
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 250
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v3

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawBackgroundWithBlur(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0

    .line 3088
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .line 7270
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-ne p2, v0, :cond_0

    .line 7271
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7272
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0xc

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 7273
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 7274
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 7277
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public drawListForBlur(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 439
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 440
    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 441
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 442
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 443
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v5

    iget v5, v5, Lorg/telegram/ui/Components/BlurredRecyclerView;->blurTopPadding:I

    const/16 v6, 0x64

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 444
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 445
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getY()F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v7, v7, v1

    invoke-static {v7}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getY()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 446
    invoke-virtual {v3, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 447
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public forceHasOverlappingRendering(Z)V
    .locals 0

    .line 3759
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->forceHasOverlappingRendering(Z)V

    return-void
.end method

.method public getClosestTab()I
    .locals 4

    .line 3352
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3353
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimationInProgress:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->backAnimation:Z

    if-nez v0, :cond_0

    .line 3354
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    return v0

    .line 3355
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 3356
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    return v0

    .line 3359
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getCurrentTabId()I

    move-result v0

    return v0
.end method

.method public getCurrentListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 2

    .line 3837
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public getMembersFilterItem()Landroid/widget/ImageView;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersFilterItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMembersMenuItem()Landroid/widget/ImageView;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getNextMediaColumnsCount(IZ)I
    .locals 6

    const/4 v0, 0x2

    const/16 v1, 0x9

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x6

    if-nez p2, :cond_4

    if-ne p1, v0, :cond_0

    :goto_0
    const/4 p1, 0x3

    goto :goto_4

    :cond_0
    if-ne p1, v4, :cond_1

    :goto_1
    const/4 p1, 0x4

    goto :goto_4

    :cond_1
    if-ne p1, v2, :cond_2

    goto :goto_3

    :cond_2
    if-ne p1, v3, :cond_3

    goto :goto_2

    :cond_3
    if-ne p1, v5, :cond_9

    const/16 p1, 0x9

    goto :goto_4

    :cond_4
    if-ne p1, v1, :cond_5

    :goto_2
    const/4 p1, 0x6

    goto :goto_4

    :cond_5
    if-ne p1, v5, :cond_6

    :goto_3
    const/4 p1, 0x5

    goto :goto_4

    :cond_6
    if-ne p1, v3, :cond_7

    goto :goto_1

    :cond_7
    if-ne p1, v2, :cond_8

    goto :goto_0

    :cond_8
    if-ne p1, v4, :cond_9

    const/4 p1, 0x2

    :cond_9
    :goto_4
    return p1
.end method

.method public getPhotosVideosTypeFilter()I
    .locals 2

    .line 422
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    return v0
.end method

.method public getSearchItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1

    .line 3333
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method public getSelectedTab()I
    .locals 1

    .line 3348
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getCurrentTabId()I

    move-result v0

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 7097
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7099
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v12, 0x1

    new-array v5, v12, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v13, 0x0

    aput-object v2, v5, v13

    const-string v2, "openMusicButton"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "inappPlayerClose"

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7100
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v2, :cond_0

    .line 7101
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "windowBackgroundWhiteGrayText2"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7102
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "actionBarActionModeDefaultSelector"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7106
    :cond_0
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "windowBackgroundWhiteGrayText2"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7108
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->shadowLine:Landroid/view/View;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "divider"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7110
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const-string v10, "actionBarActionModeDefaultIcon"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7111
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const-string v21, "actionBarActionModeDefaultSelector"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7112
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v2, :cond_1

    .line 7113
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "actionBarActionModeDefaultIcon"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7114
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "actionBarActionModeDefaultSelector"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7116
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v2, :cond_2

    .line 7117
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "actionBarActionModeDefaultIcon"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7118
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "actionBarActionModeDefaultSelector"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7120
    :cond_2
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->closeButton:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v8, v12, [Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    aput-object v3, v8, v13

    const/4 v9, 0x0

    const-string v10, "actionBarActionModeDefaultIcon"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7121
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->closeButton:Landroid/widget/ImageView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "actionBarActionModeDefaultSelector"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7123
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v8, 0x0

    const-string/jumbo v10, "windowBackgroundWhite"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7124
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string/jumbo v21, "windowBackgroundWhite"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7126
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v5, 0x0

    const-string v10, "chat_mediaTimeBackground"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7127
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/16 v16, 0x0

    const-string v21, "chat_mediaTimeText"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7129
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    new-array v6, v12, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    aput-object v3, v6, v13

    const-string/jumbo v3, "selectorDrawable"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    const-string v11, "profile_tabSelectedLine"

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7130
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getTabsContainer()Landroid/view/ViewGroup;

    move-result-object v15

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v16, v3, v4

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Landroid/widget/TextView;

    aput-object v4, v3, v13

    const-string v21, "profile_tabSelectedText"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7131
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getTabsContainer()Landroid/view/ViewGroup;

    move-result-object v5

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v6, v3, v4

    new-array v7, v12, [Ljava/lang/Class;

    const-class v3, Landroid/widget/TextView;

    aput-object v3, v7, v13

    const-string v11, "profile_tabText"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7132
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getTabsContainer()Landroid/view/ViewGroup;

    move-result-object v15

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v16, v3, v4

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Landroid/widget/TextView;

    aput-object v4, v3, v13

    const-string v21, "profile_tabSelector"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7134
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v24, v4, v5

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v5, v4, v13

    const-string v5, "frameLayout"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-string v30, "inappPlayerBackground"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7135
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v4, v3, v13

    const-string v4, "playButton"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    const-string v22, "inappPlayerPlayPause"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7136
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v25, v4, v6

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v6, v4, v13

    const-string/jumbo v6, "titleTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v27

    const/16 v30, 0x0

    const-string v31, "inappPlayerTitle"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7137
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    or-int v16, v3, v4

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v4, v3, v13

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v18

    const-string v22, "inappPlayerPerformer"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7138
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v7, v4, v13

    const-string v7, "closeButton"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v27

    const-string v31, "inappPlayerClose"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7140
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v16, v3, v4

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v4, v3, v13

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v22, "returnToCallBackground"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7141
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v25, v4, v5

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v5, v4, v13

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v31, "returnToCallText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 7143
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 7145
    new-instance v3, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda18;

    invoke-direct {v3, v0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;I)V

    .line 7161
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v12, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v7, v13

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "divider"

    move-object v4, v14

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7163
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string/jumbo v22, "windowBackgroundWhite"

    move-object v15, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7164
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v24

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-string v30, "actionBarDefault"

    move-object/from16 v23, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7165
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v15

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v17, 0x0

    const-string v21, "listSelectorSDK21"

    move-object v14, v4

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7166
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v23

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v25, 0x0

    const-string v29, "emptyListPlaceholder"

    move-object/from16 v22, v4

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7168
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v15

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v6, v5, v13

    const-string/jumbo v23, "textView"

    filled-new-array/range {v23 .. v23}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    const-string v22, "key_graySectionText"

    move-object v14, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7169
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v25

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    or-int v26, v5, v6

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v6, v5, v13

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-string v31, "graySection"

    move-object/from16 v24, v4

    move-object/from16 v27, v5

    invoke-direct/range {v24 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7171
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v15

    const/16 v16, 0x0

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/LoadingCell;

    aput-object v6, v5, v13

    const-string v24, "progressBar"

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v18

    const-string v22, "progressCircle"

    move-object v14, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7173
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v26

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/UserCell;

    aput-object v6, v5, v13

    const-string v6, "adminTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v29

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-string v33, "profile_creatorIcon"

    move-object/from16 v25, v4

    move-object/from16 v28, v5

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7174
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v15

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/UserCell;

    aput-object v6, v5, v13

    const-string v6, "imageView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v22, "windowBackgroundWhiteGrayIcon"

    move-object v14, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7175
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v26

    const/16 v27, 0x0

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/UserCell;

    aput-object v6, v5, v13

    const-string v34, "nameTextView"

    filled-new-array/range {v34 .. v34}, [Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v33, "windowBackgroundWhiteBlackText"

    move-object/from16 v25, v4

    move-object/from16 v28, v5

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7176
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v15

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/UserCell;

    aput-object v6, v5, v13

    const-string/jumbo v6, "statusColor"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v22, "windowBackgroundWhiteGrayText"

    move-object v14, v4

    move-object/from16 v17, v5

    move-object/from16 v21, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7177
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v15

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/UserCell;

    aput-object v6, v5, v13

    const-string/jumbo v6, "statusOnlineColor"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v22, "windowBackgroundWhiteBlueText"

    move-object v14, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7178
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v26

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/UserCell;

    aput-object v6, v5, v13

    const/16 v29, 0x0

    sget-object v30, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const-string v32, "avatar_text"

    move-object/from16 v25, v4

    move-object/from16 v28, v5

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7180
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v15

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v6, v5, v13

    const/16 v18, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/graphics/Paint;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    aget-object v8, v7, v13

    aput-object v8, v6, v13

    aget-object v7, v7, v12

    aput-object v7, v6, v12

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_searchNamePaint:Landroid/text/TextPaint;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const/16 v21, 0x0

    const-string v22, "chats_name"

    move-object v14, v4

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7181
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v26

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v6, v5, v13

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/graphics/Paint;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameEncryptedPaint:[Landroid/text/TextPaint;

    aget-object v8, v7, v13

    aput-object v8, v6, v13

    aget-object v7, v7, v12

    aput-object v7, v6, v12

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_searchNameEncryptedPaint:Landroid/text/TextPaint;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const/16 v32, 0x0

    const-string v33, "chats_secretName"

    move-object/from16 v25, v4

    move-object/from16 v28, v5

    move-object/from16 v30, v6

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7182
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v15

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v6, v5, v13

    sget-object v19, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const-string v21, "avatar_text"

    move-object v14, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7183
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v11, "avatar_backgroundRed"

    move-object v4, v14

    move-object v10, v3

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7184
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v11, "avatar_backgroundOrange"

    move-object v4, v14

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7185
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v11, "avatar_backgroundViolet"

    move-object v4, v14

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7186
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v11, "avatar_backgroundGreen"

    move-object v4, v14

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7187
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v11, "avatar_backgroundCyan"

    move-object v4, v14

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7188
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v11, "avatar_backgroundBlue"

    move-object v4, v14

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7189
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v11, "avatar_backgroundPink"

    move-object v4, v14

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7191
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v26

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;

    aput-object v6, v5, v13

    const-string v6, "emptyTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    const-string/jumbo v33, "windowBackgroundWhiteGrayText2"

    move-object/from16 v25, v4

    move-object/from16 v28, v5

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7192
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v15

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v6, v5, v13

    filled-new-array/range {v34 .. v34}, [Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v21, 0x0

    const-string/jumbo v22, "windowBackgroundWhiteBlackText"

    move-object v14, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7193
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v26

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v6, v5, v13

    const-string v6, "dateTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v33, "windowBackgroundWhiteGrayText3"

    move-object/from16 v25, v4

    move-object/from16 v28, v5

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7194
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v15

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v6, v5, v13

    const-string v6, "progressView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v22, "sharedMedia_startStopLoadIcon"

    move-object v14, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7195
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v26

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v6, v5, v13

    const-string/jumbo v6, "statusImageView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v33, "sharedMedia_startStopLoadIcon"

    move-object/from16 v25, v4

    move-object/from16 v28, v5

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7196
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v15

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v6, v5, v13

    const-string v6, "checkBox"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v18

    const-string v22, "checkbox"

    move-object v14, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7197
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v26

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v7, v5, v13

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v29

    const-string v33, "checkboxCheck"

    move-object/from16 v25, v4

    move-object/from16 v28, v5

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7198
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v15

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v7, v5, v13

    const-string/jumbo v7, "thumbImageView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v18

    const-string v22, "files_folderIcon"

    move-object v14, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7199
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v26

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v7, v5, v13

    const-string v7, "extTextView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v29

    const-string v33, "files_iconText"

    move-object/from16 v25, v4

    move-object/from16 v28, v5

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7201
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v15

    const/16 v16, 0x0

    new-array v5, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/LoadingCell;

    aput-object v7, v5, v13

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v18

    const-string v22, "progressCircle"

    move-object v14, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7203
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v25

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/SharedAudioCell;

    aput-object v7, v5, v13

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const-string v32, "checkbox"

    move-object/from16 v24, v4

    move-object/from16 v27, v5

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7204
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v15

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/SharedAudioCell;

    aput-object v7, v5, v13

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v18

    const-string v22, "checkboxCheck"

    move-object v14, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7205
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v25

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/SharedAudioCell;

    aput-object v7, v5, v13

    sget-object v28, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_titleTextPaint:Landroid/text/TextPaint;

    const-string/jumbo v31, "windowBackgroundWhiteBlackText"

    move-object/from16 v24, v4

    move-object/from16 v27, v5

    invoke-direct/range {v24 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7206
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v15

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/SharedAudioCell;

    aput-object v7, v5, v13

    sget-object v18, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    const-string/jumbo v21, "windowBackgroundWhiteGrayText2"

    move-object v14, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7208
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v25

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v7, v5, v13

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v28

    const/16 v31, 0x0

    const-string v32, "checkbox"

    move-object/from16 v24, v4

    move-object/from16 v27, v5

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7209
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v15

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v7, v5, v13

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    const-string v22, "checkboxCheck"

    move-object v14, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7210
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v25

    const/16 v26, 0x0

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v6, v5, v13

    const-string/jumbo v6, "titleTextPaint"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v32, "windowBackgroundWhiteBlackText"

    move-object/from16 v24, v4

    move-object/from16 v27, v5

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7211
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v15

    const/16 v16, 0x0

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v6, v5, v13

    const/16 v18, 0x0

    const-string/jumbo v21, "windowBackgroundWhiteLinkText"

    move-object v14, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7212
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v25

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v6, v5, v13

    sget-object v28, Lorg/telegram/ui/ActionBar/Theme;->linkSelectionPaint:Landroid/graphics/Paint;

    const-string/jumbo v31, "windowBackgroundWhiteLinkSelection"

    move-object/from16 v24, v4

    move-object/from16 v27, v5

    invoke-direct/range {v24 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7213
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v15

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v6, v5, v13

    const-string v6, "letterDrawable"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    const-string/jumbo v22, "sharedMedia_linkPlaceholderText"

    move-object v14, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7214
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v25

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v7, v5, v13

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v28

    const/16 v31, 0x0

    const-string/jumbo v32, "sharedMedia_linkPlaceholder"

    move-object/from16 v24, v4

    move-object/from16 v27, v5

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7216
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v15

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    or-int v16, v5, v6

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SharedMediaSectionCell;

    aput-object v6, v5, v13

    const/16 v18, 0x0

    const-string/jumbo v21, "windowBackgroundWhite"

    move-object v14, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7217
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v25

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SharedMediaSectionCell;

    aput-object v6, v5, v13

    filled-new-array/range {v23 .. v23}, [Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v32, "windowBackgroundWhiteBlackText"

    move-object/from16 v24, v4

    move-object/from16 v27, v5

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7218
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v15

    const/16 v16, 0x0

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SharedMediaSectionCell;

    aput-object v6, v5, v13

    filled-new-array/range {v23 .. v23}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    const-string/jumbo v22, "windowBackgroundWhiteBlackText"

    move-object v14, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7220
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v24

    const/16 v25, 0x0

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    aput-object v6, v5, v13

    const-string v14, "backgroundPaint"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const-string/jumbo v31, "sharedMedia_photoPlaceholder"

    move-object/from16 v23, v4

    move-object/from16 v26, v5

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7221
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v7, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    aput-object v4, v7, v13

    const-string v11, "checkbox"

    move-object v4, v15

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7222
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v7, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    aput-object v4, v7, v13

    const-string v11, "checkboxCheck"

    move-object v4, v15

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7224
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v17

    const/16 v18, 0x0

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ContextLinkCell;

    aput-object v6, v5, v13

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string/jumbo v24, "sharedMedia_photoPlaceholder"

    move-object/from16 v16, v4

    move-object/from16 v19, v5

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7225
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v7, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ContextLinkCell;

    aput-object v4, v7, v13

    const-string v11, "checkbox"

    move-object v4, v14

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7226
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v7, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ContextLinkCell;

    aput-object v4, v7, v13

    const-string v11, "checkboxCheck"

    move-object v4, v14

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7228
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    new-array v4, v12, [Landroid/graphics/drawable/Drawable;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinnedHeaderShadowDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v13

    const-string/jumbo v22, "windowBackgroundGrayShadow"

    move-object v15, v3

    move-object/from16 v20, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7230
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string/jumbo v30, "windowBackgroundWhiteBlackText"

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7231
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v4

    iget-object v15, v4, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v17, 0x0

    const/16 v20, 0x0

    const-string/jumbo v21, "windowBackgroundWhiteGrayText"

    move-object v14, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    return-object v1
.end method

.method protected invalidateBlur()V
    .locals 0

    return-void
.end method

.method public isCalendarItemVisible()Z
    .locals 2

    .line 3344
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isCurrentTabFirst()Z
    .locals 2

    .line 3833
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getCurrentTabId()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getFirstTabId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInFastScroll()Z
    .locals 3

    .line 245
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isMembersFilterItemVisible()Z
    .locals 3

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isMembersMenuVisible()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isMembersMenuVisible:Z

    return v0
.end method

.method public isPinnedToTop()Z
    .locals 1

    .line 426
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isPinnedToTop:Z

    return v0
.end method

.method public isSearchItemVisible()Z
    .locals 4

    .line 3337
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x7

    if-ne v0, v3, :cond_1

    .line 3338
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;->canSearchMembers()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isMembersMenuVisible:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 3340
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isSwipeBackEnabled()Z
    .locals 1

    .line 418
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimationInProgress:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActionBarItemClick(Landroid/view/View;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 3530
    sget v3, Lcom/smedialink/common/IdFabric$Menu;->TOGGLE_MUSIC_PLAYLIST:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_5

    .line 3531
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3532
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ltz v5, :cond_2

    const/4 v3, 0x0

    .line 3534
    :goto_1
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 3535
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v6, v6, v5

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    if-lez v6, :cond_0

    .line 3537
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3538
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v6, v6, v5

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3541
    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 3543
    :cond_2
    iget v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    if-nez v3, :cond_3

    .line 3544
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMusicController()Lorg/fork/controller/MusicController;

    move-result-object v1

    iget-wide v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-virtual {v1, v3, v4, v2}, Lorg/fork/controller/MusicController;->addPlaylistMessage(JLjava/util/List;)V

    goto :goto_2

    .line 3545
    :cond_3
    iget v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    if-nez v2, :cond_4

    .line 3546
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMusicController()Lorg/fork/controller/MusicController;

    move-result-object v2

    iget-wide v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-virtual {v2, v3, v4, v1}, Lorg/fork/controller/MusicController;->removePlaylistMessage(JLjava/util/List;)V

    .line 3548
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->closeActionMode()Z

    goto/16 :goto_9

    :cond_5
    const/16 v3, 0x65

    if-ne v2, v3, :cond_b

    .line 3552
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v4

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    sget v2, Lcom/smedialink/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v1, v2, :cond_8

    .line 3553
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    if-ltz v5, :cond_7

    const/4 v2, 0x0

    .line 3555
    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 3556
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v5

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3558
    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 3560
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->closeActionMode()Z

    .line 3561
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMusicController()Lorg/fork/controller/MusicController;

    move-result-object v2

    iget-wide v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-virtual {v2, v3, v4, v1}, Lorg/fork/controller/MusicController;->removePlaylistMessage(JLjava/util/List;)V

    return-void

    .line 3568
    :cond_8
    iget-wide v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 3569
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v1

    move-object v6, v1

    move-object v4, v2

    move-object v5, v4

    goto :goto_5

    .line 3570
    :cond_9
    iget-wide v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3571
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    move-object v4, v1

    move-object v5, v2

    move-object v6, v5

    goto :goto_5

    .line 3573
    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    move-object v5, v1

    move-object v4, v2

    move-object v6, v4

    .line 3575
    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v7, 0x0

    iget-wide v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    const/4 v10, 0x0

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    new-instance v15, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda12;

    invoke-direct {v15, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    const/16 v16, 0x0

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v17, v1

    invoke-static/range {v3 .. v17}, Lorg/telegram/ui/Components/AlertsCreator;->createDeleteMessagesAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$ChatFull;JLorg/telegram/messenger/MessageObject;[Landroid/util/SparseArray;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZILjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_9

    :cond_b
    const/16 v3, 0x64

    if-eq v2, v3, :cond_13

    .line 3581
    sget v3, Lcom/smedialink/common/IdFabric$Menu;->MESSAGE_FORWARD_CLOUD:I

    if-ne v2, v3, :cond_c

    goto/16 :goto_7

    :cond_c
    const/16 v1, 0x66

    if-ne v2, v1, :cond_1a

    .line 3682
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-eq v1, v5, :cond_d

    return-void

    .line 3685
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v2, v1, v4

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v5, :cond_e

    const/4 v5, 0x0

    :cond_e
    aget-object v1, v1, v5

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 3686
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3687
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    .line 3688
    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 3689
    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v3

    const-string v7, "enc_id"

    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_6

    .line 3690
    :cond_f
    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string/jumbo v3, "user_id"

    .line 3691
    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_6

    .line 3693
    :cond_10
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 3694
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v7, :cond_11

    const-string v7, "migrated_to"

    .line 3695
    invoke-virtual {v2, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3696
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:J

    neg-long v5, v5

    :cond_11
    neg-long v7, v5

    const-string v3, "chat_id"

    .line 3698
    invoke-virtual {v2, v3, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3700
    :goto_6
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    const-string v7, "message_id"

    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "need_remove_previous_same_chat_activity"

    .line 3701
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3702
    new-instance v3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v3, v2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 3703
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    iput v8, v3, Lorg/telegram/ui/ChatActivity;->highlightMessageId:I

    .line 3704
    iget v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    if-eqz v8, :cond_12

    .line 3705
    invoke-static {v5, v6, v8}, Lorg/telegram/messenger/MessagesStorage$TopicKey;->of(JI)Lorg/telegram/messenger/MessagesStorage$TopicKey;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->applyTopic(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagesStorage$TopicKey;)V

    .line 3706
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {v2, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3708
    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_9

    .line 3582
    :cond_13
    :goto_7
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_16

    .line 3583
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 3584
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->isChatNoForwards(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 3585
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fwdRestrictedHint:Lorg/telegram/ui/Components/HintView;

    if-eqz v2, :cond_15

    .line 3586
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v3, :cond_14

    sget v3, Lorg/telegram/messenger/R$string;->ForwardsRestrictedInfoChannel:I

    const-string v4, "ForwardsRestrictedInfoChannel"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 3587
    :cond_14
    sget v3, Lorg/telegram/messenger/R$string;->ForwardsRestrictedInfoGroup:I

    const-string v4, "ForwardsRestrictedInfoGroup"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 3586
    :goto_8
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    .line 3588
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fwdRestrictedHint:Lorg/telegram/ui/Components/HintView;

    invoke-virtual {v2, v1, v5}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    :cond_15
    return-void

    .line 3593
    :cond_16
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->hasNoforwardsMessage()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3594
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fwdRestrictedHint:Lorg/telegram/ui/Components/HintView;

    if-eqz v2, :cond_17

    .line 3595
    sget v3, Lorg/telegram/messenger/R$string;->ForwardsRestrictedInfoBot:I

    const-string v4, "ForwardsRestrictedInfoBot"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    .line 3596
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fwdRestrictedHint:Lorg/telegram/ui/Components/HintView;

    invoke-virtual {v2, v1, v5}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    :cond_17
    return-void

    .line 3601
    :cond_18
    sget v1, Lcom/smedialink/common/IdFabric$Menu;->MESSAGE_FORWARD_CLOUD:I

    if-ne v2, v1, :cond_19

    .line 3602
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloud()V

    return-void

    .line 3607
    :cond_19
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "onlySelect"

    .line 3608
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "canSelectTopics"

    .line 3609
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v2, 0x3

    const-string v3, "dialogsType"

    .line 3610
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3611
    new-instance v2, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 3612
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda22;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/DialogsActivity;->setCustomForwardDelegate(Lorg/telegram/ui/DialogsActivity$CustomForwardDelegate;)V

    .line 3613
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda23;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 3680
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1a
    :goto_9
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 4634
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    .line 4635
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 4636
    aget-object v0, v0, p1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4638
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, p1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 4639
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$29;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$29;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 3379
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->playlistDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3380
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3381
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3382
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3383
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3384
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3385
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3386
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 3829
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->checkTabsAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->isAnimatingIndicator()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 3778
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 3779
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 3781
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 3784
    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 3786
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_5

    .line 3788
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 3789
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    goto :goto_2

    .line 3792
    :cond_2
    instance-of v4, v10, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    if-eqz v4, :cond_3

    const/4 v7, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 3793
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v10

    move v6, p1

    invoke-virtual/range {v4 .. v9}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 3794
    check-cast v10, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v10}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->topPadding:I

    invoke-virtual {v4, v2, v2, v2, v5}, Lorg/telegram/ui/Components/BlurredRecyclerView;->setPadding(IIII)V

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v10

    move v6, p1

    move v8, p2

    .line 3796
    invoke-virtual/range {v4 .. v9}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method protected onMemberClick(Lorg/telegram/tgnet/TLRPC$ChatParticipant;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 2

    const/4 v0, 0x1

    .line 4618
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrolling:Z

    .line 4619
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    if-eqz v0, :cond_0

    .line 4620
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4622
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v0, :cond_1

    .line 4623
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4625
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    if-eqz v0, :cond_2

    .line 4626
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    :cond_2
    const/4 v0, 0x0

    .line 4628
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 4629
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->fixLayoutInternal(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onSearchStateChanged(Z)V
    .locals 0

    return-void
.end method

.method protected onSelectedTabChanged()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 3842
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->checkTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->checkTabsAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_26

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    if-nez v0, :cond_26

    if-eqz p1, :cond_1

    .line 3844
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 3845
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->velocityTracker:Landroid/view/VelocityTracker;

    .line 3847
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3849
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fwdRestrictedHint:Lorg/telegram/ui/Components/HintView;

    if-eqz v0, :cond_1

    .line 3850
    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintView;->hide()V

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 3853
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybeStartTracking:Z

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/16 v3, 0x30

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 3854
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTrackingPointerId:I

    .line 3855
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybeStartTracking:Z

    .line 3856
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTrackingX:I

    .line 3857
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTrackingY:I

    .line 3858
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_12

    :cond_2
    const/4 v2, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz p1, :cond_19

    .line 3859
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v4, :cond_19

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTrackingPointerId:I

    if-ne v6, v7, :cond_19

    .line 3860
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTrackingX:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    .line 3861
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTrackingY:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 3862
    iget-boolean v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    if-eqz v8, :cond_7

    iget-boolean v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animatingForward:Z

    if-eqz v8, :cond_3

    if-gtz v6, :cond_4

    :cond_3
    if-nez v8, :cond_7

    if-gez v6, :cond_7

    :cond_4
    if-gez v6, :cond_5

    const/4 v8, 0x1

    goto :goto_0

    :cond_5
    const/4 v8, 0x0

    .line 3863
    :goto_0
    invoke-direct {p0, p1, v8}, Lorg/telegram/ui/Components/SharedMediaLayout;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    move-result v8

    if-nez v8, :cond_7

    .line 3864
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybeStartTracking:Z

    .line 3865
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    .line 3866
    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v8, v8, v1

    invoke-virtual {v8, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3867
    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v8, v0

    iget-boolean v10, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animatingForward:Z

    if-eqz v10, :cond_6

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    goto :goto_1

    :cond_6
    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    neg-int v8, v8

    :goto_1
    int-to-float v8, v8

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3868
    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    iget-object v9, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v9, v0

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v9

    invoke-virtual {v8, v9, v5}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectTabWithId(IF)V

    .line 3871
    :cond_7
    iget-boolean v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybeStartTracking:Z

    if-eqz v8, :cond_9

    iget-boolean v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    if-nez v8, :cond_9

    const v2, 0x3e99999a    # 0.3f

    .line 3872
    invoke-static {v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v2

    .line 3873
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_25

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v7, :cond_25

    if-gez v6, :cond_8

    const/4 v1, 0x1

    .line 3874
    :cond_8
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    goto/16 :goto_12

    .line 3876
    :cond_9
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    if-eqz p1, :cond_25

    .line 3877
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p1, p1, v1

    int-to-float v7, v6

    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3878
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animatingForward:Z

    if-eqz p1, :cond_a

    .line 3879
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v7, p1, v0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v6

    int-to-float p1, p1

    invoke-virtual {v7, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_2

    .line 3881
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v7, p1, v0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    sub-int p1, v6, p1

    int-to-float p1, p1

    invoke-virtual {v7, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3883
    :goto_2
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr p1, v6

    .line 3884
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 3885
    iget v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    if-ne v6, v4, :cond_b

    .line 3886
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sub-float v6, v3, p1

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_3

    :cond_b
    if-ne v6, v0, :cond_c

    .line 3888
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3892
    :cond_c
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v4, v0

    if-eqz v6, :cond_d

    aget-object v4, v4, v0

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-nez v4, :cond_d

    move v4, p1

    goto :goto_4

    :cond_d
    const/4 v4, 0x0

    .line 3895
    :goto_4
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v6

    if-nez v6, :cond_e

    sub-float v4, v3, p1

    .line 3898
    :cond_e
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3899
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_10

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_5

    :cond_f
    const/4 v4, 0x0

    goto :goto_6

    :cond_10
    :goto_5
    const/4 v4, 0x4

    :goto_6
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3903
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v4, v0

    const/4 v7, 0x7

    if-eqz v6, :cond_12

    aget-object v4, v4, v0

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-ne v4, v7, :cond_12

    .line 3905
    iget-boolean v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isMembersMenuVisible:Z

    if-eqz v4, :cond_11

    move v4, p1

    move v6, v4

    goto :goto_8

    :cond_11
    move v4, p1

    goto :goto_7

    :cond_12
    const/4 v4, 0x0

    :goto_7
    const/4 v6, 0x0

    .line 3909
    :goto_8
    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v8, v8, v1

    invoke-static {v8}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    if-ne v8, v7, :cond_13

    sub-float v4, v3, p1

    .line 3911
    iget-boolean v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isMembersMenuVisible:Z

    if-eqz v3, :cond_13

    move v6, v4

    .line 3915
    :cond_13
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersFilterItem:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3916
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersFilterItem:Landroid/widget/ImageView;

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_15

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v4

    if-nez v4, :cond_14

    goto :goto_9

    :cond_14
    const/4 v4, 0x0

    goto :goto_a

    :cond_15
    :goto_9
    const/4 v4, 0x4

    :goto_a
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3917
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3918
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    cmpl-float v4, v6, v5

    if-eqz v4, :cond_16

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v4

    if-nez v4, :cond_17

    :cond_16
    const/4 v1, 0x4

    :cond_17
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    .line 3921
    :cond_18
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3923
    :goto_b
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v2, v0

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectTabWithId(IF)V

    .line 3924
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->onSelectedTabChanged()V

    goto/16 :goto_12

    :cond_19
    const/4 v6, 0x3

    if-eqz p1, :cond_1a

    .line 3926
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTrackingPointerId:I

    if-ne v7, v8, :cond_25

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-eq v7, v6, :cond_1a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-eq v7, v0, :cond_1a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_25

    .line 3927
    :cond_1a
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    iget v9, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maximumVelocity:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    if-eqz p1, :cond_1c

    .line 3930
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-eq v7, v6, :cond_1c

    .line 3931
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    .line 3932
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    .line 3933
    iget-boolean v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    if-nez v8, :cond_1d

    .line 3934
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v9, 0x453b8000    # 3000.0f

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1d

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1d

    cmpg-float v8, v6, v5

    if-gez v8, :cond_1b

    const/4 v8, 0x1

    goto :goto_c

    :cond_1b
    const/4 v8, 0x0

    .line 3935
    :goto_c
    invoke-direct {p0, p1, v8}, Lorg/telegram/ui/Components/SharedMediaLayout;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    goto :goto_d

    :cond_1c
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 3942
    :cond_1d
    :goto_d
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    if-eqz p1, :cond_24

    .line 3943
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getX()F

    move-result p1

    .line 3944
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    .line 3945
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40400000    # 3.0f

    div-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1f

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v9, 0x455ac000    # 3500.0f

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_1e

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v8, v7

    if-gez v7, :cond_1f

    :cond_1e
    const/4 v7, 0x1

    goto :goto_e

    :cond_1f
    const/4 v7, 0x0

    :goto_e
    iput-boolean v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->backAnimation:Z

    if-eqz v7, :cond_21

    .line 3949
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 3950
    iget-boolean v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animatingForward:Z

    if-eqz v7, :cond_20

    .line 3951
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v4, [Landroid/animation/Animator;

    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v8, v8, v1

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v0, [F

    aput v5, v10, v1

    .line 3952
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v4, v1

    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v8, v0

    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v11, v0, [F

    aget-object v8, v8, v0

    .line 3953
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    aput v8, v11, v1

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v4, v0

    .line 3951
    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_f

    .line 3956
    :cond_20
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v4, [Landroid/animation/Animator;

    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v8, v8, v1

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v0, [F

    aput v5, v10, v1

    .line 3957
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v4, v1

    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v8, v0

    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v11, v0, [F

    aget-object v8, v8, v0

    .line 3958
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v11, v1

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v4, v0

    .line 3956
    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_f

    .line 3962
    :cond_21
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float p1, v7, p1

    .line 3963
    iget-boolean v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animatingForward:Z

    if-eqz v7, :cond_22

    .line 3964
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v4, [Landroid/animation/Animator;

    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v8, v1

    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v11, v0, [F

    aget-object v8, v8, v1

    .line 3965
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v11, v1

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v4, v1

    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v8, v8, v0

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v0, [F

    aput v5, v10, v1

    .line 3966
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v4, v0

    .line 3964
    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_f

    .line 3969
    :cond_22
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v4, [Landroid/animation/Animator;

    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v8, v1

    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v11, v0, [F

    aget-object v8, v8, v1

    .line 3970
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    aput v8, v11, v1

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v4, v1

    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v8, v8, v0

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v0, [F

    aput v5, v10, v1

    .line 3971
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v4, v0

    .line 3969
    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3975
    :goto_f
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    sget-object v7, Lorg/telegram/ui/Components/SharedMediaLayout;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3977
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    .line 3978
    div-int/lit8 v7, v4, 0x2

    mul-float v8, p1, v3

    int-to-float v4, v4

    div-float/2addr v8, v4

    .line 3979
    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    int-to-float v7, v7

    .line 3980
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->distanceInfluenceForSnapDuration(F)F

    move-result v4

    mul-float v4, v4, v7

    add-float/2addr v7, v4

    .line 3981
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v5, v4, v5

    if-lez v5, :cond_23

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr v7, v4

    .line 3984
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float v3, v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_10

    .line 3986
    :cond_23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    add-float/2addr p1, v3

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float p1, p1, v2

    float-to-int p1, p1

    :goto_10
    const/16 v2, 0x96

    const/16 v3, 0x258

    .line 3989
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3991
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3992
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$26;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$26;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4030
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 4031
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimationInProgress:Z

    .line 4032
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    .line 4033
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->onSelectedTabChanged()V

    goto :goto_11

    .line 4035
    :cond_24
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybeStartTracking:Z

    .line 4036
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 4037
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setEnabled(Z)V

    .line 4039
    :goto_11
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_25

    .line 4040
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 4041
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->velocityTracker:Landroid/view/VelocityTracker;

    .line 4044
    :cond_25
    :goto_12
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    return p1

    :cond_26
    return v1
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 6

    .line 4652
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_0

    .line 4653
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iget-wide v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    cmp-long p1, v4, v2

    if-nez p1, :cond_0

    neg-long v0, v0

    .line 4654
    iput-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 4655
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 4656
    aget-object v2, v1, v0

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_max_id:I

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 4657
    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aput-boolean p1, v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setChatUsers(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$ChatFull;",
            ")V"
        }
    .end annotation

    .line 4663
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    if-nez v0, :cond_0

    .line 4664
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3702(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;Lorg/telegram/tgnet/TLRPC$ChatFull;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 4665
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3602(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    const/4 p1, 0x1

    .line 4667
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateTabs(Z)V

    const/4 p1, 0x0

    .line 4668
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v0, p2

    if-ge p1, v0, :cond_2

    .line 4669
    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p2

    const/4 v0, 0x7

    if-ne p2, v0, :cond_1

    .line 4670
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setCommonGroupsCount(I)V
    .locals 2

    .line 3521
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    if-nez v0, :cond_0

    .line 3522
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    const/4 v1, 0x6

    aput p1, v0, v1

    :cond_0
    const/4 p1, 0x1

    .line 3524
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateTabs(Z)V

    .line 3525
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->checkCurrentTabValid()V

    return-void
.end method

.method public setForwardRestrictedHint(Lorg/telegram/ui/Components/HintView;)V
    .locals 0

    .line 2589
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fwdRestrictedHint:Lorg/telegram/ui/Components/HintView;

    return-void
.end method

.method public setMembersMenuVisible(ZLcom/smedialink/model/group/GroupMembersFilter;)V
    .locals 7

    .line 167
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isMembersMenuVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 170
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isMembersMenuVisible:Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    .line 172
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v4, Lcom/smedialink/model/group/GroupMembersFilter;->BLOCKED:Lcom/smedialink/model/group/GroupMembersFilter;

    if-ne p2, v4, :cond_1

    sget v5, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    goto :goto_0

    :cond_1
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    :goto_0
    invoke-static {p1, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 173
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v6, "windowBackgroundWhiteGrayText2"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    if-ne p2, v4, :cond_2

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :cond_2
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    :goto_1
    invoke-direct {v5, v6, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 174
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 176
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 177
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 178
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 180
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 181
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 182
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 184
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 185
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public setMergeDialogId(J)V
    .locals 0

    .line 4722
    iput-wide p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    return-void
.end method

.method public setNewMediaCounts([I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x6

    if-ge v1, v3, :cond_1

    .line 3402
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v4, v4, v1

    if-ltz v4, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3407
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    invoke-static {p1, v0, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3408
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateTabs(Z)V

    if-nez v1, :cond_2

    .line 3409
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getCurrentTabId()I

    move-result p1

    if-ne p1, v3, :cond_2

    .line 3410
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->resetTab()V

    .line 3412
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->checkCurrentTabValid()V

    .line 3413
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget p1, p1, v0

    if-ltz p1, :cond_3

    .line 3414
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->loadFastScrollData(Z)V

    :cond_3
    return-void
.end method

.method public setOnLoadMoreMembersListener(Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->onLoadMoreMembersListener:Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;

    return-void
.end method

.method public setPadding(IIII)V
    .locals 2

    .line 3767
    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->topPadding:I

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 3768
    :goto_0
    iget-object p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v0, p4

    if-ge p3, v0, :cond_0

    .line 3769
    aget-object p4, p4, p3

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->topPadding:I

    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->lastMeasuredTopPadding:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p4, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 3771
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/16 p4, 0x30

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v0, p2

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    int-to-float p2, p2

    .line 3772
    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->additionalFloatingTranslation:F

    .line 3773
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    neg-int p1, p1

    :cond_1
    int-to-float p1, p1

    iget p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->additionalFloatingTranslation:F

    add-float/2addr p1, p3

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method public setPinnedToTop(Z)V
    .locals 2

    .line 430
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isPinnedToTop:Z

    if-eq v0, p1, :cond_0

    .line 431
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isPinnedToTop:Z

    const/4 p1, 0x0

    .line 432
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 433
    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateFastScrollVisibility(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVisibleHeight(I)V
    .locals 3

    const/16 v0, 0x78

    .line 4065
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, 0x0

    .line 4066
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 4067
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, p1

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 4068
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4069
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object v2

    neg-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateAdapters()V
    .locals 1

    .line 4677
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v0, :cond_0

    .line 4678
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4681
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    if-eqz v0, :cond_1

    .line 4682
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4684
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v0, :cond_2

    .line 4685
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4687
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v0, :cond_3

    .line 4688
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4690
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    if-eqz v0, :cond_4

    .line 4691
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    .line 4693
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v0, :cond_5

    .line 4694
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4696
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    if-eqz v0, :cond_6

    .line 4697
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_6
    return-void
.end method

.method public updateFastScrollVisibility(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Z)V
    .locals 11

    .line 513
    iget-boolean v0, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollEnabled:Z

    const/4 v1, 0x1

    .line 535
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 513
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isPinnedToTop:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 514
    :goto_0
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v4

    .line 515
    iget-object v5, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_1

    .line 516
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 517
    iget-object v5, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-nez p2, :cond_4

    .line 520
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    .line 521
    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v6

    .line 522
    :goto_2
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 523
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 524
    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleX(F)V

    .line 525
    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_3

    :cond_4
    const-wide/16 v7, 0x96

    const/4 p2, 0x0

    const/4 v9, 0x2

    if-eqz v0, :cond_6

    .line 526
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_6

    .line 527
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 528
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    .line 529
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 530
    invoke-virtual {v4, p2}, Landroid/view/View;->setAlpha(F)V

    .line 532
    :cond_5
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v9, [F

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v6

    aput v6, v0, v3

    aput v5, v0, v1

    invoke-static {v4, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 533
    iput-object p2, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollAnimator:Landroid/animation/ObjectAnimator;

    .line 534
    invoke-virtual {p2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 535
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    if-nez v0, :cond_7

    .line 536
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 538
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v9, [F

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v5

    aput v5, v2, v3

    aput p2, v2, v1

    invoke-static {v4, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 539
    new-instance v0, Lorg/telegram/ui/Components/HideViewAfterAnimation;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/HideViewAfterAnimation;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 540
    iput-object p2, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollAnimator:Landroid/animation/ObjectAnimator;

    .line 541
    invoke-virtual {p2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 542
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 544
    invoke-virtual {v4, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_7
    :goto_3
    return-void
.end method
