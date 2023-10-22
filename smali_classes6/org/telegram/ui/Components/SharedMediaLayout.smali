.class public Lorg/telegram/ui/Components/SharedMediaLayout;
.super Landroid/widget/FrameLayout;
.source "SharedMediaLayout.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;,
        Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;,
        Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;,
        Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;,
        Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;,
        Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;,
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
        Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;,
        Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;
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

.field private allowStoriesSingleColumn:Z

.field private animateToColumnsCount:I

.field private animatingForward:Z

.field private animationSupportingArchivedStoriesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

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

.field private animationSupportingSortedCellsOffset:I

.field private animationSupportingStoriesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

.field private archivedStoriesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

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

.field private changeColumnsTab:I

.field private changeTypeAnimation:Z

.field private chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

.field private closeButton:Landroid/widget/ImageView;

.field private commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

.field final delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

.field private deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private dialog_id:J

.field private disableScrolling:Z

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

.field protected isActionModeShowed:Z

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

.field private mediaColumnsCount:[I

.field private mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

.field private mediaZoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private mediaZoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private final membersFilterItem:Landroid/widget/ImageView;

.field private final membersMenuItem:Landroid/widget/ImageView;

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

.field notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

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

.field private final playlist:Ljava/util/LinkedHashMap;
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

.field private shiftDp:F

.field private startedTracking:Z

.field private startedTrackingPointerId:I

.field private startedTrackingX:I

.field private startedTrackingY:I

.field private storiesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

.field private storiesColumnsCountSet:Z

.field private final storiesSettingsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;

.field private tabsAnimation:Landroid/animation/AnimatorSet;

.field private tabsAnimationInProgress:Z

.field topPadding:I

.field private topicId:I

.field private userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

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

.method public static synthetic $r8$lambda$BGA87s0Id0wH7MbqOB1lQOcJFmw(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$onItemClick$24(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$C78FxV7LDynQivnmJqy5PIm2cNI(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/tgnet/TLRPC$TL_error;IILorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$loadFastScrollData$18(Lorg/telegram/tgnet/TLRPC$TL_error;IILorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CtR5HtKYScIEeY-kS1HTrJ2vbpE(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$new$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JdFmi3cmYHly9g4n05EFk3_XQTo(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/tgnet/TLRPC$TL_error;IILorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$loadFastScrollData$17(Lorg/telegram/tgnet/TLRPC$TL_error;IILorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LLDn4SVlDJOWRizcZOLsGuaPqyw(Lorg/telegram/ui/Components/SharedMediaLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$getThemeDescriptions$25(I)V

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

.method public static synthetic $r8$lambda$Z7NkKRKu3fJD8xjuKRkm22iO-Uo(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$onActionBarItemClick$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$_WHNfZbdc_YEuMD2OOYFXyDW9lg(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$new$13(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fntjKTThZL8OyGvSis6TbVj3Hy8(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$onActionBarItemClick$22(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z

    move-result p0

    return p0
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

.method public static synthetic $r8$lambda$kYfdiAQ_xqWjAkP-28KJ9JYRTDk(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$stopScroll$23(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nIzKbTynqyljYPYsZhoreewkxBQ(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$new$12(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$na4iI0S9QxNDG_klp8rwg0OU4fs(Lorg/telegram/ui/Components/SharedMediaLayout;IILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$loadFastScrollData$19(IILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oJJc0JDOt6EVxJ7o-bqbTe61EWI(Lorg/telegram/ui/Components/SharedMediaLayout;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$forwardCloud$0(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$pUTRjsSi2cRM_XT7pSud5DUyCvI(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xWnNkzT8-DUd6XRPSeSDaL2HZIU(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$showFastScrollHint$20(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 450
    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/ui/Components/SharedMediaLayout;->supportedFastScrollTypes:[I

    .line 867
    sget-object v0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda10;->INSTANCE:Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda10;

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

.method public constructor <init>(Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$UserFull;ZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 24
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
            "Lorg/telegram/tgnet/TLRPC$UserFull;",
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

    move-object/from16 v3, p8

    move-object/from16 v5, p13

    .line 1604
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 159
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlist:Ljava/util/LinkedHashMap;

    .line 481
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->rect:Landroid/graphics/Rect;

    const/4 v4, 0x2

    new-array v8, v4, [Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    .line 805
    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    .line 818
    new-instance v8, Ljava/util/ArrayList;

    const/16 v15, 0xa

    invoke-direct {v8, v15}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cellCache:Ljava/util/ArrayList;

    .line 819
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v15}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cache:Ljava/util/ArrayList;

    .line 820
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v15}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioCellCache:Ljava/util/ArrayList;

    .line 821
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v15}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioCache:Ljava/util/ArrayList;

    .line 826
    new-instance v8, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda13;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hideFloatingDateRunnable:Ljava/lang/Runnable;

    .line 827
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    .line 835
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->backgroundPaint:Landroid/graphics/Paint;

    new-array v8, v4, [Landroid/util/SparseArray;

    .line 843
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    const/4 v14, 0x0

    aput-object v9, v8, v14

    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    const/4 v13, 0x1

    aput-object v9, v8, v13

    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    .line 857
    iput-boolean v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->allowStoriesSingleColumn:Z

    .line 858
    iput-boolean v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->storiesColumnsCountSet:Z

    new-array v8, v4, [I

    .line 859
    fill-array-data v8, :array_0

    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:[I

    .line 864
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingSortedCells:Ljava/util/ArrayList;

    .line 1291
    new-instance v8, Lorg/telegram/ui/Components/SharedMediaLayout$1;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    const/high16 v8, -0x3f600000    # -5.0f

    .line 1421
    iput v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->shiftDp:F

    const/4 v11, 0x6

    new-array v8, v11, [Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    .line 1577
    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    .line 3492
    new-instance v8, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v8}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 5253
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->messageAlphaEnter:Landroid/util/SparseArray;

    .line 6224
    new-instance v8, Lorg/telegram/ui/Components/SharedMediaLayout$35;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$35;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedLinkCellDelegate:Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;

    .line 1606
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v8

    const-wide/16 v17, 0x0

    if-eqz v8, :cond_1

    .line 1607
    invoke-virtual/range {p10 .. p10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    neg-long v9, v1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    .line 1608
    invoke-virtual/range {p10 .. p10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v9

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-wide v11, v8, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    goto :goto_0

    :cond_0
    move-wide/from16 v11, v17

    :goto_0
    invoke-virtual/range {p10 .. p10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMusicController()Lcom/iMe/fork/controller/MusicController;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Lcom/iMe/fork/controller/MusicController;->getPlaylistForDialog(J)Ljava/util/ArrayList;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object v8, v9

    move-wide/from16 v9, p2

    const/16 v23, 0x6

    move v4, v13

    move-object/from16 v13, v19

    move/from16 v14, v20

    move/from16 v15, v21

    move/from16 v16, v22

    invoke-virtual/range {v8 .. v16}, Lorg/telegram/messenger/MediaDataController;->loadPinnedMessages(JJLjava/util/ArrayList;ZZZ)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1610
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    .line 1611
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlist:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move/from16 v23, v11

    move v4, v13

    :cond_2
    move/from16 v8, p12

    .line 1616
    iput v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->viewType:I

    .line 1617
    iput-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1619
    new-instance v8, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v8, v7}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    .line 1620
    invoke-virtual {v8, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    move-object/from16 v8, p4

    .line 1622
    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    move-object/from16 v9, p11

    .line 1623
    iput-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    .line 1624
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getLastMediaCount()[I

    move-result-object v9

    .line 1625
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-static {v10}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->access$1100(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)I

    move-result v10

    iput v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    const/4 v11, 0x7

    new-array v12, v11, [I

    const/4 v13, 0x0

    .line 1626
    aget v14, v9, v13

    aput v14, v12, v13

    aget v14, v9, v4

    aput v14, v12, v4

    const/4 v14, 0x2

    aget v15, v9, v14

    aput v15, v12, v14

    const/4 v15, 0x3

    aget v16, v9, v15

    aput v16, v12, v15

    const/4 v14, 0x4

    aget v16, v9, v14

    aput v16, v12, v14

    const/16 v16, 0x5

    aget v9, v9, v16

    aput v9, v12, v16

    if-nez v10, :cond_3

    move/from16 v9, p5

    goto :goto_2

    :cond_3
    move v9, v13

    :goto_2
    aput v9, v12, v23

    iput-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    const/4 v9, -0x1

    if-eqz v3, :cond_4

    .line 1627
    iget-boolean v10, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->stories_pinned_available:Z

    if-nez v10, :cond_6

    :cond_4
    if-eqz v6, :cond_5

    iget-boolean v10, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->stories_pinned_available:Z

    if-nez v10, :cond_6

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1628
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getInitialTab()I

    move-result v10

    iput v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->initialTab:I

    goto :goto_5

    :cond_7
    if-eqz p9, :cond_8

    .line 1629
    iget v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    if-nez v10, :cond_8

    .line 1630
    iput v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->initialTab:I

    goto :goto_5

    :cond_8
    move v10, v13

    .line 1632
    :goto_3
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    array-length v12, v11

    if-ge v10, v12, :cond_b

    .line 1633
    aget v12, v11, v10

    if-eq v12, v9, :cond_a

    aget v11, v11, v10

    if-lez v11, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1634
    :cond_a
    :goto_4
    iput v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->initialTab:I

    .line 1639
    :cond_b
    :goto_5
    iput-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1640
    iput-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz v6, :cond_c

    .line 1642
    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:J

    neg-long v10, v10

    iput-wide v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    .line 1644
    :cond_c
    iput-wide v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    move v1, v13

    .line 1646
    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length v3, v2

    if-ge v1, v3, :cond_f

    .line 1647
    new-instance v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-direct {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;-><init>()V

    aput-object v3, v2, v1

    .line 1648
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    iget-wide v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v10, v11}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_d

    const/high16 v3, -0x80000000

    goto :goto_7

    :cond_d
    const v3, 0x7fffffff

    :goto_7
    aput v3, v2, v13

    .line 1649
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->fillMediaData(I)Z

    .line 1650
    iget-wide v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    cmp-long v2, v2, v17

    if-eqz v2, :cond_e

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_e

    .line 1651
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v10, v3, v1

    iget-object v10, v10, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_max_id:I

    aput v2, v10, v4

    .line 1652
    aget-object v2, v3, v1

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aput-boolean v13, v2, v4

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_f
    move-object/from16 v10, p10

    .line 1656
    iput-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1657
    invoke-virtual/range {p10 .. p10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 1658
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:[I

    sget v2, Lorg/telegram/messenger/SharedConfig;->mediaColumnsCount:I

    aput v2, v1, v13

    .line 1659
    sget v2, Lorg/telegram/messenger/SharedConfig;->storiesColumnsCount:I

    aput v2, v1, v4

    .line 1661
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->playlistDidChanged:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1662
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoad:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1663
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1664
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1665
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1666
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1667
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1668
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1669
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    move v1, v13

    :goto_8
    const/4 v11, 0x0

    const/16 v2, 0xa

    if-ge v1, v2, :cond_12

    .line 1673
    iget v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->initialTab:I

    if-ne v3, v14, :cond_11

    .line 1674
    new-instance v3, Lorg/telegram/ui/Components/SharedMediaLayout$2;

    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v12

    if-eqz v12, :cond_10

    sget v12, Lcom/iMe/common/IdFabric$CustomType;->SHARED_AUDIO_CELL_MUSIC:I

    goto :goto_9

    :cond_10
    move v12, v13

    :goto_9
    invoke-direct {v3, v0, v7, v12, v11}, Lorg/telegram/ui/Components/SharedMediaLayout$2;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1687
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/SharedAudioCell;->initStreamingIcons()V

    .line 1688
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioCellCache:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1692
    :cond_12
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 1693
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->maximumVelocity:I

    .line 1695
    iput-boolean v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searching:Z

    .line 1696
    iput-boolean v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchWas:Z

    .line 1698
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->photos_header_shadow:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinnedHeaderShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 1699
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v12

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v12, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1701
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    if-eqz v1, :cond_13

    .line 1702
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getCurrentTabId()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->initialTab:I

    .line 1704
    :cond_13
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->createScrollingTextTabStrip(Landroid/content/Context;)Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    move v1, v4

    :goto_a
    if-ltz v1, :cond_14

    .line 1707
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 1709
    :cond_14
    iput v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    .line 1710
    iput v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    iput v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    .line 1711
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1713
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 1714
    new-instance v3, Lorg/telegram/ui/Components/SharedMediaLayout$3;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$3;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1724
    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v1, v13, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Components/SharedMediaLayout$4;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$4;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1806
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1807
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$string;->Search:I

    const-string v11, "Search"

    invoke-static {v11, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 1808
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v11, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1809
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v3, 0x8

    goto :goto_b

    :cond_15
    move v3, v14

    :goto_b
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1812
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$5;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$5;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersFilterItem:Landroid/widget/ImageView;

    .line 1824
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1825
    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1826
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1827
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_filter_members:I

    invoke-static {v7, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1828
    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v15

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v15, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1829
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1830
    new-instance v3, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1831
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/16 v15, 0x30

    const/16 v16, 0x38

    const/16 v17, 0x55

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x30

    const/16 v21, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v1, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1832
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    .line 1833
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1834
    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1835
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1836
    new-instance v3, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda8;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1837
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/16 v9, 0x30

    const/16 v12, 0x38

    const/16 v15, 0x55

    invoke-static {v9, v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1839
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    .line 1840
    sget v3, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v4, "AccDescrMoreOptions"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1841
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1842
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1844
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-static {v7, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1845
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1846
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1847
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1848
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isArchivedOnlyStoriesView()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1849
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-static {v9, v12, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1851
    :cond_16
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$6;

    invoke-direct {v2, v0, v7, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$6;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2028
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    .line 2029
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 2030
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_player_time:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 2031
    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 2032
    iput v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    .line 2035
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v1, :cond_17

    .line 2036
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    goto :goto_c

    :cond_17
    const/4 v1, 0x0

    .line 2038
    :goto_c
    new-instance v2, Lorg/telegram/ui/Components/BlurredLinearLayout;

    invoke-direct {v2, v7, v1}, Lorg/telegram/ui/Components/BlurredLinearLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    .line 2039
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2040
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 2041
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 2042
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2044
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->closeButton:Landroid/widget/ImageView;

    .line 2045
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2046
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->closeButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v2, v4}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    iput-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2047
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    .line 2048
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->closeButton:Landroid/widget/ImageView;

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-direct {v0, v15}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v2

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2049
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->closeButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->Close:I

    const-string v3, "Close"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2050
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->closeButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v9, 0x36

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v12, -0x1

    invoke-direct {v3, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2051
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2052
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->closeButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2054
    new-instance v1, Lorg/telegram/ui/Components/NumberTextView;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v2, 0x12

    .line 2055
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 2056
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2057
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 2058
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x12

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2059
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2062
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2063
    new-instance v12, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v17

    const/16 v18, 0x0

    move-object v1, v12

    move-object/from16 v2, p1

    const/4 v14, 0x1

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZ)V

    iput-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2064
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_tone_add:I

    invoke-virtual {v12, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 2065
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->setDuplicateParentStateEnabled(Z)V

    .line 2066
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2067
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2068
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_18
    const/4 v14, 0x1

    .line 2071
    :goto_d
    iget-wide v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    if-nez v1, :cond_19

    .line 2072
    new-instance v12, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    invoke-direct {v0, v15}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v4

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v5

    const/4 v6, 0x0

    move-object v1, v12

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZ)V

    iput-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2073
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_message:I

    invoke-virtual {v12, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 2074
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrGoToMessage:I

    const-string v3, "AccDescrGoToMessage"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2075
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->setDuplicateParentStateEnabled(Z)V

    .line 2076
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2077
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2078
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2081
    new-instance v12, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    invoke-direct {v0, v15}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v4

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v5

    move-object v1, v12

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZ)V

    iput-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2082
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_forward_cloud:I

    invoke-virtual {v12, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 2083
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->chat_message_popup_option_forward_cloud:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2084
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->setDuplicateParentStateEnabled(Z)V

    .line 2085
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2086
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, -0x1

    invoke-static {v9, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2087
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2089
    new-instance v12, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    invoke-direct {v0, v15}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v4

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v5

    move-object v1, v12

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZ)V

    iput-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2090
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_forward:I

    invoke-virtual {v12, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 2091
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->Forward:I

    const-string v3, "Forward"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2092
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->setDuplicateParentStateEnabled(Z)V

    .line 2093
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2094
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2095
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2097
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateForwardItem()V

    .line 2099
    :cond_19
    new-instance v12, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    invoke-direct {v0, v15}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v4

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v5

    const/4 v6, 0x0

    move-object v1, v12

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZ)V

    iput-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2100
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v12, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 2101
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v3, "Delete"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2102
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->setDuplicateParentStateEnabled(Z)V

    .line 2103
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2104
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2105
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2108
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2109
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    sget v2, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    invoke-direct {v1, v0, v7, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    .line 2110
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-direct {v1, v0, v7, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    .line 2113
    :cond_1a
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$7;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$7;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    .line 2123
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingPhotoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    .line 2124
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-direct {v1, v0, v7, v14}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    .line 2125
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v7, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    .line 2126
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v7, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    .line 2127
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    .line 2128
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-direct {v1, v0, v7, v14}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    .line 2129
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-direct {v1, v0, v7, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    .line 2130
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v7, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    .line 2131
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    .line 2132
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    .line 2133
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    .line 2134
    iget v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    if-nez v2, :cond_1c

    move-object/from16 v2, p6

    .line 2135
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$4002(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2136
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    if-eqz p9, :cond_1b

    move-object/from16 v2, p7

    goto :goto_e

    :cond_1b
    const/4 v2, 0x0

    :goto_e
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$4102(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;Lorg/telegram/tgnet/TLRPC$ChatFull;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 2138
    :cond_1c
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$8;

    invoke-direct {v1, v0, v7, v13}, Lorg/telegram/ui/Components/SharedMediaLayout$8;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Z)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->storiesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    .line 2151
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    invoke-direct {v1, v0, v7, v13}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Z)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingStoriesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    .line 2152
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$9;

    invoke-direct {v1, v0, v7, v14}, Lorg/telegram/ui/Components/SharedMediaLayout$9;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Z)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->archivedStoriesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    .line 2165
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    invoke-direct {v1, v0, v7, v14}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Z)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingArchivedStoriesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    .line 2166
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->storiesSettingsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;

    .line 2167
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    .line 2169
    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    move v2, v13

    move v3, v2

    const/4 v1, -0x1

    .line 2174
    :goto_f
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v5, v4

    if-ge v2, v5, :cond_23

    if-nez v2, :cond_1e

    .line 2176
    aget-object v5, v4, v2

    if-eqz v5, :cond_1e

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 2177
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v2

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 2178
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v14

    if-eq v1, v4, :cond_1d

    .line 2179
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz v4, :cond_1d

    .line 2181
    iget-object v3, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    goto :goto_10

    :cond_1d
    const/4 v1, -0x1

    .line 2190
    :cond_1e
    :goto_10
    new-instance v4, Lorg/telegram/ui/Components/SharedMediaLayout$10;

    invoke-direct {v4, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$10;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, 0x33

    const/16 v18, 0x0

    .line 2237
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v5

    if-eqz v5, :cond_1f

    move/from16 v19, v13

    goto :goto_11

    :cond_1f
    const/16 v19, 0x30

    :goto_11
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-ne v2, v14, :cond_20

    .line 2239
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2241
    :cond_20
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aput-object v4, v5, v2

    .line 2243
    aget-object v5, v5, v2

    new-instance v6, Lorg/telegram/ui/Components/SharedMediaLayout$11;

    const/16 v8, 0x64

    invoke-direct {v6, v0, v7, v8, v4}, Lorg/telegram/ui/Components/SharedMediaLayout$11;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;ILorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$302(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/ExtendedGridLayoutManager;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v5

    .line 2308
    new-instance v6, Lorg/telegram/ui/Components/SharedMediaLayout$12;

    invoke-direct {v6, v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout$12;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 2337
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v2

    new-instance v8, Lorg/telegram/ui/Components/SharedMediaLayout$13;

    invoke-direct {v8, v0, v7, v4, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$13;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/ExtendedGridLayoutManager;)V

    invoke-static {v6, v8}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$202(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    .line 2716
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v2

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v6

    invoke-virtual {v6, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollEnabled(I)V

    .line 2717
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v2

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v6

    invoke-virtual {v6, v14}, Landroidx/recyclerview/widget/RecyclerView;->setScrollingTouchSlop(I)V

    .line 2718
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v2

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v6

    const/4 v8, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    neg-int v9, v9

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setPinnedSectionOffsetY(I)V

    .line 2719
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v2

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v6, v13, v9, v13, v13}, Lorg/telegram/ui/Components/BlurredRecyclerView;->setPadding(IIII)V

    .line 2720
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v2

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 2721
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v2

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 2722
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v2

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v6

    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setSectionsType(I)V

    .line 2723
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v2

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2724
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v11, v6, v2

    aget-object v6, v6, v2

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v6

    const/4 v12, -0x1

    invoke-static {v12, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v11, v6, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2725
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v2

    new-instance v11, Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    invoke-direct {v11, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v11}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3802(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    .line 2726
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v2

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v6

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v11, v11, v2

    new-instance v12, Lorg/telegram/ui/Components/SharedMediaLayout$14;

    const/4 v15, 0x3

    invoke-direct {v12, v0, v7, v15}, Lorg/telegram/ui/Components/SharedMediaLayout$14;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V

    invoke-static {v11, v12}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5902(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Landroidx/recyclerview/widget/GridLayoutManager;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2741
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v11, v6, v2

    aget-object v6, v6, v2

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v6

    const/4 v12, -0x1

    invoke-static {v12, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v11, v6, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2742
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v2

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v6

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2743
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v2

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v6

    new-instance v8, Lorg/telegram/ui/Components/SharedMediaLayout$15;

    invoke-direct {v8, v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout$15;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 2765
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v2

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v6

    new-instance v8, Lorg/telegram/ui/Components/SharedMediaLayout$16;

    invoke-direct {v8, v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout$16;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 2795
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v2

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v6

    new-instance v8, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda22;

    invoke-direct {v8, v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 2870
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v2

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v6

    new-instance v8, Lorg/telegram/ui/Components/SharedMediaLayout$17;

    invoke-direct {v8, v0, v4, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$17;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/ExtendedGridLayoutManager;)V

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 2892
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v2

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v6

    new-instance v8, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda23;

    invoke-direct {v8, v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    if-nez v2, :cond_21

    const/4 v6, -0x1

    if-eq v1, v6, :cond_21

    .line 2944
    invoke-virtual {v5, v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2947
    :cond_21
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v5

    .line 2949
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v2

    new-instance v8, Lorg/telegram/ui/Components/SharedMediaLayout$18;

    invoke-direct {v8, v0, v7, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$18;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-static {v6, v8}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$602(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/ClippingImageView;)Lorg/telegram/ui/Components/ClippingImageView;

    .line 2956
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2957
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v2

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object v6

    const/4 v8, -0x1

    invoke-static {v8, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v5, v6, v11}, Lorg/telegram/ui/Components/RecyclerListView;->addOverlayView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 2959
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    new-instance v6, Lorg/telegram/ui/Components/SharedMediaLayout$19;

    invoke-direct {v6, v0, v7, v4}, Lorg/telegram/ui/Components/SharedMediaLayout$19;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$6202(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/FlickerLoadingView;)Lorg/telegram/ui/Components/FlickerLoadingView;

    .line 2997
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$6200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object v4

    invoke-virtual {v4, v13}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    if-eqz v2, :cond_22

    .line 2999
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3002
    :cond_22
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v4, v2

    new-instance v6, Lorg/telegram/ui/Components/StickerEmptyView;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$6200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object v4

    invoke-direct {v6, v7, v4, v14}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4302(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/StickerEmptyView;)Lorg/telegram/ui/Components/StickerEmptyView;

    .line 3003
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 3004
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v4

    invoke-virtual {v4, v14}, Lorg/telegram/ui/Components/StickerEmptyView;->setAnimateLayoutChange(Z)V

    .line 3005
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v4, v2

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v4

    const/4 v8, -0x1

    invoke-static {v8, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v6, v4, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3006
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v4

    sget-object v6, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda9;->INSTANCE:Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda9;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3007
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v4

    invoke-virtual {v4, v14, v13}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 3008
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->NoResult:I

    const-string v8, "NoResult"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3009
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v6, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitle2:I

    const-string v8, "SearchEmptyViewFilteredSubtitle2"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3010
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v2

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$6200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object v6

    const/4 v8, -0x1

    invoke-static {v8, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v6, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3012
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v2

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 3013
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v4

    invoke-virtual {v4, v14, v13}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 3015
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v4, v2

    new-instance v8, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v4

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v11, v11, v2

    invoke-static {v11}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v11

    invoke-direct {v8, v4, v11}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-static {v6, v8}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$6502(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    .line 3018
    :cond_23
    new-instance v1, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    .line 3019
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2, v13, v13}, Lorg/telegram/ui/Cells/ChatActionCell;->setCustomDate(IZZ)V

    .line 3020
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 3021
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaTimeBackground:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaTimeText:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->setOverrideColor(II)V

    .line 3022
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/16 v2, 0x30

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 3023
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v15, -0x2

    const/16 v16, -0x2

    const/16 v17, 0x31

    const/16 v18, 0x0

    const/16 v19, 0x34

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3025
    new-instance v1, Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v2, 0x0

    move-object/from16 p2, v1

    move-object/from16 p3, p1

    move-object/from16 p4, p10

    move-object/from16 p5, p0

    move/from16 p6, v2

    move-object/from16 p7, p13

    invoke-direct/range {p2 .. p7}, Lorg/telegram/ui/Components/FragmentContextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v15, -0x1

    const/16 v16, 0x26

    const/16 v17, 0x33

    const/16 v19, 0x30

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3026
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda21;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/FragmentContextView;->setDelegate(Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;)V

    .line 3032
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v1

    if-nez v1, :cond_24

    .line 3033
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    const/16 v2, 0x33

    const/16 v3, 0x30

    const/4 v4, -0x1

    invoke-static {v4, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3034
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    invoke-static {v4, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_12

    :cond_24
    const/4 v4, -0x1

    .line 3037
    :goto_12
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->shadowLine:Landroid/view/View;

    .line 3038
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3039
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3040
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v2

    if-eqz v2, :cond_25

    move v14, v13

    goto :goto_13

    :cond_25
    const/16 v2, 0x30

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    :goto_13
    iput v14, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3041
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->shadowLine:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3043
    invoke-direct {v0, v13}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateTabs(Z)V

    .line 3044
    invoke-direct {v0, v13}, Lorg/telegram/ui/Components/SharedMediaLayout;->switchToCurrentSelectedMode(Z)V

    .line 3045
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v1, v1, v13

    if-ltz v1, :cond_26

    .line 3046
    invoke-direct {v0, v13}, Lorg/telegram/ui/Components/SharedMediaLayout;->loadFastScrollData(Z)V

    :cond_26
    return-void

    :array_0
    .array-data 4
        0x3
        0x3
    .end array-data
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    return-object p0
.end method

.method static synthetic access$10000(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/RecyclerListView;ILandroid/util/SparseBooleanArray;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout;->animateItemsEnter(Lorg/telegram/ui/Components/RecyclerListView;ILandroid/util/SparseBooleanArray;)V

    return-void
.end method

.method static synthetic access$10100(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->storiesColumnsCountSet:Z

    return p0
.end method

.method static synthetic access$10102(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 146
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->storiesColumnsCountSet:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/SharedMediaLayout;)J
    .locals 2

    .line 146
    iget-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    return-wide v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searching:Z

    return p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 146
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searching:Z

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/widget/ImageView;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersFilterItem:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 146
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchWas:Z

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->ignoreSearchCollapse:Z

    return p0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 146
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->ignoreSearchCollapse:Z

    return p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->switchToCurrentSelectedMode(Z)V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaZoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object p0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 0

    .line 146
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaZoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaZoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 0

    .line 146
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaZoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->allowStoriesSingleColumn:Z

    return p0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 146
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->allowStoriesSingleColumn:Z

    return p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/SharedMediaLayout;)[I
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:[I

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/SharedMediaLayout;)J
    .locals 2

    .line 146
    iget-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    return-wide v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->storiesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->archivedStoriesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->changeTypeAnimation:Z

    return p0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 146
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->changeTypeAnimation:Z

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/SharedMediaLayout;)F
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->shiftDp:F

    return p0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/Components/SharedMediaLayout;F)F
    .locals 0

    .line 146
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->shiftDp:F

    return p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->changeMediaFilterType()V

    return-void
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/SharedMediaLayout;I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getMediaPage(I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingPhotoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;Z)V
    .locals 0

    .line 146
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->showFastScrollHint(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;Z)V

    return-void
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingStoriesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingArchivedStoriesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimationInProgress:Z

    return p0
.end method

.method static synthetic access$4502(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 146
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    return p0
.end method

.method static synthetic access$4702(Lorg/telegram/ui/Components/SharedMediaLayout;I)I
    .locals 0

    .line 146
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    return p1
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isMembersMenuVisible:Z

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/widget/ImageView;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    return-object p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout;->checkLoadMoreScroll(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    return-void
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    return p0
.end method

.method static synthetic access$5202(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 146
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    return p1
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/SharedMediaLayout;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->changeColumnsTab:I

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/SharedMediaLayout;)F
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsProgress:F

    return p0
.end method

.method static synthetic access$5402(Lorg/telegram/ui/Components/SharedMediaLayout;F)F
    .locals 0

    .line 146
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsProgress:F

    return p1
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animateToColumnsCount:I

    return p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingSortedCells:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/SharedMediaLayout;)I
    .locals 0

    .line 146
    iget p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingSortedCellsOffset:I

    return p0
.end method

.method static synthetic access$5702(Lorg/telegram/ui/Components/SharedMediaLayout;I)I
    .locals 0

    .line 146
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingSortedCellsOffset:I

    return p1
.end method

.method static synthetic access$5708(Lorg/telegram/ui/Components/SharedMediaLayout;)I
    .locals 2

    .line 146
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingSortedCellsOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingSortedCellsOffset:I

    return v0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/view/View;)I
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getMessageId(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrolling:Z

    return p0
.end method

.method static synthetic access$6002(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 146
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrolling:Z

    return p1
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->showFloatingDateView()V

    return-void
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/SharedMediaLayout;I)I
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/graphics/Paint;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Components/SharedMediaLayout;IIIZ)V
    .locals 0

    .line 146
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SharedMediaLayout;->jumpToDate(IIIZ)V

    return-void
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->saveScrollPosition()V

    return-void
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->hideFloatingDateView(Z)V

    return-void
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animatingForward:Z

    return p0
.end method

.method static synthetic access$6902(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 146
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animatingForward:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    return-object p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollToTop()V

    return-void
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->startStopVisibleGifs()V

    return-void
.end method

.method static synthetic access$7202(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 146
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$7702(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 146
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->backAnimation:Z

    return p0
.end method

.method static synthetic access$7902(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 146
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybeStartTracking:Z

    return p1
.end method

.method static synthetic access$8002(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 146
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    return p1
.end method

.method static synthetic access$8100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$8202(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 146
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    return-object p0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    return-object p0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    return-object p0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/Components/SharedMediaLayout;I)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->fixLayoutInternal(I)V

    return-void
.end method

.method static synthetic access$8900(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/FragmentContextView;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    return-object p0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/Components/SharedMediaLayout;Ljava/lang/String;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$9200(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$9300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    return-object p0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlist:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioCellCache:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$9700(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 146
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioCache:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$9800(Lorg/telegram/ui/Components/SharedMediaLayout;ILorg/telegram/ui/Components/RecyclerListView;Z)V
    .locals 0

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout;->findPeriodAndJumpToDate(ILorg/telegram/ui/Components/RecyclerListView;Z)V

    return-void
.end method

.method private animateItemsEnter(Lorg/telegram/ui/Components/RecyclerListView;ILandroid/util/SparseBooleanArray;)V
    .locals 9

    .line 5256
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v7, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 5259
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5260
    instance-of v3, v1, Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v3, :cond_0

    move-object v7, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_2

    .line 5266
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5268
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$32;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p3

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/SharedMediaLayout$32;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/RecyclerListView;Landroid/util/SparseBooleanArray;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private animateToMediaColumnsCount(I)V
    .locals 10

    .line 3495
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->changeColumnsTab:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getMediaPage(I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    const/4 v1, -0x1

    .line 3496
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    if-eqz v0, :cond_8

    .line 3499
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 3500
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animateToColumnsCount:I

    .line 3501
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 3502
    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->changeColumnsTab:I

    const/16 v3, 0x8

    const/16 v4, 0x9

    if-ne v1, v3, :cond_0

    .line 3503
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingStoriesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_0
    if-ne v1, v4, :cond_1

    .line 3505
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingArchivedStoriesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 3507
    :cond_1
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingPhotoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3509
    :goto_0
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    .line 3510
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    const/4 v6, 0x2

    .line 3511
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v8

    iget v9, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->changeColumnsTab:I

    if-ne v9, v4, :cond_2

    const/16 v9, 0x40

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    goto :goto_1

    :cond_2
    move v9, v2

    :goto_1
    iput v9, v8, Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;->hintPaddingTop:I

    add-int/2addr v7, v9

    .line 3512
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v8

    .line 3513
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    .line 3509
    invoke-virtual {v1, v5, v7, v8, v9}, Lorg/telegram/ui/Components/BlurredRecyclerView;->setPadding(IIII)V

    .line 3515
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5900(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 3516
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    move v1, v2

    .line 3517
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v7, v5

    if-ge v1, v7, :cond_4

    .line 3518
    aget-object v7, v5, v1

    if-eqz v7, :cond_3

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->isTabZoomable(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3519
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    .line 3523
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    .line 3524
    iget v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->changeColumnsTab:I

    if-nez v5, :cond_5

    .line 3525
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v5, v5, v2

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setListFrozen(Z)V

    :cond_5
    const/4 v5, 0x0

    .line 3527
    iput v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsProgress:F

    .line 3528
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->saveScrollPosition()V

    new-array v5, v6, [F

    .line 3529
    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 3531
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v6}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 3532
    new-instance v6, Lorg/telegram/ui/Components/SharedMediaLayout$25;

    invoke-direct {v6, p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$25;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3539
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v6

    if-eq v6, v3, :cond_6

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    if-ne v0, v4, :cond_7

    :cond_6
    move v2, v1

    .line 3540
    :cond_7
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$26;

    invoke-direct {v0, p0, v2, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$26;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;II)V

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3569
    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v5, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x64

    .line 3570
    invoke-virtual {v5, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v0, 0x15e

    .line 3571
    invoke-virtual {v5, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3572
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    :cond_8
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private changeMediaFilterType()V
    .locals 10

    const/4 v0, 0x0

    .line 3143
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getMediaPage(I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3144
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    .line 3147
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

    .line 3149
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v3, :cond_0

    .line 3152
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->changeTypeAnimation:Z

    .line 3153
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3154
    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 3155
    new-instance v4, Landroid/view/View;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3156
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3157
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3159
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v7, 0xc8

    invoke-virtual {v5, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v9, Lorg/telegram/ui/Components/SharedMediaLayout$20;

    invoke-direct {v9, p0, v4, v1, v3}, Lorg/telegram/ui/Components/SharedMediaLayout$20;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/view/View;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 3168
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3169
    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 3170
    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3174
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getLastMediaCount()[I

    move-result-object v1

    .line 3175
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getSharedMediaData()[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    .line 3176
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v5, v4, v0

    iget v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-nez v5, :cond_1

    .line 3177
    aget-object v4, v4, v0

    aget v1, v1, v0

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setTotalCount(I)V

    goto :goto_1

    .line 3178
    :cond_1
    aget-object v5, v4, v0

    iget v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v5, v2, :cond_2

    .line 3179
    aget-object v4, v4, v0

    const/4 v5, 0x6

    aget v1, v1, v5

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setTotalCount(I)V

    goto :goto_1

    .line 3181
    :cond_2
    aget-object v4, v4, v0

    const/4 v5, 0x7

    aget v1, v1, v5

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setTotalCount(I)V

    .line 3183
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v1, v1, v0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollDataLoaded:Z

    .line 3184
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

    .line 3185
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->loadFastScrollData(Z)V

    .line 3186
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;->updateSelectedMediaTabText()V

    .line 3187
    iget-wide v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    move v4, v0

    .line 3188
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 3189
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 3190
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v7, v6, v0

    iget v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-nez v7, :cond_4

    .line 3191
    aget-object v6, v6, v0

    invoke-virtual {v6, v5, v0, v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;IZZ)Z

    goto :goto_4

    .line 3192
    :cond_4
    aget-object v6, v6, v0

    iget v6, v6, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v6, v2, :cond_5

    .line 3193
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3194
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v6, v6, v0

    invoke-virtual {v6, v5, v0, v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;IZZ)Z

    goto :goto_4

    .line 3197
    :cond_5
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v6

    if-nez v6, :cond_6

    .line 3198
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

    .line 4015
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getCurrentTabId()I

    move-result v0

    .line 4016
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4017
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getFirstTabId()I

    move-result v0

    .line 4018
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setInitialTabId(I)V

    .line 4019
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$002(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;I)I

    .line 4020
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->switchToCurrentSelectedMode(Z)V

    :cond_0
    return-void
.end method

.method private checkLoadMoreScroll(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 3788
    iget-boolean v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    if-nez v3, :cond_20

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->jumpToRunnable:Ljava/lang/Runnable;

    if-nez v3, :cond_20

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    sget v4, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-eq v3, v4, :cond_20

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    goto/16 :goto_5

    .line 3791
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 3792
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v7, v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->lastCheckScrollTime:J

    sub-long v7, v5, v7

    const-wide/16 v9, 0x12c

    cmp-long v3, v7, v9

    if-gez v3, :cond_1

    return-void

    .line 3795
    :cond_1
    iput-wide v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->lastCheckScrollTime:J

    .line 3796
    iget-boolean v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searching:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchWas:Z

    if-eqz v3, :cond_2

    return-void

    .line 3799
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v3, v5, :cond_3

    move v8, v6

    goto :goto_0

    .line 3800
    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v8, v7

    .line 3801
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v9

    .line 3802
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v10

    const/16 v11, 0x64

    const/4 v12, 0x4

    const/4 v13, 0x2

    if-eqz v10, :cond_4

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v10

    if-eq v10, v7, :cond_4

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v10

    if-eq v10, v13, :cond_4

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v10

    if-ne v10, v12, :cond_b

    .line 3803
    :cond_4
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v9

    .line 3804
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->getStartOffset()I

    move-result v10

    iget-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v14, v14, v9

    iget-object v14, v14, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/2addr v10, v14

    .line 3805
    iget-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v15, v14, v9

    iget-boolean v15, v15, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollDataLoaded:Z

    if-eqz v15, :cond_a

    aget-object v14, v14, v9

    iget-object v14, v14, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-le v14, v13, :cond_a

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v14

    if-nez v14, :cond_a

    iget-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v14, v14, v9

    iget-object v14, v14, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-eqz v14, :cond_a

    if-nez v9, :cond_5

    .line 3808
    iget-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:[I

    aget v14, v14, v6

    goto :goto_1

    :cond_5
    move v14, v7

    .line 3810
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    int-to-float v14, v14

    div-float/2addr v4, v14

    div-float/2addr v15, v4

    mul-float/2addr v15, v14

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v15, v4

    float-to-int v4, v15

    if-ge v4, v11, :cond_6

    move v4, v11

    .line 3814
    :cond_6
    iget-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v14, v14, v9

    iget-object v14, v14, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    iget v14, v14, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->startOffset:I

    if-ge v4, v14, :cond_7

    .line 3815
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v4, v4, v9

    iget-object v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    iget v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->startOffset:I

    :cond_7
    if-le v3, v10, :cond_8

    sub-int v14, v3, v10

    if-gt v14, v4, :cond_9

    :cond_8
    add-int v14, v3, v8

    .line 3817
    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v15, v15, v9

    invoke-static {v15}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$800(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result v15

    if-ge v14, v15, :cond_a

    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v15, v15, v6

    invoke-static {v15}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$800(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result v15

    sub-int/2addr v15, v14

    if-le v15, v4, :cond_a

    .line 3818
    :cond_9
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda15;

    invoke-direct {v1, v0, v9, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;ILorg/telegram/ui/Components/RecyclerListView;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->jumpToRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_a
    move v9, v10

    .line 3827
    :cond_b
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    const/16 v10, 0x8

    const/4 v14, 0x7

    if-ne v4, v14, :cond_c

    add-int/2addr v3, v8

    sub-int/2addr v9, v10

    if-lt v3, v9, :cond_20

    .line 3830
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->onLoadMoreMembersListener:Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;

    if-eqz v1, :cond_20

    .line 3831
    invoke-interface {v1}, Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;->onLoadMore()V

    goto/16 :goto_5

    .line 3836
    :cond_c
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-ne v4, v10, :cond_d

    .line 3837
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->storiesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v1, :cond_20

    add-int/2addr v3, v8

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getLoadedCount()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:[I

    aget v2, v2, v7

    sub-int/2addr v1, v2

    if-le v3, v1, :cond_20

    .line 3838
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->storiesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->load(Z)V

    goto/16 :goto_5

    .line 3840
    :cond_d
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    const/16 v10, 0x9

    if-ne v4, v10, :cond_e

    .line 3841
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->archivedStoriesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v1, :cond_20

    add-int/2addr v3, v8

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getLoadedCount()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:[I

    aget v2, v2, v7

    sub-int/2addr v1, v2

    if-le v3, v1, :cond_20

    .line 3842
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->archivedStoriesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->load(Z)V

    goto/16 :goto_5

    .line 3844
    :cond_e
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    const/4 v10, 0x6

    const/4 v15, 0x5

    if-ne v4, v10, :cond_f

    if-lez v8, :cond_20

    .line 3846
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->access$7300(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->access$7400(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->access$7500(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    add-int/2addr v3, v8

    sub-int/2addr v9, v15

    if-lt v3, v9, :cond_20

    .line 3847
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->access$7500(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->access$7500(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v1, v2, v3, v11}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->access$7600(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;JI)V

    goto/16 :goto_5

    .line 3852
    :cond_f
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    const/4 v11, 0x3

    if-nez v4, :cond_10

    move v4, v11

    goto :goto_2

    .line 3854
    :cond_10
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-ne v4, v15, :cond_11

    const/16 v4, 0xa

    goto :goto_2

    :cond_11
    move v4, v10

    :goto_2
    add-int/2addr v8, v3

    sub-int/2addr v9, v4

    if-gt v8, v9, :cond_12

    .line 3860
    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v9

    aget-object v8, v8, v9

    iget-boolean v8, v8, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loadingAfterFastScroll:Z

    if-eqz v8, :cond_1b

    :cond_12
    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v9

    aget-object v8, v8, v9

    iget-boolean v8, v8, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    if-nez v8, :cond_1b

    .line 3862
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    if-nez v8, :cond_15

    .line 3864
    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v9, v8, v6

    iget v9, v9, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v9, v7, :cond_13

    move/from16 v22, v10

    goto :goto_3

    .line 3866
    :cond_13
    aget-object v8, v8, v6

    iget v8, v8, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v8, v13, :cond_14

    move/from16 v22, v14

    goto :goto_3

    :cond_14
    move/from16 v22, v6

    goto :goto_3

    .line 3869
    :cond_15
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    if-ne v8, v7, :cond_16

    move/from16 v22, v7

    goto :goto_3

    .line 3871
    :cond_16
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    if-ne v8, v13, :cond_17

    move/from16 v22, v13

    goto :goto_3

    .line 3873
    :cond_17
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    if-ne v8, v12, :cond_18

    move/from16 v22, v12

    goto :goto_3

    .line 3875
    :cond_18
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    if-ne v8, v15, :cond_19

    move/from16 v22, v15

    goto :goto_3

    :cond_19
    move/from16 v22, v11

    .line 3880
    :goto_3
    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v9

    aget-object v8, v8, v9

    iget-object v8, v8, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v8, v8, v6

    if-nez v8, :cond_1a

    .line 3881
    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v9

    aget-object v8, v8, v9

    iput-boolean v7, v8, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    .line 3882
    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v16

    iget-wide v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

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

    move-wide/from16 v17, v8

    move/from16 v23, v10

    move/from16 v26, v11

    invoke-virtual/range {v16 .. v26}, Lorg/telegram/messenger/MediaDataController;->loadMedia(JIIIIIIII)V

    goto :goto_4

    .line 3883
    :cond_1a
    iget-wide v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1b

    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v9

    aget-object v8, v8, v9

    iget-object v8, v8, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v8, v8, v7

    if-nez v8, :cond_1b

    .line 3884
    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v9

    aget-object v8, v8, v9

    iput-boolean v7, v8, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    .line 3885
    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v16

    iget-wide v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    const/16 v19, 0x32

    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v11

    aget-object v10, v10, v11

    iget-object v10, v10, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    aget v20, v10, v7

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

    move-wide/from16 v17, v8

    move/from16 v23, v10

    move/from16 v26, v11

    invoke-virtual/range {v16 .. v26}, Lorg/telegram/messenger/MediaDataController;->loadMedia(JIIIIIIII)V

    .line 3889
    :cond_1b
    :goto_4
    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v9

    aget-object v8, v8, v9

    invoke-static {v8}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$800(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result v8

    .line 3890
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v9

    if-nez v9, :cond_1c

    .line 3891
    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v8, v6}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getPositionForIndex(I)I

    move-result v8

    :cond_1c
    sub-int v8, v3, v8

    add-int/2addr v4, v7

    if-ge v8, v4, :cond_1d

    .line 3893
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    aget-object v4, v4, v8

    iget-boolean v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    if-nez v4, :cond_1d

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    aget-object v4, v4, v8

    iget-boolean v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startReached:Z

    if-nez v4, :cond_1d

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    aget-object v4, v4, v8

    iget-boolean v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loadingAfterFastScroll:Z

    if-nez v4, :cond_1d

    .line 3894
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->loadFromStart(I)V

    .line 3896
    :cond_1d
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v6

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    if-ne v1, v2, :cond_20

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v6

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v6

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    if-ne v1, v15, :cond_20

    :cond_1e
    if-eq v3, v5, :cond_20

    .line 3897
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 3898
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    if-nez v2, :cond_20

    .line 3899
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz v2, :cond_1f

    .line 3900
    check-cast v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    .line 3901
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->getMessageObject(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 3903
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-virtual {v2, v1, v6, v7}, Lorg/telegram/ui/Cells/ChatActionCell;->setCustomDate(IZZ)V

    goto :goto_5

    .line 3905
    :cond_1f
    instance-of v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v2, :cond_20

    .line 3906
    check-cast v1, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 3907
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ContextLinkCell;->getDate()I

    move-result v1

    invoke-virtual {v2, v1, v6, v7}, Lorg/telegram/ui/Cells/ChatActionCell;->setCustomDate(IZZ)V

    :cond_20
    :goto_5
    return-void
.end method

.method private checkPointerIds(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 628
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 631
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

    .line 634
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

    .line 6664
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;

    invoke-direct {v0, p0, p4}, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-nez p1, :cond_1

    .line 6666
    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6667
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->NoMediaSecret:I

    const-string p2, "NoMediaSecret"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 6669
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

    .line 6672
    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 6673
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->NoSharedFilesSecret:I

    const-string p2, "NoSharedFilesSecret"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 6675
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

    .line 6678
    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 6679
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->NoSharedVoiceSecret:I

    const-string p2, "NoSharedVoiceSecret"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 6681
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

    .line 6684
    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 6685
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->NoSharedLinksSecret:I

    const-string p2, "NoSharedLinksSecret"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 6687
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

    .line 6689
    sget p0, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne p1, p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 p0, 0x5

    if-ne p1, p0, :cond_a

    .line 6700
    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 6701
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->NoSharedGifSecret:I

    const-string p2, "NoSharedGifSecret"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 6703
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

    .line 6706
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6707
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

    .line 6709
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6710
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6712
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyImageView:Landroid/widget/ImageView;

    sget p1, Lorg/telegram/messenger/R$drawable;->fork_members_tip:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6713
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->common_empty_state_title:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 6690
    :cond_c
    :goto_0
    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 6691
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->NoSharedAudioSecret:I

    const-string p2, "NoSharedAudioSecret"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 6694
    :cond_d
    sget p0, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne p1, p0, :cond_e

    .line 6695
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->music_playlist_empty_title:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 6697
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

    .line 3596
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p0, p1, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 3597
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->initialTab:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 3598
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setInitialTabId(I)V

    .line 3599
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->initialTab:I

    .line 3601
    :cond_0
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;->setBackgroundColor(I)V

    .line 3602
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedLine:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedText:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabText:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelector:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setColors(IIII)V

    .line 3603
    new-instance p1, Lorg/telegram/ui/Components/SharedMediaLayout$27;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$27;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setDelegate(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;)V

    return-object v0
.end method

.method private fillMediaData(I)Z
    .locals 7

    .line 3690
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getSharedMediaData()[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    .line 3695
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v2, p1

    iget-boolean v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollDataLoaded:Z

    if-nez v3, :cond_2

    .line 3696
    aget-object v2, v2, p1

    aget-object v3, v0, p1

    iget v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    iput v3, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    goto :goto_0

    .line 3699
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v2, p1

    aget-object v3, v0, p1

    iget v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    iput v3, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    .line 3701
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    aget-object v3, v0, p1

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3703
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    aget-object v3, v0, p1

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3704
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

    .line 3705
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

    .line 3708
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    aget-object v3, v0, p1

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v3

    aput-object v3, v2, v1

    .line 3709
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v2, p1

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    aget-object v4, v0, p1

    iget-object v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    aget v4, v4, v1

    aput v4, v3, v1

    .line 3710
    aget-object v2, v2, p1

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-object v3, v0, p1

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v3, v3, v1

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3712
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v1, v1, p1

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    aget-object v2, v0, p1

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3713
    aget-object p1, v0, p1

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private findPeriodAndJumpToDate(ILorg/telegram/ui/Components/RecyclerListView;Z)V
    .locals 4

    .line 7021
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    .line 7023
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    if-ltz p2, :cond_3

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 7026
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 7027
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    iget v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->startOffset:I

    if-gt p2, v3, :cond_0

    .line 7028
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

    .line 7033
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    :cond_2
    if-eqz v1, :cond_3

    .line 7037
    iget p2, v1, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->maxId:I

    iget v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->startOffset:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Components/SharedMediaLayout;->jumpToDate(IIIZ)V

    :cond_3
    return-void
.end method

.method private finishPinchToMediaColumnsCount()V
    .locals 9

    .line 3360
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    .line 3362
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 3363
    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->changeColumnsTab:I

    if-ne v3, v4, :cond_0

    .line 3364
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_14

    .line 3369
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    const/16 v5, 0x9

    if-ne v2, v5, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v4

    .line 3370
    :goto_3
    iget v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsProgress:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v7, v5, v6

    if-nez v7, :cond_f

    .line 3371
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    .line 3372
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:[I

    iget v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animateToColumnsCount:I

    aput v5, v4, v2

    if-nez v2, :cond_4

    .line 3374
    invoke-static {v5}, Lorg/telegram/messenger/SharedConfig;->setMediaColumnsCount(I)V

    goto :goto_4

    .line 3375
    :cond_4
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesCount(I)I

    move-result v0

    const/4 v4, 0x5

    if-lt v0, v4, :cond_5

    .line 3376
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animateToColumnsCount:I

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setStoriesColumnsCount(I)V

    :cond_5
    :goto_4
    move v0, v1

    .line 3378
    :goto_5
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v5, v4

    if-ge v0, v5, :cond_a

    .line 3379
    aget-object v5, v4, v0

    if-eqz v5, :cond_9

    aget-object v4, v4, v0

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v0

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->isTabZoomable(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3380
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v0

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_6

    .line 3384
    :cond_6
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    if-nez v0, :cond_7

    .line 3386
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v6, v6, v1

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setListFrozen(Z)V

    .line 3388
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v0

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 3389
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v0

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 3390
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v0

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 3391
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v0

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->invalidate()V

    .line 3392
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v6

    if-ne v6, v5, :cond_8

    .line 3393
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v0

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    goto :goto_6

    .line 3395
    :cond_8
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_9
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    .line 3399
    :cond_a
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    if-ltz v0, :cond_d

    .line 3400
    :goto_7
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v2, v0

    if-ge v1, v2, :cond_e

    .line 3401
    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->changeColumnsTab:I

    if-ne v0, v2, :cond_c

    .line 3402
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5900(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3404
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterOffset:I

    .line 3406
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterOffset:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3410
    :cond_d
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->saveScrollPosition()V

    :cond_e
    return-void

    :cond_f
    const/4 v7, 0x0

    cmpl-float v8, v5, v7

    if-nez v8, :cond_11

    .line 3415
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    .line 3416
    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->changeColumnsTab:I

    if-nez v2, :cond_10

    .line 3417
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v2, v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setListFrozen(Z)V

    .line 3419
    :cond_10
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 3420
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    :cond_11
    const v3, 0x3e4ccccd    # 0.2f

    cmpl-float v3, v5, v3

    if-lez v3, :cond_12

    move v3, v4

    goto :goto_8

    :cond_12
    move v3, v1

    :goto_8
    const/4 v8, 0x2

    new-array v8, v8, [F

    aput v5, v8, v1

    if-eqz v3, :cond_13

    goto :goto_9

    :cond_13
    move v6, v7

    :goto_9
    aput v6, v8, v4

    .line 3424
    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 3426
    new-instance v4, Lorg/telegram/ui/Components/SharedMediaLayout$23;

    invoke-direct {v4, p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$23;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3433
    new-instance v4, Lorg/telegram/ui/Components/SharedMediaLayout$24;

    invoke-direct {v4, p0, v3, v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$24;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;ZILorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3485
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xc8

    .line 3486
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3487
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_14
    return-void
.end method

.method private fixLayoutInternal(I)V
    .locals 2

    .line 6210
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 6211
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    if-nez p1, :cond_1

    .line 6213
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

    .line 6214
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    goto :goto_0

    .line 6216
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 6220
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method private forwardCloud()V
    .locals 4

    .line 221
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    .line 232
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isCloudAlbumsEnabled:Z

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v2, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {v2, v3, v0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 235
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;->didSelectCloudDialog(J)V

    :goto_0
    return-void
.end method

.method private getMediaPage(I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;
    .locals 3

    const/4 v0, 0x0

    .line 3205
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 3206
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 3207
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getMessageId(Landroid/view/View;)I
    .locals 1

    .line 3084
    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v0, :cond_0

    .line 3085
    check-cast p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageId()I

    move-result p1

    return p1

    .line 3087
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v0, :cond_1

    .line 3088
    check-cast p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 3089
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    return p1

    .line 3091
    :cond_1
    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v0, :cond_2

    .line 3092
    check-cast p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    .line 3093
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 8454
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    .line 8455
    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result p1

    return p1

    .line 8457
    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1
.end method

.method private hasNoforwardsMessage()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v3, v0

    move v2, v1

    :goto_0
    if-ltz v2, :cond_4

    .line 3121
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v0

    .line 3122
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 3123
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v6, v6, v2

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3125
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

    .line 3126
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_1

    .line 3127
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v6, v6, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_1

    .line 3128
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v5, :cond_1

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z

    if-eqz v5, :cond_1

    move v3, v1

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

    .line 3721
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hideFloatingDateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3722
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3725
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 3726
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 3727
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3728
    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 3731
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xb4

    .line 3732
    invoke-virtual {p1, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3733
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    .line 3734
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v1, v6

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v4, [F

    const/16 v5, 0x30

    .line 3735
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

    .line 3733
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3736
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3737
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$28;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$28;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3743
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 3745
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private jumpToDate(IIIZ)V
    .locals 4

    .line 7044
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7045
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 7046
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 7047
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setMaxId(II)V

    .line 7048
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setEndReached(IZ)V

    .line 7049
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v0, p1

    iput-boolean v1, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startReached:Z

    .line 7050
    aget-object v0, v0, p1

    invoke-static {v0, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$802(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;I)I

    .line 7051
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v0, p1

    aget-object v0, v0, p1

    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    sub-int/2addr v0, p3

    sub-int/2addr v0, v2

    invoke-static {v3, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$8402(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;I)I

    .line 7052
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object p3, p3, p1

    invoke-static {p3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$8400(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result p3

    if-gez p3, :cond_0

    .line 7053
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object p3, p3, p1

    invoke-static {p3, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$8402(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;I)I

    .line 7055
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, p3, p1

    iput p2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->min_id:I

    .line 7056
    aget-object p2, p3, p1

    iput-boolean v2, p2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loadingAfterFastScroll:Z

    .line 7057
    aget-object p2, p3, p1

    iput-boolean v1, p2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    .line 7058
    aget-object p2, p3, p1

    iget p3, p2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->requestIndex:I

    add-int/2addr p3, v2

    iput p3, p2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->requestIndex:I

    .line 7059
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getMediaPage(I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 7060
    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 7061
    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    if-eqz p4, :cond_3

    move p2, v1

    .line 7064
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length p4, p3

    if-ge p2, p4, :cond_3

    .line 7065
    aget-object p3, p3, p2

    invoke-static {p3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p3

    if-ne p3, p1, :cond_2

    .line 7066
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p3, p3, p2

    invoke-static {p3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object p3

    iget-object p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, p4, p1

    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    sub-int/2addr v0, v2

    aget-object p4, p4, p1

    invoke-static {p4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$800(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

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

    .line 3819
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->findPeriodAndJumpToDate(ILorg/telegram/ui/Components/RecyclerListView;Z)V

    const/4 p1, 0x0

    .line 3820
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->jumpToRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$forwardCloud$0(J)V
    .locals 12

    .line 222
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->prepareForwardingMessages()Ljava/util/ArrayList;

    move-result-object v11

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v1, v11

    move-wide v2, p1

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/ForwardingMessagesParams;Z)I

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/Components/MediaActivity;

    if-eqz v1, :cond_1

    .line 225
    check-cast v0, Lorg/telegram/ui/Components/MediaActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MediaActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    sget v1, Lcom/iMe/common/IdFabric$CustomType;->UNDO_AUDIO_SAVE_TO_CLOUD:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/iMe/common/IdFabric$CustomType;->UNDO_MESSAGES_SAVE_TO_CLOUD:I

    :goto_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;)V

    .line 230
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->closeActionMode()Z

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$25(I)V
    .locals 5

    .line 8243
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, p1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8244
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, p1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 8246
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, p1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8247
    instance-of v4, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz v4, :cond_0

    .line 8248
    check-cast v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->updateCheckboxColor()V

    goto :goto_1

    .line 8249
    :cond_0
    instance-of v4, v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v4, :cond_1

    .line 8250
    check-cast v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->update(I)V

    goto :goto_1

    .line 8251
    :cond_1
    instance-of v4, v3, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v4, :cond_2

    .line 8252
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

    .line 4090
    iget p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->date:I

    iget p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->date:I

    sub-int/2addr p1, p0

    return p1
.end method

.method private synthetic lambda$loadFastScrollData$17(Lorg/telegram/tgnet/TLRPC$TL_error;IILorg/telegram/tgnet/TLObject;)V
    .locals 3

    if-eqz p1, :cond_0

    return-void

    .line 4078
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, p1, p3

    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->requestIndex:I

    if-eq p2, v0, :cond_1

    return-void

    .line 4081
    :cond_1
    check-cast p4, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsPositions;

    .line 4082
    aget-object p1, p1, p3

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4083
    iget-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsPositions;->positions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_3

    .line 4084
    iget-object v1, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsPositions;->positions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_searchResultPosition;

    .line 4085
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_searchResultPosition;->date:I

    if-eqz v2, :cond_2

    .line 4086
    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$Period;-><init>(Lorg/telegram/tgnet/TLRPC$TL_searchResultPosition;)V

    .line 4087
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v1, v1, p3

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4090
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object p1, p1, p3

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    sget-object v0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda18;->INSTANCE:Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda18;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4091
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object p1, p1, p3

    iget p4, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsPositions;->count:I

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setTotalCount(I)V

    .line 4092
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object p4, p1, p3

    const/4 v0, 0x1

    iput-boolean v0, p4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollDataLoaded:Z

    .line 4093
    aget-object p1, p1, p3

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 4094
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length p4, p1

    if-ge p2, p4, :cond_5

    .line 4095
    aget-object p1, p1, p2

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p1

    if-ne p1, p3, :cond_4

    .line 4096
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p4, p1, p2

    iput-boolean v0, p4, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollEnabled:Z

    .line 4097
    aget-object p1, p1, p2

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateFastScrollVisibility(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Z)V

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 4101
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$loadFastScrollData$18(Lorg/telegram/tgnet/TLRPC$TL_error;IILorg/telegram/tgnet/TLObject;)V
    .locals 8

    .line 4074
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    new-instance v7, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda17;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/tgnet/TLRPC$TL_error;IILorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadFastScrollData$19(IILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 4073
    new-instance v6, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda16;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/tgnet/TLRPC$TL_error;IILorg/telegram/tgnet/TLObject;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    const/4 v0, 0x1

    .line 826
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->hideFloatingDateView(Z)V

    return-void
.end method

.method private synthetic lambda$new$10(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x65

    .line 2105
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->onActionBarItemClick(Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$new$11(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Landroid/view/View;IFF)V
    .locals 8

    .line 2797
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 2798
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->storiesSettingsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->onItemClick(Landroid/view/View;I)V

    return-void

    .line 2802
    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_8

    .line 2803
    instance-of p4, p2, Lorg/telegram/ui/Cells/UserCell;

    if-eqz p4, :cond_4

    .line 2806
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$4000(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2807
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$4000(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 2811
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$4100(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-ltz p3, :cond_3

    .line 2812
    iget-object p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {p4}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$4100(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lt p3, p4, :cond_2

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    .line 2815
    invoke-virtual {p0, p1, p3, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->onMemberClick(Lorg/telegram/tgnet/TLRPC$ChatParticipant;ZLandroid/view/View;)Z

    goto/16 :goto_3

    :cond_3
    :goto_0
    return-void

    .line 2816
    :cond_4
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    if-ne p1, p2, :cond_13

    .line 2818
    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object p1

    .line 2819
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz p2, :cond_5

    .line 2820
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 2821
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide p1

    goto :goto_1

    .line 2822
    :cond_5
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz p2, :cond_7

    .line 2823
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 2824
    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    :goto_1
    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-eqz p3, :cond_7

    .line 2829
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide p3

    cmp-long p3, p1, p3

    if-nez p3, :cond_6

    goto :goto_2

    .line 2832
    :cond_6
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "user_id"

    .line 2833
    invoke-virtual {p3, p4, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2834
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance p2, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p2, p3}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_3

    :cond_7
    :goto_2
    return-void

    .line 2836
    :cond_8
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    instance-of v0, p2, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v0, :cond_a

    .line 2837
    check-cast p2, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 2838
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 2839
    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-string p1, "chat_id"

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2840
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 2843
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance p3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p3, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_3

    .line 2844
    :cond_a
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    instance-of v0, p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v0, :cond_b

    .line 2845
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

    .line 2846
    :cond_b
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    instance-of v0, p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz v0, :cond_c

    .line 2847
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

    .line 2848
    :cond_c
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    sget v1, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v0, v1, :cond_e

    :cond_d
    instance-of v0, p2, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v0, :cond_e

    .line 2849
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

    goto/16 :goto_3

    .line 2850
    :cond_e
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_f

    instance-of v0, p2, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v0, :cond_f

    .line 2851
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

    .line 2852
    :cond_f
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    if-nez v0, :cond_11

    instance-of v0, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v0, :cond_11

    .line 2853
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    .line 2854
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->canRevealSpoiler()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2855
    invoke-virtual {v0, p4, p5}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->startRevealMedia(FF)V

    return-void

    .line 2858
    :cond_10
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    if-eqz v5, :cond_13

    const/4 v6, 0x0

    .line 2860
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v7

    move-object v2, p0

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/SharedMediaLayout;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;II)V

    goto :goto_3

    .line 2862
    :cond_11
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p4

    const/16 p5, 0x8

    if-eq p4, p5, :cond_12

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p4

    const/16 p5, 0x9

    if-ne p4, p5, :cond_13

    :cond_12
    instance-of p4, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz p4, :cond_13

    .line 2863
    move-object p4, p2

    check-cast p4, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    .line 2864
    invoke-virtual {p4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_13

    const/4 v4, 0x0

    .line 2866
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    move-object v0, p0

    move v1, p3

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;II)V

    :cond_13
    :goto_3
    return-void
.end method

.method private synthetic lambda$new$12(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Landroid/view/View;I)Z
    .locals 5

    .line 2894
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    return v1

    .line 2898
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    if-eqz v0, :cond_1

    return v1

    .line 2901
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2902
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;->clickItem(Landroid/view/View;I)V

    return v2

    .line 2905
    :cond_2
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_9

    instance-of v0, p2, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v0, :cond_9

    .line 2908
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$4000(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 2909
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$4000(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p3, p1, :cond_3

    return v1

    .line 2912
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$4000(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_4
    move p1, p3

    :goto_0
    if-ltz p1, :cond_8

    .line 2914
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$4100(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_5

    goto :goto_3

    .line 2917
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$4100(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 2918
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    .line 2919
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 2920
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2921
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-ne v4, p3, :cond_6

    move-object p2, v3

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2926
    :cond_7
    :goto_2
    invoke-virtual {p0, p1, v2, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->onMemberClick(Lorg/telegram/tgnet/TLRPC$ChatParticipant;ZLandroid/view/View;)Z

    move-result p1

    return p1

    :cond_8
    :goto_3
    return v1

    .line 2927
    :cond_9
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p3

    if-ne p3, v2, :cond_a

    instance-of p3, p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz p3, :cond_a

    .line 2928
    move-object p1, p2

    check-cast p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    move-result p1

    return p1

    .line 2929
    :cond_a
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p3

    const/4 v0, 0x3

    if-ne p3, v0, :cond_b

    instance-of p3, p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz p3, :cond_b

    .line 2930
    move-object p1, p2

    check-cast p1, Lorg/telegram/ui/Cells/SharedLinkCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedLinkCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    move-result p1

    return p1

    .line 2931
    :cond_b
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_c

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p3

    const/4 v0, 0x4

    if-eq p3, v0, :cond_c

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p3

    sget v0, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne p3, v0, :cond_d

    :cond_c
    instance-of p3, p2, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz p3, :cond_d

    .line 2932
    move-object p1, p2

    check-cast p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    move-result p1

    return p1

    .line 2933
    :cond_d
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p3

    const/4 v0, 0x5

    if-ne p3, v0, :cond_e

    instance-of p3, p2, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz p3, :cond_e

    .line 2934
    move-object p1, p2

    check-cast p1, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ContextLinkCell;->getParentObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    move-result p1

    return p1

    .line 2935
    :cond_e
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p3

    if-eqz p3, :cond_f

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p3

    const/16 v0, 0x9

    if-eq p3, v0, :cond_f

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p3

    const/16 v0, 0x8

    if-ne p3, v0, :cond_10

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result p3

    if-eqz p3, :cond_10

    :cond_f
    instance-of p3, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz p3, :cond_10

    .line 2936
    move-object p3, p2

    check-cast p3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    if-eqz p3, :cond_10

    .line 2938
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p1

    invoke-direct {p0, p3, p2, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    move-result p1

    return p1

    :cond_10
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

    .line 3028
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    .line 1830
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast p1, Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ProfileActivity;->showChooseMembersFilterDialog()V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 0

    .line 1836
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast p1, Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ProfileActivity;->processFilteredMembers()V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 0

    .line 2052
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->closeActionMode()Z

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 1

    .line 2066
    sget v0, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_MUSIC_PLAYLIST:I

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->onActionBarItemClick(Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x66

    .line 2078
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->onActionBarItemClick(Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/View;)V
    .locals 1

    .line 2085
    sget v0, Lcom/iMe/common/IdFabric$Menu;->MESSAGE_SAVE_CLOUD:I

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->onActionBarItemClick(Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$new$9(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x64

    .line 2095
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->onActionBarItemClick(Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$onActionBarItemClick$21()V
    .locals 2

    const/4 v0, 0x0

    .line 4205
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->showActionMode(Z)V

    .line 4206
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    .line 4207
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    .line 4208
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    return-void
.end method

.method private synthetic lambda$onActionBarItemClick$22(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    .line 4242
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x1

    move v4, v15

    :goto_0
    const/4 v13, 0x0

    if-ltz v4, :cond_4

    .line 4244
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4245
    :goto_1
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v13, v6, :cond_0

    .line 4246
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v6, v6, v4

    invoke-virtual {v6, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 4248
    :cond_0
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4249
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 4250
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_1

    .line 4251
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v7, v7, v4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    .line 4256
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    .line 4260
    invoke-interface {v3, v14}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return v15

    .line 4264
    :cond_5
    iput v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    .line 4265
    iput v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    iput v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    .line 4266
    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/SharedMediaLayout;->showActionMode(Z)V

    .line 4268
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v15, :cond_a

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v3, v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_a

    if-nez p3, :cond_a

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/DialogsActivity;->isInMultiSelect()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    .line 4295
    :cond_6
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v3, v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    .line 4296
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "scrollToTopOnResume"

    .line 4297
    invoke-virtual {v5, v6, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4298
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4299
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v3

    const-string v4, "enc_id"

    invoke-virtual {v5, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    .line 4301
    :cond_7
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "user_id"

    .line 4302
    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_3

    :cond_8
    neg-long v3, v3

    const-string v6, "chat_id"

    .line 4304
    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4306
    :goto_3
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v5, v1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v3

    if-nez v3, :cond_9

    return v15

    .line 4311
    :cond_9
    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v6, v13, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4313
    new-instance v3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v3, v5}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 4314
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->applyTopic(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagesStorage$TopicKey;)V

    .line 4315
    invoke-virtual {v1, v3, v15}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 4316
    invoke-virtual {v3, v15, v14}, Lorg/telegram/ui/ChatActivity;->showFieldPanelForForward(ZLjava/util/ArrayList;)V

    goto/16 :goto_8

    .line 4269
    :cond_a
    :goto_5
    invoke-virtual {v1, v14}, Lorg/telegram/ui/DialogsActivity;->filterSelectedForwardingMessages(Ljava/util/ArrayList;)V

    .line 4270
    invoke-direct {v0, v15}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateRowsSelection(Z)V

    move v12, v13

    .line 4271
    :goto_6
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v12, v3, :cond_c

    .line 4272
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v5, v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    if-eqz p3, :cond_b

    .line 4274
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    iget-boolean v4, v1, Lorg/telegram/ui/DialogsActivity;->notify:Z

    iget v7, v1, Lorg/telegram/ui/DialogsActivity;->scheduleDate:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-wide/from16 v17, v5

    move/from16 v26, v4

    move/from16 v27, v7

    invoke-static/range {v16 .. v30}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    .line 4276
    :cond_b
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

    .line 4278
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    const/4 v1, 0x0

    .line 4281
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v4, v3, Lorg/telegram/ui/Components/MediaActivity;

    if-eqz v4, :cond_d

    .line 4282
    check-cast v3, Lorg/telegram/ui/Components/MediaActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/MediaActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    goto :goto_7

    .line 4284
    :cond_d
    instance-of v4, v3, Lorg/telegram/ui/ProfileActivity;

    if-eqz v4, :cond_e

    .line 4285
    check-cast v3, Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ProfileActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    :cond_e
    :goto_7
    if-eqz v1, :cond_10

    .line 4288
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v15, :cond_f

    const/4 v3, 0x0

    .line 4289
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

    goto :goto_8

    :cond_f
    const-wide/16 v3, 0x0

    const/16 v5, 0x35

    .line 4291
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

    :cond_10
    :goto_8
    return v15
.end method

.method private static synthetic lambda$onItemClick$24(Lorg/telegram/ui/Stories/StoriesController$StoriesList;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/16 v0, 0x1e

    .line 6179
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->load(ZI)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showFastScrollHint$20(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;)V
    .locals 2

    const/4 v0, 0x0

    .line 4125
    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    .line 4126
    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHideHintRunnable:Ljava/lang/Runnable;

    .line 4127
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

    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$29;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$29;-><init>(Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 4134
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private static synthetic lambda$static$2(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p0, v0

    mul-float v1, p0, p0

    mul-float/2addr v1, p0

    mul-float/2addr v1, p0

    mul-float/2addr v1, p0

    add-float/2addr v1, v0

    return v1
.end method

.method private synthetic lambda$stopScroll$23(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 4611
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getTabProgress()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onTabProgress(F)V

    return-void
.end method

.method private loadFastScrollData(Z)V
    .locals 8

    .line 4044
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 4047
    :goto_0
    sget-object v2, Lorg/telegram/ui/Components/SharedMediaLayout;->supportedFastScrollTypes:[I

    array-length v3, v2

    if-ge v1, v3, :cond_9

    .line 4048
    aget v2, v2, v1

    .line 4049
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

    .line 4052
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v3, v2

    iput-boolean v0, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollDataLoaded:Z

    .line 4053
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;-><init>()V

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v2, :cond_6

    .line 4055
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v7, v6, v2

    iget v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v7, v5, :cond_4

    .line 4056
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotos;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotos;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1

    .line 4057
    :cond_4
    aget-object v5, v6, v2

    iget v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v5, v4, :cond_5

    .line 4058
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVideo;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVideo;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1

    .line 4060
    :cond_5
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideo;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideo;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1

    :cond_6
    if-ne v2, v5, :cond_7

    .line 4063
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1

    :cond_7
    if-ne v2, v4, :cond_8

    .line 4065
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterRoundVoice;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterRoundVoice;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1

    .line 4067
    :cond_8
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    :goto_1
    const/16 v4, 0x64

    .line 4069
    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;->limit:I

    .line 4070
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4071
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v4, v4, v2

    iget v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->requestIndex:I

    .line 4072
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v5

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda19;

    invoke-direct {v6, p0, v4, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;II)V

    invoke-virtual {v5, v3, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    .line 4103
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

    .line 3918
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v2, v5

    iget v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v3, v6, :cond_0

    const/4 v2, 0x6

    :goto_0
    move v13, v2

    goto :goto_1

    .line 3920
    :cond_0
    aget-object v2, v2, v5

    iget v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v2, v4, :cond_1

    const/4 v2, 0x7

    goto :goto_0

    :cond_1
    move v13, v5

    goto :goto_1

    :cond_2
    if-ne v1, v6, :cond_3

    move v13, v6

    goto :goto_1

    :cond_3
    if-ne v1, v4, :cond_4

    move v13, v4

    goto :goto_1

    :cond_4
    if-ne v1, v3, :cond_5

    move v13, v3

    goto :goto_1

    :cond_5
    if-ne v1, v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x3

    goto :goto_0

    .line 3934
    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v2, v1

    iput-boolean v6, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    .line 3935
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

    move/from16 v3, p4

    move/from16 v4, p5

    if-eqz v2, :cond_33

    .line 6023
    iget-boolean v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    if-eqz v5, :cond_0

    goto/16 :goto_d

    .line 6026
    :cond_0
    iget-boolean v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v5, :cond_1e

    if-ne v4, v7, :cond_1

    .line 6027
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 6030
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    iget-wide v12, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    cmp-long v5, v10, v12

    if-nez v5, :cond_2

    move v5, v8

    goto :goto_0

    :cond_2
    move v5, v9

    .line 6031
    :goto_0
    iget-object v10, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v10, v10, v5

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_5

    .line 6032
    iget-object v10, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v10, v10, v5

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->remove(I)V

    .line 6033
    invoke-virtual {v2, v8, v6}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(ZLorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 6034
    iget v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    sub-int/2addr v6, v9

    iput v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    .line 6037
    :cond_3
    iget-object v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v6

    if-eqz v6, :cond_9

    sget v6, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-eq v4, v6, :cond_9

    .line 6038
    iget-object v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->playlist:Ljava/util/LinkedHashMap;

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 6039
    iget v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    sub-int/2addr v6, v9

    iput v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    goto :goto_1

    .line 6041
    :cond_4
    iget v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    sub-int/2addr v6, v9

    iput v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    goto :goto_1

    .line 6046
    :cond_5
    iget-object v10, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v10, v10, v8

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    iget-object v11, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v11, v11, v9

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    add-int/2addr v10, v11

    const/16 v11, 0x64

    if-lt v10, v11, :cond_6

    return-void

    .line 6049
    :cond_6
    iget-object v10, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v10, v10, v5

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-virtual {v10, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6050
    invoke-virtual {v2, v8, v6}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(ZLorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 6051
    iget v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    add-int/2addr v6, v9

    iput v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    .line 6054
    :cond_7
    iget-object v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v6

    if-eqz v6, :cond_9

    sget v6, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-eq v4, v6, :cond_9

    .line 6055
    iget-object v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->playlist:Ljava/util/LinkedHashMap;

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 6056
    iget v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    add-int/2addr v6, v9

    iput v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    goto :goto_1

    .line 6058
    :cond_8
    iget v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    add-int/2addr v6, v9

    iput v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    .line 6063
    :cond_9
    :goto_1
    iget-object v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v6, v6, v8

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->onActionModeSelectedUpdate(Landroid/util/SparseArray;)V

    .line 6064
    iget-object v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v6, v6, v9

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-nez v6, :cond_a

    .line 6065
    invoke-virtual {p0, v8}, Lorg/telegram/ui/Components/SharedMediaLayout;->showActionMode(Z)V

    goto :goto_7

    .line 6068
    :cond_a
    iget-object v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v6, :cond_f

    .line 6069
    sget v10, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v4, v10, :cond_b

    .line 6070
    iput v8, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    .line 6071
    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_5

    .line 6073
    :cond_b
    iget v4, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    if-eqz v4, :cond_d

    iget v4, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    if-nez v4, :cond_c

    goto :goto_2

    :cond_c
    move v4, v7

    goto :goto_3

    :cond_d
    :goto_2
    move v4, v8

    :goto_3
    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6074
    iget-object v4, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    if-nez v6, :cond_e

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_tone_add:I

    goto :goto_4

    :cond_e
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_tone_off:I

    :goto_4
    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 6078
    :cond_f
    :goto_5
    iget-object v4, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    iget-object v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    iget-object v10, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v10, v10, v9

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    add-int/2addr v6, v10

    invoke-virtual {v4, v6, v9}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 6079
    iget-object v4, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    if-nez v6, :cond_10

    move v6, v8

    goto :goto_6

    :cond_10
    move v6, v7

    :goto_6
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6080
    iget-object v4, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_12

    .line 6081
    iget-object v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ne v6, v9, :cond_11

    move v7, v8

    :cond_11
    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6084
    :cond_12
    :goto_7
    iput-boolean v8, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->scrolling:Z

    .line 6085
    instance-of v4, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v4, :cond_14

    .line 6086
    check-cast v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v5

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_13

    move v8, v9

    :cond_13
    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto/16 :goto_c

    .line 6087
    :cond_14
    instance-of v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz v4, :cond_16

    .line 6088
    check-cast v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    iget-object v4, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v4, v4, v5

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_15

    move v8, v9

    :cond_15
    invoke-virtual {v0, v3, v8, v9}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setChecked(IZZ)V

    goto/16 :goto_c

    .line 6089
    :cond_16
    instance-of v3, v0, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz v3, :cond_18

    .line 6090
    check-cast v0, Lorg/telegram/ui/Cells/SharedLinkCell;

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v5

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_17

    move v8, v9

    :cond_17
    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto/16 :goto_c

    .line 6091
    :cond_18
    instance-of v3, v0, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v3, :cond_1a

    .line 6092
    check-cast v0, Lorg/telegram/ui/Cells/SharedAudioCell;

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v5

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_19

    move v8, v9

    :cond_19
    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/Cells/SharedAudioCell;->setChecked(ZZ)V

    goto/16 :goto_c

    .line 6093
    :cond_1a
    instance-of v3, v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v3, :cond_1c

    .line 6094
    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v5

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_1b

    move v8, v9

    :cond_1b
    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/Cells/ContextLinkCell;->setChecked(ZZ)V

    goto/16 :goto_c

    .line 6095
    :cond_1c
    instance-of v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v3, :cond_32

    .line 6096
    check-cast v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v5

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_1d

    move v8, v9

    :cond_1d
    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setChecked(ZZ)V

    goto/16 :goto_c

    :cond_1e
    if-nez v4, :cond_1f

    .line 6100
    iget-object v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, v4

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$800(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result v0

    sub-int v0, p1, v0

    if-ltz v0, :cond_32

    .line 6101
    iget-object v2, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v2, v4

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_32

    .line 6102
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 6103
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    iget-wide v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    iget-wide v7, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    iget v9, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    iget-object v10, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move v4, v0

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    goto/16 :goto_c

    :cond_1f
    const/4 v5, 0x2

    if-eq v4, v5, :cond_31

    const/4 v5, 0x4

    if-eq v4, v5, :cond_31

    .line 6105
    sget v5, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v4, v5, :cond_20

    goto/16 :goto_b

    :cond_20
    const/4 v5, 0x5

    if-ne v4, v5, :cond_22

    .line 6110
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 6111
    iget-object v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, v4

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_21

    .line 6113
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6114
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6115
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    iget-object v10, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    goto/16 :goto_c

    .line 6117
    :cond_21
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    iget-wide v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    iget-wide v7, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    iget v9, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    iget-object v10, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move v4, v0

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    goto/16 :goto_c

    :cond_22
    if-ne v4, v9, :cond_27

    .line 6120
    instance-of v3, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v3, :cond_32

    .line 6121
    check-cast v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 6122
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    .line 6123
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoaded()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 6124
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->canPreviewDocument()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 6125
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 6126
    iget-object v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, v4

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_23

    .line 6128
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6129
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6130
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    iget-object v10, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    goto :goto_8

    .line 6132
    :cond_23
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    iget-wide v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    iget-wide v7, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    iget v9, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    iget-object v10, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move v4, v0

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    :goto_8
    return-void

    .line 6136
    :cond_24
    iget-object v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v2, v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->openDocument(Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto/16 :goto_c

    .line 6137
    :cond_25
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoading()Z

    move-result v2

    if-nez v2, :cond_26

    .line 6138
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    .line 6139
    iput-boolean v9, v2, Lorg/telegram/messenger/MessageObject;->putInDownloadsStore:Z

    .line 6140
    iget-object v4, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v8, v8}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 6141
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon(Z)V

    goto/16 :goto_c

    .line 6143
    :cond_26
    iget-object v2, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 6144
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon(Z)V

    goto/16 :goto_c

    :cond_27
    const/4 v5, 0x3

    if-ne v4, v5, :cond_2d

    .line 6149
    :try_start_0
    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v3

    if-eqz v3, :cond_28

    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    goto :goto_9

    :cond_28
    move-object v3, v6

    :goto_9
    if-eqz v3, :cond_2b

    .line 6151
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;

    if-nez v4, :cond_2b

    .line 6152
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz v4, :cond_29

    .line 6153
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 6154
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;)Z

    return-void

    .line 6156
    :cond_29
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    if-eqz v4, :cond_2a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2a

    .line 6157
    invoke-direct {p0, v3, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;)V

    return-void

    .line 6160
    :cond_2a
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    :cond_2b
    if-nez v6, :cond_2c

    .line 6164
    check-cast v0, Lorg/telegram/ui/Cells/SharedLinkCell;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Cells/SharedLinkCell;->getLink(I)Ljava/lang/String;

    move-result-object v6

    :cond_2c
    if-eqz v6, :cond_32

    .line 6167
    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->openUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    .line 6170
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_2d
    if-eq v4, v7, :cond_2e

    const/16 v0, 0x9

    if-ne v4, v0, :cond_32

    :cond_2e
    if-ne v4, v7, :cond_2f

    .line 6173
    iget-object v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->storiesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    goto :goto_a

    :cond_2f
    iget-object v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->archivedStoriesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    :goto_a
    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez v0, :cond_30

    return-void

    .line 6177
    :cond_30
    iget-object v4, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iget-object v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v6, v3

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object v3

    new-instance v6, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda25;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->with(Lorg/telegram/ui/Stories/StoriesListPlaceProvider$LoadNextInterface;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object v3

    invoke-virtual {v4, v5, v2, v0, v3}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    goto :goto_c

    .line 6106
    :cond_31
    :goto_b
    instance-of v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v2, :cond_32

    .line 6107
    check-cast v0, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedAudioCell;->didPressedButton()V

    .line 6184
    :cond_32
    :goto_c
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateForwardItem()V

    :cond_33
    :goto_d
    return-void
.end method

.method private onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z
    .locals 7

    .line 5961
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_13

    if-nez p1, :cond_0

    goto/16 :goto_8

    .line 5964
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 5965
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    aget-object v0, v0, v2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 5966
    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(ZLorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5967
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    .line 5970
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0x8

    if-eqz v0, :cond_8

    .line 5971
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    sget v4, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v0, v4, :cond_3

    .line 5972
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    .line 5973
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_5

    .line 5975
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlist:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5976
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    goto :goto_1

    .line 5978
    :cond_4
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    .line 5980
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

    .line 5981
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    :goto_3
    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5985
    :cond_8
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    if-nez v0, :cond_9

    move v2, v1

    :cond_9
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5986
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_a

    .line 5987
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5989
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {p1, v3, v1}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 5990
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 5991
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 5992
    :goto_6
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_b

    .line 5993
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 5994
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    .line 5995
    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 5997
    :cond_b
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v4, 0xfa

    .line 5998
    invoke-virtual {p1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5999
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 6000
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrolling:Z

    .line 6001
    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz p1, :cond_c

    .line 6002
    check-cast p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {p2, v3, v3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto :goto_7

    .line 6003
    :cond_c
    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz p1, :cond_d

    .line 6004
    check-cast p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    invoke-virtual {p2, p3, v3, v3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setChecked(IZZ)V

    goto :goto_7

    .line 6005
    :cond_d
    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz p1, :cond_e

    .line 6006
    check-cast p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    invoke-virtual {p2, v3, v3}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto :goto_7

    .line 6007
    :cond_e
    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz p1, :cond_f

    .line 6008
    check-cast p2, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {p2, v3, v3}, Lorg/telegram/ui/Cells/SharedAudioCell;->setChecked(ZZ)V

    goto :goto_7

    .line 6009
    :cond_f
    instance-of p1, p2, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz p1, :cond_10

    .line 6010
    check-cast p2, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {p2, v3, v3}, Lorg/telegram/ui/Cells/ContextLinkCell;->setChecked(ZZ)V

    goto :goto_7

    .line 6011
    :cond_10
    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz p1, :cond_11

    .line 6012
    check-cast p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {p2, v3, v3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setChecked(ZZ)V

    .line 6014
    :cond_11
    :goto_7
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    if-nez p1, :cond_12

    .line 6015
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->showActionMode(Z)V

    .line 6017
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onActionModeSelectedUpdate(Landroid/util/SparseArray;)V

    .line 6018
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateForwardItem()V

    return v3

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

    .line 6188
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowUrlInAlert(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6189
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v1}, Lorg/telegram/ui/Components/AlertsCreator;->showOpenUrlAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 6191
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

    .line 6196
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
    .locals 8

    .line 4353
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

    .line 4355
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 4356
    iget-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    if-nez v1, :cond_1

    if-eq v0, v2, :cond_3

    sget v1, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-eq v0, v1, :cond_3

    :cond_1
    return v3

    :cond_2
    if-gez v0, :cond_3

    return v3

    .line 4363
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v1

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-eqz v1, :cond_7

    .line 4364
    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    if-eqz v1, :cond_9

    const/4 v7, 0x2

    if-ne v1, v7, :cond_4

    .line 4366
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_1

    :cond_4
    if-ne v1, v6, :cond_6

    .line 4368
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4369
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v5

    :cond_5
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4371
    :cond_6
    :goto_1
    iput v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    goto :goto_2

    .line 4374
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v7

    if-eqz v7, :cond_8

    move v2, v5

    :cond_8
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4375
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4378
    :cond_9
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4379
    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->hideFloatingDateView(Z)V

    .line 4380
    iput-boolean v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybeStartTracking:Z

    .line 4381
    iput-boolean v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    .line 4382
    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->onTabScroll(Z)V

    .line 4383
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTrackingX:I

    .line 4384
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 4385
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setEnabled(Z)V

    .line 4386
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p1, p1, v6

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$002(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;I)I

    .line 4387
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p1, p1, v6

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4388
    iput-boolean p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animatingForward:Z

    .line 4389
    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->switchToCurrentSelectedMode(Z)V

    if-eqz p2, :cond_a

    .line 4391
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p2, p1, v6

    aget-object p1, p1, v3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_3

    .line 4393
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p2, p1, v6

    aget-object p1, p1, v3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 4395
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getTabProgress()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onTabProgress(F)V

    return v6
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

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 242
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 243
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 244
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v4, v4, v1

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 246
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 247
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

    .line 248
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_1

    .line 249
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

    .line 6200
    instance-of v0, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    if-eqz v0, :cond_0

    .line 6201
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cellCache:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cache:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6202
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cache:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 6203
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-ne p1, v0, :cond_2

    .line 6204
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioCellCache:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioCache:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6205
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioCache:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_2
    :goto_0
    return-void
.end method

.method private saveScrollPosition()V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    .line 5191
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v3, v2

    if-ge v1, v3, :cond_d

    .line 5192
    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v2

    if-eqz v2, :cond_c

    move v3, v0

    move v4, v3

    move v5, v4

    .line 5196
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 5197
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 5198
    instance-of v7, v6, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v7, :cond_0

    .line 5199
    move-object v4, v6

    check-cast v4, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    .line 5200
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageId()I

    move-result v5

    .line 5201
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTop()I

    move-result v4

    move v9, v5

    move v5, v4

    move v4, v9

    .line 5203
    :cond_0
    instance-of v7, v6, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v7, :cond_1

    .line 5204
    move-object v4, v6

    check-cast v4, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 5205
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    .line 5206
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTop()I

    move-result v4

    move v9, v5

    move v5, v4

    move v4, v9

    .line 5208
    :cond_1
    instance-of v7, v6, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v7, :cond_2

    .line 5209
    check-cast v6, Lorg/telegram/ui/Cells/SharedAudioCell;

    .line 5210
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    .line 5211
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
    if-eqz v4, :cond_c

    const/4 v3, -0x1

    .line 5219
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_8

    const/16 v8, 0x9

    if-ne v6, v8, :cond_5

    goto :goto_5

    :cond_5
    if-ltz v6, :cond_c

    .line 5231
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length v7, v7

    if-ge v6, v7, :cond_c

    move v7, v0

    .line 5232
    :goto_3
    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v8, v8, v6

    iget-object v8, v8, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 5233
    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v8, v8, v6

    iget-object v8, v8, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    if-ne v4, v8, :cond_6

    move v3, v7

    goto :goto_4

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 5238
    :cond_7
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v4, v4, v6

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$800(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result v4

    add-int/2addr v4, v3

    goto :goto_9

    :cond_8
    :goto_5
    if-ne v6, v7, :cond_9

    .line 5221
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->storiesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    goto :goto_6

    :cond_9
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->archivedStoriesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    .line 5222
    :goto_6
    iget-object v7, v6, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v7, :cond_b

    move v7, v0

    .line 5223
    :goto_7
    iget-object v8, v6, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v8, v8, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_b

    .line 5224
    iget-object v8, v6, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v8, v8, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    if-ne v4, v8, :cond_a

    move v3, v7

    goto :goto_8

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_b
    :goto_8
    move v4, v3

    :goto_9
    if-ltz v3, :cond_c

    .line 5243
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, v5

    invoke-virtual {v2, v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 5244
    iget-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    if-eqz v2, :cond_c

    .line 5245
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5900(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, v5

    invoke-virtual {v2, v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method private scrollToTop()V
    .locals 5

    .line 3751
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

    .line 3768
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    .line 3764
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    .line 3761
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x38

    .line 3758
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_0

    .line 3753
    :cond_3
    invoke-static {v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->getItemSize(I)I

    move-result v0

    .line 3772
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-nez v3, :cond_4

    .line 3773
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:[I

    aget v4, v4, v1

    div-int/2addr v3, v4

    goto :goto_1

    .line 3775
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    :goto_1
    mul-int/2addr v3, v0

    int-to-float v0, v3

    .line 3777
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f99999a    # 1.2f

    mul-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5

    .line 3778
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$6500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollDirection(I)V

    .line 3779
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$6500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollToPosition(IIZZ)V

    goto :goto_2

    .line 3781
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :goto_2
    return-void
.end method

.method private selectPinchPosition(II)V
    .locals 7

    const/4 v0, -0x1

    .line 604
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    .line 605
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/BlurredRecyclerView;->blurTopPadding:I

    add-int/2addr p2, v1

    .line 606
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->viewType:I

    if-ne v1, v4, :cond_0

    move p2, v2

    :cond_0
    move v1, v2

    .line 609
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 610
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 611
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 612
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->rect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 613
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v2

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v6

    iput v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    .line 614
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterOffset:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 617
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    invoke-interface {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;->canSearchMembers()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 618
    iget p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    if-ne p2, v0, :cond_5

    const/high16 p2, 0x3f800000    # 1.0f

    int-to-float p1, p1

    .line 619
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 620
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p2, p2, v2

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p2, p2, v2

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p2

    const/16 v0, 0x9

    if-ne p2, v0, :cond_3

    goto :goto_1

    :cond_3
    move p2, v2

    goto :goto_2

    :cond_4
    :goto_1
    move p2, v4

    .line 621
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:[I

    aget p2, v1, p2

    sub-int/2addr p2, v4

    int-to-float p2, p2

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    float-to-int p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    .line 622
    iput v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterOffset:I

    :cond_5
    return-void
.end method

.method private static showFastScrollHint(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;Z)V
    .locals 2

    if-eqz p2, :cond_2

    .line 4110
    sget p2, Lorg/telegram/messenger/SharedConfig;->fastScrollHintCount:I

    if-lez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHinWasShown:Z

    if-nez p2, :cond_1

    invoke-static {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isVisible:Z

    if-eqz p2, :cond_1

    invoke-static {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

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

    .line 4113
    :cond_0
    sget p1, Lorg/telegram/messenger/SharedConfig;->fastScrollHintCount:I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setFastScrollHintCount(I)V

    .line 4114
    iput-boolean p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHinWasShown:Z

    .line 4115
    new-instance p1, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;-><init>(Landroid/content/Context;)V

    .line 4116
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    const/4 p2, -0x2

    .line 4117
    invoke-static {p2, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4118
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4119
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 4120
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 4121
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

    .line 4122
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 4124
    new-instance p2, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHideHintRunnable:Ljava/lang/Runnable;

    const-wide/16 p0, 0xfa0

    invoke-static {p2, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 4137
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHideHintRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_3

    goto :goto_1

    .line 4140
    :cond_3
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 4141
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHideHintRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 4142
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHideHintRunnable:Ljava/lang/Runnable;

    .line 4143
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    :cond_4
    :goto_1
    return-void
.end method

.method private showFloatingDateView()V
    .locals 0

    return-void
.end method

.method private startPinchToMediaColumnsCount(Z)V
    .locals 8

    .line 3281
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    .line 3285
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v4, v3

    const/16 v5, 0x8

    const/16 v6, 0x9

    if-ge v2, v4, :cond_3

    .line 3286
    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-eq v3, v5, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-ne v3, v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3287
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v2

    :cond_3
    if-eqz v0, :cond_d

    .line 3292
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->changeColumnsTab:I

    const/4 v3, 0x1

    if-eq v2, v5, :cond_5

    if-ne v2, v6, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    :goto_2
    move v2, v3

    .line 3295
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:[I

    aget v4, v4, v2

    invoke-virtual {p0, v2, v4, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getNextMediaColumnsCount(IIZ)I

    move-result p1

    .line 3296
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animateToColumnsCount:I

    .line 3297
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:[I

    aget v2, v4, v2

    if-eq p1, v2, :cond_d

    iget-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->allowStoriesSingleColumn:Z

    if-eqz v2, :cond_6

    goto/16 :goto_7

    .line 3300
    :cond_6
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 3301
    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->changeColumnsTab:I

    if-ne v2, v5, :cond_7

    .line 3302
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingStoriesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_4

    :cond_7
    if-ne v2, v6, :cond_8

    .line 3304
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingArchivedStoriesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_4

    .line 3306
    :cond_8
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingPhotoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3308
    :goto_4
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v2

    .line 3309
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    .line 3310
    iget v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->changeColumnsTab:I

    if-ne v5, v6, :cond_9

    const/16 v5, 0x42

    goto :goto_5

    :cond_9
    const/4 v5, 0x2

    :goto_5
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    .line 3311
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    .line 3312
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    .line 3308
    invoke-virtual {v2, v4, v5, v6, v7}, Lorg/telegram/ui/Components/BlurredRecyclerView;->setPadding(IIII)V

    .line 3315
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5900(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 3316
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 3318
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5900(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$22;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$22;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 3340
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 3342
    iput-boolean v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    .line 3343
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->changeColumnsTab:I

    if-nez p1, :cond_a

    .line 3344
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object p1, p1, v1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setListFrozen(Z)V

    :cond_a
    const/4 p1, 0x0

    .line 3346
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsProgress:F

    .line 3347
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    if-ltz p1, :cond_c

    .line 3348
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v0, p1

    if-ge v1, v0, :cond_d

    .line 3349
    aget-object p1, p1, v1

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->changeColumnsTab:I

    if-ne p1, v0, :cond_b

    .line 3350
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p1, p1, v1

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5900(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterOffset:I

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 3354
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->saveScrollPosition()V

    nop

    :cond_d
    :goto_7
    return-void
.end method

.method private startStopVisibleGifs()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 5653
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 5654
    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_2

    .line 5656
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5657
    instance-of v5, v4, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v5, :cond_1

    .line 5658
    check-cast v4, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 5659
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ContextLinkCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    if-nez v1, :cond_0

    const/4 v5, 0x1

    .line 5661
    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 5662
    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    goto :goto_2

    .line 5664
    :cond_0
    invoke-virtual {v4, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 5665
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

.method private stopScroll(Landroid/view/MotionEvent;)V
    .locals 12

    .line 4587
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x3e8

    .line 4590
    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 4593
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v0, :cond_2

    .line 4594
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    .line 4595
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    .line 4596
    iget-boolean v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    if-nez v6, :cond_3

    .line 4597
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x453b8000    # 3000.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    cmpg-float v6, v4, v1

    if-gez v6, :cond_1

    move v6, v2

    goto :goto_0

    :cond_1
    move v6, v3

    .line 4598
    :goto_0
    invoke-direct {p0, p1, v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    goto :goto_1

    :cond_2
    move v4, v1

    move v5, v4

    .line 4605
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    if-eqz p1, :cond_a

    .line 4606
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getX()F

    move-result p1

    .line 4607
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    .line 4608
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40400000    # 3.0f

    div-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x455ac000    # 3500.0f

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v6, v5

    if-gez v5, :cond_5

    :cond_4
    move v5, v2

    goto :goto_2

    :cond_5
    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->backAnimation:Z

    const/4 v5, 0x2

    new-array v6, v5, [F

    .line 4610
    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 4611
    new-instance v7, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4612
    iget-boolean v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->backAnimation:Z

    if-eqz v7, :cond_7

    .line 4613
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 4614
    iget-boolean v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animatingForward:Z

    if-eqz v7, :cond_6

    .line 4615
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v8, v8, v3

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v2, [F

    aput v1, v10, v3

    .line 4616
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v0, v3

    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v8, v2

    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v11, v2, [F

    aget-object v8, v8, v2

    .line 4617
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    aput v8, v11, v3

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v0, v2

    aput-object v6, v0, v5

    .line 4615
    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_3

    .line 4621
    :cond_6
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v8, v8, v3

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v2, [F

    aput v1, v10, v3

    .line 4622
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v0, v3

    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v8, v2

    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v11, v2, [F

    aget-object v8, v8, v2

    .line 4623
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v11, v3

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v0, v2

    aput-object v6, v0, v5

    .line 4621
    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_3

    .line 4628
    :cond_7
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float p1, v7, p1

    .line 4629
    iget-boolean v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animatingForward:Z

    if-eqz v7, :cond_8

    .line 4630
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v8, v3

    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v11, v2, [F

    aget-object v8, v8, v3

    .line 4631
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v11, v3

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v0, v3

    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v8, v8, v2

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v2, [F

    aput v1, v10, v3

    .line 4632
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v0, v2

    aput-object v6, v0, v5

    .line 4630
    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_3

    .line 4636
    :cond_8
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v8, v3

    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v11, v2, [F

    aget-object v8, v8, v3

    .line 4637
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    aput v8, v11, v3

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v0, v3

    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v8, v8, v2

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v2, [F

    aput v1, v10, v3

    .line 4638
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v0, v2

    aput-object v6, v0, v5

    .line 4636
    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4643
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    sget-object v5, Lorg/telegram/ui/Components/SharedMediaLayout;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4645
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    .line 4646
    div-int/lit8 v5, v0, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v7, p1, v6

    int-to-float v0, v0

    div-float/2addr v7, v0

    .line 4647
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v5, v5

    .line 4648
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->distanceInfluenceForSnapDuration(F)F

    move-result v0

    mul-float/2addr v0, v5

    add-float/2addr v5, v0

    .line 4649
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_9

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr v5, v0

    .line 4652
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_4

    .line 4654
    :cond_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    add-float/2addr p1, v6

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    :goto_4
    const/16 v0, 0x96

    const/16 v1, 0x258

    .line 4657
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4659
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    int-to-long v4, p1

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4660
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$30;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$30;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4699
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 4700
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimationInProgress:Z

    .line 4701
    iput-boolean v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    .line 4702
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->onSelectedTabChanged()V

    goto :goto_5

    .line 4704
    :cond_a
    iput-boolean v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybeStartTracking:Z

    .line 4705
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 4706
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setEnabled(Z)V

    .line 4708
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_b

    .line 4709
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 4710
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_b
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private switchToCurrentSelectedMode(Z)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    move v3, v2

    .line 5673
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 5674
    aget-object v4, v4, v3

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5677
    :cond_0
    aget-object v3, v4, v1

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 5681
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    .line 5683
    iget-boolean v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searching:Z

    const/4 v6, 0x0

    const/4 v8, 0x3

    const/4 v10, 0x5

    const/4 v11, 0x6

    const/4 v13, 0x7

    const/4 v14, 0x2

    const/4 v15, 0x4

    const/4 v7, 0x1

    if-eqz v5, :cond_13

    iget-boolean v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchWas:Z

    if-eqz v5, :cond_13

    if-eqz v1, :cond_8

    .line 5685
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-eq v3, v14, :cond_7

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-eq v3, v10, :cond_7

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-eq v3, v11, :cond_7

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-ne v3, v13, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    invoke-interface {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;->canSearchMembers()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-ne v3, v13, :cond_2

    iget-boolean v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->isMembersMenuVisible:Z

    if-eqz v3, :cond_2

    goto/16 :goto_1

    .line 5691
    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5693
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    sget v10, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v5, v10, :cond_3

    .line 5694
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eqz v5, :cond_12

    .line 5695
    invoke-virtual {v5, v3, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->search(Ljava/lang/String;Z)V

    .line 5696
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eq v4, v3, :cond_12

    .line 5697
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5698
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_2

    .line 5702
    :cond_3
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    if-ne v5, v7, :cond_4

    .line 5703
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eqz v5, :cond_12

    .line 5704
    invoke-virtual {v5, v3, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->search(Ljava/lang/String;Z)V

    .line 5705
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eq v4, v3, :cond_12

    .line 5706
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5707
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_2

    .line 5710
    :cond_4
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    if-ne v5, v8, :cond_5

    .line 5711
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eqz v5, :cond_12

    .line 5712
    invoke-virtual {v5, v3, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->search(Ljava/lang/String;Z)V

    .line 5713
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eq v4, v3, :cond_12

    .line 5714
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5715
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_2

    .line 5718
    :cond_5
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    if-ne v5, v15, :cond_6

    .line 5719
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eqz v5, :cond_12

    .line 5720
    invoke-virtual {v5, v3, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->search(Ljava/lang/String;Z)V

    .line 5721
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eq v4, v3, :cond_12

    .line 5722
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5723
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_2

    .line 5726
    :cond_6
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    if-ne v5, v13, :cond_12

    .line 5727
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    if-eqz v5, :cond_12

    .line 5728
    invoke-virtual {v5, v3, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->search(Ljava/lang/String;Z)V

    .line 5729
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    if-eq v4, v3, :cond_12

    .line 5730
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5731
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_2

    .line 5686
    :cond_7
    :goto_1
    iput-boolean v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searching:Z

    .line 5687
    iput-boolean v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchWas:Z

    .line 5688
    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout;->switchToCurrentSelectedMode(Z)V

    return-void

    .line 5737
    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 5739
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    sget v5, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v3, v5, :cond_a

    .line 5740
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eq v4, v3, :cond_9

    .line 5741
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5742
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5744
    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 5746
    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-ne v3, v7, :cond_c

    .line 5747
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eq v4, v3, :cond_b

    .line 5748
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5749
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5751
    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 5752
    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-ne v3, v8, :cond_e

    .line 5753
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eq v4, v3, :cond_d

    .line 5754
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5755
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5757
    :cond_d
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 5758
    :cond_e
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-ne v3, v15, :cond_10

    .line 5759
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eq v4, v3, :cond_f

    .line 5760
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5761
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5763
    :cond_f
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 5764
    :cond_10
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-ne v3, v13, :cond_12

    .line 5765
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    if-eq v4, v3, :cond_11

    .line 5766
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5767
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5769
    :cond_11
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->notifyDataSetChanged()V

    :cond_12
    :goto_2
    move v3, v2

    const/16 v4, 0x64

    const/16 v9, 0x8

    goto/16 :goto_1a

    .line 5774
    :cond_13
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setPinnedHeaderShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5775
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v1

    .line 5776
    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    .line 5777
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v17

    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v9, v1

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v9

    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v12, v12, v1

    invoke-static {v12}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v12

    const/16 v13, 0x9

    if-ne v12, v13, :cond_14

    const/16 v12, 0x40

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    goto :goto_3

    :cond_14
    move v12, v2

    :goto_3
    iput v12, v9, Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;->hintPaddingTop:I

    add-int v9, v17, v12

    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v12, v12, v1

    .line 5778
    invoke-static {v12}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v12

    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v13, v13, v1

    .line 5779
    invoke-static {v13}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v13

    .line 5775
    invoke-virtual {v5, v6, v9, v12, v13}, Lorg/telegram/ui/Components/BlurredRecyclerView;->setPadding(IIII)V

    .line 5782
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 5784
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    sget v6, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    const/16 v9, 0xa

    if-ne v5, v6, :cond_15

    .line 5785
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eq v4, v3, :cond_29

    .line 5786
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5787
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_9

    .line 5789
    :cond_15
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    if-ne v5, v9, :cond_17

    .line 5790
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->storiesSettingsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;

    if-eq v4, v3, :cond_16

    .line 5791
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->storiesSettingsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5793
    :cond_16
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto/16 :goto_9

    .line 5795
    :cond_17
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    if-nez v5, :cond_1b

    .line 5796
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    if-eq v4, v5, :cond_18

    .line 5797
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5798
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5800
    :cond_18
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 5801
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v4, v3, v2

    iget-boolean v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollDataLoaded:Z

    if-eqz v4, :cond_19

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19

    move v3, v7

    goto :goto_4

    :cond_19
    move v3, v2

    .line 5804
    :goto_4
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:[I

    aget v4, v4, v2

    .line 5805
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v5

    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinnedHeaderShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setPinnedHeaderShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5806
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v8, v5, v2

    iget-object v8, v8, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->recycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    if-nez v8, :cond_1a

    .line 5807
    aget-object v5, v5, v2

    new-instance v8, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v8}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v8, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->recycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 5809
    :cond_1a
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v5, v5, v2

    iget-object v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->recycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-object/from16 v16, v5

    goto/16 :goto_c

    .line 5810
    :cond_1b
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-ne v3, v7, :cond_1d

    .line 5811
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v5, v3, v7

    iget-boolean v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollDataLoaded:Z

    if-eqz v5, :cond_1c

    aget-object v3, v3, v7

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c

    move v3, v7

    goto :goto_5

    :cond_1c
    move v3, v2

    .line 5814
    :goto_5
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eq v4, v5, :cond_2a

    .line 5815
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5816
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_a

    .line 5818
    :cond_1d
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-ne v3, v14, :cond_1f

    .line 5819
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v5, v3, v14

    iget-boolean v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollDataLoaded:Z

    if-eqz v5, :cond_1e

    aget-object v3, v3, v14

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1e

    move v3, v7

    goto :goto_6

    :cond_1e
    move v3, v2

    .line 5822
    :goto_6
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eq v4, v5, :cond_2a

    .line 5823
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5824
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_a

    .line 5826
    :cond_1f
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-ne v3, v8, :cond_20

    .line 5827
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    if-eq v4, v3, :cond_29

    .line 5828
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5829
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_9

    .line 5831
    :cond_20
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-ne v3, v15, :cond_22

    .line 5832
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v5, v3, v15

    iget-boolean v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollDataLoaded:Z

    if-eqz v5, :cond_21

    aget-object v3, v3, v15

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_21

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v3

    if-nez v3, :cond_21

    move v3, v7

    goto :goto_7

    :cond_21
    move v3, v2

    .line 5835
    :goto_7
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eq v4, v5, :cond_2a

    .line 5836
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5837
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_a

    .line 5839
    :cond_22
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-ne v3, v10, :cond_23

    .line 5840
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    if-eq v4, v3, :cond_29

    .line 5841
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5842
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_9

    .line 5844
    :cond_23
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-ne v3, v11, :cond_24

    .line 5845
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    if-eq v4, v3, :cond_29

    .line 5846
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5847
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_9

    .line 5849
    :cond_24
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    const/4 v5, 0x7

    if-ne v3, v5, :cond_25

    .line 5850
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    if-eq v4, v3, :cond_29

    .line 5851
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5852
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_9

    .line 5854
    :cond_25
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_27

    .line 5855
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->storiesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    if-eq v4, v3, :cond_26

    .line 5856
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5857
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->storiesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5859
    :cond_26
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:[I

    aget v4, v3, v7

    :goto_8
    move v3, v2

    goto :goto_b

    .line 5860
    :cond_27
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    const/16 v5, 0x9

    if-ne v3, v5, :cond_29

    .line 5861
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->archivedStoriesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    if-eq v4, v3, :cond_28

    .line 5862
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5863
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->archivedStoriesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5865
    :cond_28
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:[I

    aget v4, v3, v7

    goto :goto_8

    :cond_29
    :goto_9
    move v3, v2

    :cond_2a
    :goto_a
    const/16 v4, 0x64

    :goto_b
    const/16 v16, 0x0

    .line 5867
    :goto_c
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    if-eqz v5, :cond_33

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    const/16 v8, 0x8

    if-eq v5, v8, :cond_33

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    const/16 v8, 0x9

    if-eq v5, v8, :cond_33

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    if-eq v5, v14, :cond_33

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    if-eq v5, v10, :cond_33

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    if-eq v5, v11, :cond_33

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    const/4 v8, 0x7

    if-ne v5, v8, :cond_2b

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    invoke-interface {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;->canSearchMembers()Z

    move-result v5

    if-eqz v5, :cond_33

    :cond_2b
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    if-ne v5, v8, :cond_2c

    iget-boolean v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->isMembersMenuVisible:Z

    if-eqz v5, :cond_2c

    goto/16 :goto_10

    :cond_2c
    if-eqz v1, :cond_30

    .line 5876
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-ne v5, v15, :cond_2f

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v5

    if-nez v5, :cond_2f

    .line 5877
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 5878
    iput v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    .line 5879
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_e

    .line 5881
    :cond_2d
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v8

    if-eqz v8, :cond_2e

    const/16 v8, 0x8

    goto :goto_d

    :cond_2e
    move v8, v15

    :goto_d
    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5883
    :goto_e
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_12

    .line 5885
    :cond_2f
    iput v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    goto :goto_12

    .line 5887
    :cond_30
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-ne v5, v15, :cond_36

    .line 5888
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 5889
    iput v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    .line 5890
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5891
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_12

    .line 5893
    :cond_31
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v8

    if-eqz v8, :cond_32

    const/16 v8, 0x8

    goto :goto_f

    :cond_32
    move v8, v15

    :goto_f
    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5894
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_12

    :cond_33
    :goto_10
    if-eqz v1, :cond_34

    .line 5869
    iput v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    goto :goto_12

    .line 5871
    :cond_34
    iput v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    .line 5872
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v8

    if-eqz v8, :cond_35

    const/16 v8, 0x8

    goto :goto_11

    :cond_35
    move v8, v15

    :goto_11
    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5898
    :cond_36
    :goto_12
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    if-ne v5, v11, :cond_37

    .line 5899
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->access$7400(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;)Z

    move-result v5

    if-nez v5, :cond_42

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->access$7300(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;)Z

    move-result v5

    if-nez v5, :cond_42

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->access$7500(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 5900
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    const-wide/16 v8, 0x0

    const/16 v6, 0x64

    invoke-static {v5, v8, v9, v6}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->access$7600(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;JI)V

    goto/16 :goto_17

    .line 5902
    :cond_37
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    const/4 v8, 0x7

    if-eq v5, v8, :cond_42

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    if-eq v5, v6, :cond_42

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    if-ne v5, v9, :cond_38

    goto/16 :goto_17

    .line 5904
    :cond_38
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3c

    .line 5905
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->storiesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    iget-object v5, v3, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    .line 5906
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->load(Z)V

    .line 5907
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v3

    if-eqz v5, :cond_3a

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->isLoading()Z

    move-result v6

    if-nez v6, :cond_39

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->hasInternet()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result v6

    if-lez v6, :cond_3a

    :cond_39
    move v6, v7

    goto :goto_13

    :cond_3a
    move v6, v2

    :goto_13
    invoke-virtual {v3, v6, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    if-eqz v5, :cond_3b

    .line 5908
    invoke-virtual {v5}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result v3

    if-lez v3, :cond_3b

    :goto_14
    move v3, v7

    goto/16 :goto_17

    :cond_3b
    move v3, v2

    goto/16 :goto_17

    .line 5909
    :cond_3c
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_3f

    .line 5910
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->archivedStoriesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    iget-object v5, v3, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    .line 5911
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->load(Z)V

    .line 5912
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v3

    if-eqz v5, :cond_3e

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->isLoading()Z

    move-result v6

    if-nez v6, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->hasInternet()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result v6

    if-lez v6, :cond_3e

    :cond_3d
    move v6, v7

    goto :goto_15

    :cond_3e
    move v6, v2

    :goto_15
    invoke-virtual {v3, v6, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    if-eqz v5, :cond_3b

    .line 5913
    invoke-virtual {v5}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result v3

    if-lez v3, :cond_3b

    goto :goto_14

    .line 5915
    :cond_3f
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v6

    aget-object v5, v5, v6

    iget-boolean v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    if-nez v5, :cond_42

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v6

    aget-object v5, v5, v6

    iget-object v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v5, v5, v2

    if-nez v5, :cond_42

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v6

    aget-object v5, v5, v6

    iget-object v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 5916
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v6

    aget-object v5, v5, v6

    iput-boolean v7, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    .line 5917
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5918
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    if-nez v5, :cond_41

    .line 5920
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v9, v6, v2

    iget v9, v9, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v9, v7, :cond_40

    move/from16 v24, v11

    goto :goto_16

    .line 5922
    :cond_40
    aget-object v6, v6, v2

    iget v6, v6, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v6, v14, :cond_41

    move/from16 v24, v8

    goto :goto_16

    :cond_41
    move/from16 v24, v5

    .line 5926
    :goto_16
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v18

    iget-wide v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    const/16 v21, 0x32

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    const/16 v26, 0x1

    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v27

    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v10, v10, v1

    invoke-static {v10}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v10

    aget-object v9, v9, v10

    iget v9, v9, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->requestIndex:I

    move-wide/from16 v19, v5

    move/from16 v25, v8

    move/from16 v28, v9

    invoke-virtual/range {v18 .. v28}, Lorg/telegram/messenger/MediaDataController;->loadMedia(JIIIIIIII)V

    .line 5929
    :cond_42
    :goto_17
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    const-string v6, ""

    const/16 v8, 0xb

    const/16 v9, 0x8

    if-ne v5, v9, :cond_45

    .line 5930
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v5

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/StickerEmptyView;->setStickerType(I)V

    .line 5931
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v8

    if-eqz v8, :cond_43

    sget v8, Lorg/telegram/messenger/R$string;->NoPublicStoriesTitle:I

    goto :goto_18

    :cond_43
    sget v8, Lorg/telegram/messenger/R$string;->NoStoriesTitle:I

    :goto_18
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5932
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v8

    if-eqz v8, :cond_44

    const-string v6, "NoStoriesSubtitle"

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_44
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_19

    .line 5933
    :cond_45
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    const/16 v10, 0x9

    if-ne v5, v10, :cond_47

    .line 5934
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v5

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/StickerEmptyView;->setStickerType(I)V

    .line 5935
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    const-string v8, "NoArchivedStoriesTitle"

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5936
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v8

    if-eqz v8, :cond_46

    const-string v6, "NoArchivedStoriesSubtitle"

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_46
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 5938
    :cond_47
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v5

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/StickerEmptyView;->setStickerType(I)V

    .line 5939
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->NoResult:I

    const-string v8, "NoResult"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5940
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v6, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitle2:I

    const-string v8, "SearchEmptyViewFilteredSubtitle2"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5942
    :goto_19
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    move-object/from16 v6, v16

    .line 5944
    :goto_1a
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v8, v5, v1

    iput-boolean v3, v8, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollEnabled:Z

    .line 5945
    aget-object v3, v5, v1

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateFastScrollVisibility(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Z)V

    .line 5946
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 5947
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 5948
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 5949
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v3, v1

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3800(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 5951
    iget v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    if-ne v1, v14, :cond_49

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 5952
    iput-boolean v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->ignoreSearchCollapse:Z

    .line 5953
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    .line 5954
    iput v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    .line 5955
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5956
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v2

    if-eqz v2, :cond_48

    move v12, v9

    goto :goto_1b

    :cond_48
    move v12, v15

    :goto_1b
    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_49
    return-void
.end method

.method private updateForwardItem()V
    .locals 7

    .line 3099
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    return-void

    .line 3102
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

    .line 3103
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v1, 0x5

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 3104
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 3105
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_4
    if-nez v0, :cond_5

    .line 3106
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_5

    .line 3107
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v6

    invoke-static {v6, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3110
    :cond_5
    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    if-eqz v0, :cond_7

    .line 3111
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 3112
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_7
    if-nez v0, :cond_8

    .line 3113
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_8

    .line 3114
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v2

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    :goto_5
    return-void
.end method

.method private updateRowsSelection(Z)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 5457
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v3, v2

    if-ge v1, v3, :cond_6

    .line 5458
    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_5

    .line 5460
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5461
    instance-of v5, v4, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v5, :cond_0

    .line 5462
    check-cast v4, Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {v4, v0, p1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto :goto_2

    .line 5463
    :cond_0
    instance-of v5, v4, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v5, :cond_1

    .line 5464
    check-cast v4, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v4, v0, p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setChecked(ZZ)V

    goto :goto_2

    .line 5465
    :cond_1
    instance-of v5, v4, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz v5, :cond_2

    .line 5466
    check-cast v4, Lorg/telegram/ui/Cells/SharedLinkCell;

    invoke-virtual {v4, v0, p1}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto :goto_2

    .line 5467
    :cond_2
    instance-of v5, v4, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v5, :cond_3

    .line 5468
    check-cast v4, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {v4, v0, p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->setChecked(ZZ)V

    goto :goto_2

    .line 5469
    :cond_3
    instance-of v5, v4, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v5, :cond_4

    .line 5470
    check-cast v4, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v4, v0, p1}, Lorg/telegram/ui/Cells/ContextLinkCell;->setChecked(ZZ)V

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
    .locals 16

    move-object/from16 v0, p0

    .line 5481
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    if-nez v1, :cond_0

    return-void

    .line 5484
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;->isFragmentOpened()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move/from16 v1, p1

    .line 5488
    :goto_0
    iget-wide v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    iget-wide v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    iget-wide v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz v3, :cond_3

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->stories_pinned_available:Z

    if-nez v3, :cond_5

    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_4

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->stories_pinned_available:Z

    if-nez v3, :cond_5

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->includeStories()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    goto :goto_1

    :cond_6
    move v3, v2

    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v5

    if-eq v3, v5, :cond_7

    move v3, v4

    goto :goto_2

    :cond_7
    move v3, v2

    .line 5491
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v5

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x4

    if-nez v5, :cond_19

    .line 5492
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$4100(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v5

    if-nez v5, :cond_8

    move v5, v4

    goto :goto_3

    :cond_8
    move v5, v2

    :goto_3
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v13, v7}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v13

    if-ne v5, v13, :cond_9

    add-int/lit8 v3, v3, 0x1

    .line 5495
    :cond_9
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v5, v5, v2

    if-gtz v5, :cond_a

    move v5, v4

    goto :goto_4

    :cond_a
    move v5, v2

    :goto_4
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v13, v2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v13

    if-ne v5, v13, :cond_b

    add-int/lit8 v3, v3, 0x1

    .line 5498
    :cond_b
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v5, v5, v4

    if-gtz v5, :cond_c

    move v5, v4

    goto :goto_5

    :cond_c
    move v5, v2

    :goto_5
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v13, v4}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v13

    if-ne v5, v13, :cond_d

    add-int/lit8 v3, v3, 0x1

    .line 5501
    :cond_d
    iget-wide v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v13, v14}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v5

    if-nez v5, :cond_11

    .line 5502
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v5, v5, v11

    if-gtz v5, :cond_e

    move v5, v4

    goto :goto_6

    :cond_e
    move v5, v2

    :goto_6
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v13, v11}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v13

    if-ne v5, v13, :cond_f

    add-int/lit8 v3, v3, 0x1

    .line 5505
    :cond_f
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v5, v5, v12

    if-gtz v5, :cond_10

    move v5, v4

    goto :goto_7

    :cond_10
    move v5, v2

    :goto_7
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v13, v12}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v13

    if-ne v5, v13, :cond_13

    goto :goto_9

    .line 5509
    :cond_11
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v5, v5, v12

    if-gtz v5, :cond_12

    move v5, v4

    goto :goto_8

    :cond_12
    move v5, v2

    :goto_8
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v13, v12}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v13

    if-ne v5, v13, :cond_13

    :goto_9
    add-int/lit8 v3, v3, 0x1

    .line 5513
    :cond_13
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v5, v5, v10

    if-gtz v5, :cond_14

    move v5, v4

    goto :goto_a

    :cond_14
    move v5, v2

    :goto_a
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v13, v10}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v13

    if-ne v5, v13, :cond_15

    add-int/lit8 v3, v3, 0x1

    .line 5516
    :cond_15
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v5, v5, v9

    if-gtz v5, :cond_16

    move v5, v4

    goto :goto_b

    :cond_16
    move v5, v2

    :goto_b
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v13, v9}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v13

    if-ne v5, v13, :cond_17

    add-int/lit8 v3, v3, 0x1

    .line 5519
    :cond_17
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v5, v5, v8

    if-gtz v5, :cond_18

    move v5, v4

    goto :goto_c

    :cond_18
    move v5, v2

    :goto_c
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v13, v8}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v13

    if-ne v5, v13, :cond_19

    add-int/lit8 v3, v3, 0x1

    :cond_19
    if-lez v3, :cond_30

    if-eqz v1, :cond_1a

    .line 5524
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v1, v5, :cond_1a

    .line 5525
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    .line 5526
    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 5527
    new-instance v5, Landroid/transition/ChangeBounds;

    invoke-direct {v5}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v1, v5}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 5528
    new-instance v5, Lorg/telegram/ui/Components/SharedMediaLayout$34;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$34;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v5}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    const-wide/16 v13, 0xc8

    .line 5553
    invoke-virtual {v1, v13, v14}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 5554
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getTabsContainer()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 5556
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->recordIndicatorParams()V

    .line 5558
    :cond_1a
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->removeTabs()Landroid/util/SparseArray;

    move-result-object v1

    if-le v3, v11, :cond_1b

    const/4 v1, 0x0

    .line 5562
    :cond_1b
    iget-wide v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v13, v14}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v3

    if-nez v3, :cond_1c

    iget-wide v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v13, v14}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_1c
    iget-wide v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v13, v14}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-nez v3, :cond_25

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz v3, :cond_1d

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->stories_pinned_available:Z

    if-nez v3, :cond_1f

    :cond_1d
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_1e

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->stories_pinned_available:Z

    if-nez v3, :cond_1f

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->includeStories()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 5563
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isArchivedOnlyStoriesView()Z

    move-result v3

    const-wide/16 v13, 0x1a4

    const-string v5, "ProfileStories"

    const/16 v15, 0x9

    if-eqz v3, :cond_21

    .line 5564
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v3, v15}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v3

    if-nez v3, :cond_20

    .line 5565
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v6, Lorg/telegram/messenger/R$string;->ProfileStories:I

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v15, v5, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 5567
    :cond_20
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    iput-wide v13, v3, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animationDuration:J

    goto :goto_d

    .line 5569
    :cond_21
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v3

    if-nez v3, :cond_22

    .line 5570
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v8, Lorg/telegram/messenger/R$string;->ProfileStories:I

    invoke-static {v5, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v8, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 5572
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 5573
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v3, v15}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v3

    if-nez v3, :cond_23

    .line 5574
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v6, Lorg/telegram/messenger/R$string;->ProfileStories:I

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v15, v5, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 5577
    :cond_23
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v3

    if-nez v3, :cond_24

    .line 5578
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v6, Lorg/telegram/messenger/R$string;->Settings:I

    const-string v8, "Settings"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 5581
    :cond_24
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    iput-wide v13, v3, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animationDuration:J

    .line 5585
    :cond_25
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v3

    if-nez v3, :cond_30

    .line 5586
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$4100(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 5587
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v3

    if-nez v3, :cond_26

    .line 5588
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v5, Lorg/telegram/messenger/R$string;->GroupMembers:I

    const-string v6, "GroupMembers"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v7, v5, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 5591
    :cond_26
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v3, v3, v2

    if-lez v3, :cond_28

    .line 5592
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v3

    if-nez v3, :cond_28

    .line 5593
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v5, v3, v4

    if-nez v5, :cond_27

    aget v5, v3, v10

    if-nez v5, :cond_27

    aget v5, v3, v11

    if-nez v5, :cond_27

    aget v5, v3, v12

    if-nez v5, :cond_27

    aget v5, v3, v9

    if-nez v5, :cond_27

    const/4 v5, 0x6

    aget v3, v3, v5

    if-nez v3, :cond_27

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$4100(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-nez v3, :cond_27

    .line 5594
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v5, Lorg/telegram/messenger/R$string;->SharedMediaTabFull2:I

    const-string v6, "SharedMediaTabFull2"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    goto :goto_e

    .line 5596
    :cond_27
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v5, Lorg/telegram/messenger/R$string;->SharedMediaTab2:I

    const-string v6, "SharedMediaTab2"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 5600
    :cond_28
    :goto_e
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v3, v3, v4

    if-lez v3, :cond_29

    .line 5601
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v3

    if-nez v3, :cond_29

    .line 5602
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v5, Lorg/telegram/messenger/R$string;->SharedFilesTab2:I

    const-string v6, "SharedFilesTab2"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 5605
    :cond_29
    iget-wide v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    const-string v4, "SharedMusicTab2"

    if-nez v3, :cond_2b

    .line 5606
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v3, v3, v11

    if-lez v3, :cond_2a

    .line 5607
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v3, v11}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 5608
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v5, Lorg/telegram/messenger/R$string;->SharedLinksTab2:I

    const-string v6, "SharedLinksTab2"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v11, v5, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 5611
    :cond_2a
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v3, v3, v12

    if-lez v3, :cond_2c

    .line 5612
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v3, v12}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 5613
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v5, Lorg/telegram/messenger/R$string;->SharedMusicTab2:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v12, v4, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    goto :goto_f

    .line 5617
    :cond_2b
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v3, v3, v12

    if-lez v3, :cond_2c

    .line 5618
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v3, v12}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 5619
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v5, Lorg/telegram/messenger/R$string;->SharedMusicTab2:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v12, v4, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 5624
    :cond_2c
    :goto_f
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v4, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 5625
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v5, Lorg/telegram/messenger/R$string;->music_tab_playlist:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 5628
    :cond_2d
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v3, v3, v10

    if-lez v3, :cond_2e

    .line 5629
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 5630
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v4, Lorg/telegram/messenger/R$string;->SharedVoiceTab2:I

    const-string v5, "SharedVoiceTab2"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v10, v4, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 5633
    :cond_2e
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v3, v3, v9

    if-lez v3, :cond_2f

    .line 5634
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 5635
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v4, Lorg/telegram/messenger/R$string;->SharedGIFsTab2:I

    const-string v5, "SharedGIFsTab2"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v9, v4, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 5638
    :cond_2f
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    if-lez v3, :cond_30

    .line 5639
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v3

    if-nez v3, :cond_30

    .line 5640
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v5, Lorg/telegram/messenger/R$string;->SharedGroupsTab2:I

    const-string v6, "SharedGroupsTab2"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 5645
    :cond_30
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getCurrentTabId()I

    move-result v1

    if-gez v1, :cond_31

    .line 5646
    sget v3, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v1, v3, :cond_32

    .line 5647
    :cond_31
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v3, v2

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$002(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;I)I

    .line 5649
    :cond_32
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->finishAddingTabs()V

    return-void
.end method


# virtual methods
.method protected canShowSearchItem()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canZoomIn()Z
    .locals 5

    .line 8398
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    goto :goto_2

    .line 8401
    :cond_0
    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    .line 8402
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:[I

    aget v4, v2, v0

    aget v2, v2, v0

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->getNextMediaColumnsCount(IIZ)I

    move-result v0

    if-eq v4, v0, :cond_3

    move v1, v3

    :cond_3
    :goto_2
    return v1
.end method

.method public canZoomOut()Z
    .locals 5

    .line 8406
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    aget-object v2, v0, v1

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->allowStoriesSingleColumn:Z

    if-eqz v2, :cond_0

    goto :goto_2

    .line 8409
    :cond_0
    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    .line 8410
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:[I

    aget v4, v2, v0

    aget v2, v2, v0

    invoke-virtual {p0, v0, v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getNextMediaColumnsCount(IIZ)I

    move-result v0

    if-eq v4, v0, :cond_3

    move v1, v3

    :cond_3
    :goto_2
    return v1
.end method

.method public checkPinchToZoom(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 490
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    const/16 v4, 0x9

    const/16 v5, 0x8

    if-eqz v2, :cond_0

    if-eq v2, v5, :cond_0

    if-ne v2, v4, :cond_1

    .line 491
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    return v3

    .line 494
    :cond_2
    iget-boolean v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    if-nez v2, :cond_3

    return v6

    .line 498
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v7, 0x2

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v11, 0x5

    if-ne v2, v11, :cond_4

    goto/16 :goto_6

    .line 527
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v7, :cond_19

    iget-boolean v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    if-nez v2, :cond_5

    iget-boolean v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybePinchToZoomTouchMode2:Z

    if-eqz v2, :cond_19

    :cond_5
    const/4 v2, -0x1

    move v11, v2

    move v12, v11

    move v7, v3

    .line 530
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    if-ge v7, v13, :cond_8

    .line 531
    iget v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pointerId1:I

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    if-ne v13, v14, :cond_6

    move v11, v7

    .line 534
    :cond_6
    iget v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pointerId2:I

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    if-ne v13, v14, :cond_7

    move v12, v7

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_8
    if-eq v11, v2, :cond_18

    if-ne v12, v2, :cond_9

    goto/16 :goto_5

    .line 545
    :cond_9
    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    sub-float/2addr v2, v7

    float-to-double v13, v2

    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    sub-float/2addr v2, v7

    float-to-double v11, v2

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v11

    double-to-float v2, v11

    iget v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchStartDistance:F

    div-float/2addr v2, v7

    iput v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchScale:F

    .line 546
    iget-boolean v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    if-nez v7, :cond_c

    const v7, 0x3f8147ae    # 1.01f

    cmpl-float v7, v2, v7

    if-gtz v7, :cond_a

    const v7, 0x3f7d70a4    # 0.99f

    cmpg-float v7, v2, v7

    if-gez v7, :cond_c

    .line 547
    :cond_a
    iput-boolean v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    cmpl-float v2, v2, v10

    if-lez v2, :cond_b

    move v2, v6

    goto :goto_1

    :cond_b
    move v2, v3

    .line 548
    :goto_1
    iput-boolean v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchScaleUp:Z

    .line 550
    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->startPinchToMediaColumnsCount(Z)V

    .line 552
    :cond_c
    iget-boolean v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    if-eqz v2, :cond_1e

    .line 553
    iget-boolean v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchScaleUp:Z

    if-eqz v2, :cond_d

    iget v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchScale:F

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_e

    :cond_d
    if-nez v2, :cond_f

    iget v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchScale:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_f

    .line 554
    :cond_e
    iput v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsProgress:F

    goto :goto_3

    :cond_f
    if-eqz v2, :cond_10

    .line 556
    iget v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchScale:F

    sub-float/2addr v8, v2

    div-float/2addr v8, v10

    sub-float v2, v10, v8

    goto :goto_2

    :cond_10
    iget v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchScale:F

    sub-float v2, v10, v2

    const/high16 v7, 0x3f000000    # 0.5f

    div-float/2addr v2, v7

    :goto_2
    invoke-static {v10, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsProgress:F

    .line 558
    :goto_3
    iget v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsProgress:F

    cmpl-float v7, v2, v10

    if-eqz v7, :cond_11

    cmpl-float v7, v2, v9

    if-nez v7, :cond_17

    .line 561
    :cond_11
    iget v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->changeColumnsTab:I

    if-ne v7, v5, :cond_12

    .line 562
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->storiesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    goto :goto_4

    :cond_12
    if-ne v7, v4, :cond_13

    .line 564
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->archivedStoriesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    goto :goto_4

    .line 566
    :cond_13
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    :goto_4
    cmpl-float v2, v2, v10

    if-nez v2, :cond_15

    .line 569
    iget v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    int-to-float v2, v2

    iget v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->animateToColumnsCount:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    .line 570
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v3

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->animateToColumnsCount:I

    int-to-float v7, v7

    div-float/2addr v5, v7

    float-to-int v5, v5

    .line 571
    iget v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTrackingX:I

    int-to-float v7, v7

    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v8, v8, v3

    invoke-static {v8}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v8, v5

    int-to-float v5, v8

    div-float/2addr v7, v5

    iget v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->animateToColumnsCount:I

    add-int/lit8 v8, v5, -0x1

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    mul-int/2addr v2, v5

    add-int/2addr v2, v7

    .line 573
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    if-lt v2, v5, :cond_14

    .line 574
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v6

    .line 576
    :cond_14
    iput v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    .line 579
    :cond_15
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->finishPinchToMediaColumnsCount()V

    .line 580
    iget v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsProgress:F

    cmpl-float v2, v2, v9

    if-nez v2, :cond_16

    .line 581
    iget-boolean v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchScaleUp:Z

    xor-int/2addr v2, v6

    iput-boolean v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchScaleUp:Z

    .line 584
    :cond_16
    iget-boolean v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchScaleUp:Z

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->startPinchToMediaColumnsCount(Z)V

    .line 585
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float/2addr v2, v4

    float-to-double v4, v2

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchStartDistance:F

    .line 588
    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    .line 589
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v1, v3

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    if-eqz v2, :cond_1e

    .line 590
    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    goto/16 :goto_7

    .line 539
    :cond_18
    :goto_5
    iput-boolean v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybePinchToZoomTouchMode:Z

    .line 540
    iput-boolean v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybePinchToZoomTouchMode2:Z

    .line 541
    iput-boolean v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    .line 542
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->finishPinchToMediaColumnsCount()V

    return v3

    .line 593
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v6, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_1a

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->checkPointerIds(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1e

    :cond_1b
    iget-boolean v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    if-eqz v1, :cond_1e

    .line 594
    iput-boolean v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybePinchToZoomTouchMode2:Z

    .line 595
    iput-boolean v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybePinchToZoomTouchMode:Z

    .line 596
    iput-boolean v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    .line 597
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->finishPinchToMediaColumnsCount()V

    goto/16 :goto_7

    .line 499
    :cond_1c
    :goto_6
    iget-boolean v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybePinchToZoomTouchMode:Z

    if-eqz v2, :cond_1d

    iget-boolean v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    if-nez v2, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v7, :cond_1d

    .line 500
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float/2addr v2, v4

    float-to-double v4, v2

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    sub-float/2addr v2, v7

    float-to-double v11, v2

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v2, v4

    iput v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchStartDistance:F

    .line 502
    iput v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchScale:F

    .line 504
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pointerId1:I

    .line 505
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pointerId2:I

    .line 507
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    .line 508
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 509
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v2

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 511
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 512
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v8

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterX:I

    .line 513
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v8

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    sub-float/2addr v4, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    sub-float/2addr v4, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    sub-float/2addr v4, v2

    float-to-int v2, v4

    iput v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterY:I

    .line 515
    iget v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterX:I

    invoke-direct {v0, v4, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->selectPinchPosition(II)V

    .line 516
    iput-boolean v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybePinchToZoomTouchMode2:Z

    .line 518
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_1e

    .line 519
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 521
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v9

    if-lez v1, :cond_1e

    .line 523
    iput-boolean v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybePinchToZoomTouchMode:Z

    .line 600
    :cond_1e
    :goto_7
    iget-boolean v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    return v1
.end method

.method public checkTabsAnimationInProgress()Z
    .locals 7

    .line 4444
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimationInProgress:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 4446
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->backAnimation:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    .line 4447
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    .line 4448
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 4449
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v0, v5

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-boolean v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animatingForward:Z

    if-eqz v4, :cond_0

    move v2, v5

    :cond_0
    mul-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_1

    .line 4452
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    .line 4453
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v0, v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-boolean v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animatingForward:Z

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_0
    mul-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 4454
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v5

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_1

    :cond_3
    move v5, v1

    :goto_1
    if-eqz v5, :cond_5

    .line 4458
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    .line 4459
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 4460
    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    .line 4462
    :cond_4
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimationInProgress:Z

    .line 4464
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getTabProgress()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->onTabProgress(F)V

    .line 4465
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimationInProgress:Z

    return v0

    :cond_6
    return v1
.end method

.method public closeActionMode()Z
    .locals 1

    const/4 v0, 0x1

    .line 4722
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->closeActionMode(Z)Z

    move-result v0

    return v0
.end method

.method public closeActionMode(Z)Z
    .locals 4

    .line 4726
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    .line 4728
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4730
    :cond_0
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    .line 4731
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    .line 4732
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->showActionMode(Z)V

    .line 4733
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateRowsSelection(Z)V

    return v0

    :cond_1
    return v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 4796
    sget v2, Lorg/telegram/messenger/NotificationCenter;->playlistDidChanged:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_3

    .line 4797
    aget-object v1, p3, v4

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4799
    aget-object v1, p3, v3

    check-cast v1, Ljava/util/List;

    .line 4800
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 4801
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlist:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4804
    :cond_0
    aget-object v1, p3, v3

    check-cast v1, Ljava/util/List;

    .line 4805
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 4806
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4809
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v1, :cond_2

    .line 4810
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4812
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v1, :cond_67

    .line 4813
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_25

    .line 4816
    :cond_3
    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoad:I

    const/4 v5, 0x6

    const/4 v6, 0x3

    const/4 v7, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x2

    if-ne v1, v2, :cond_2f

    .line 4817
    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 4818
    aget-object v13, p3, v6

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x7

    .line 4819
    aget-object v15, p3, v14

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 4820
    aget-object v16, p3, v11

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 4821
    aget-object v16, p3, v5

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eq v10, v5, :cond_4

    if-ne v10, v14, :cond_5

    :cond_4
    move v10, v3

    .line 4827
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

    .line 4829
    aget-object v5, v5, v10

    aget-object v13, p3, v4

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    .line 4831
    :cond_6
    aget-object v5, p3, v12

    check-cast v5, Ljava/util/ArrayList;

    .line 4833
    iget-wide v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v13, v14}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v13

    .line 4834
    iget-wide v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    cmp-long v1, v1, v14

    if-nez v1, :cond_7

    move v1, v3

    goto :goto_2

    :cond_7
    move v1, v4

    .line 4838
    :goto_2
    sget v2, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v10, v2, :cond_8

    .line 4839
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_3

    :cond_8
    if-nez v10, :cond_9

    .line 4842
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    goto :goto_3

    :cond_9
    if-ne v10, v4, :cond_a

    .line 4844
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_3

    :cond_a
    if-ne v10, v12, :cond_b

    .line 4846
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_3

    :cond_b
    if-ne v10, v6, :cond_c

    .line 4848
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    goto :goto_3

    :cond_c
    if-ne v10, v11, :cond_d

    .line 4850
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_3

    :cond_d
    if-ne v10, v7, :cond_e

    .line 4852
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    goto :goto_3

    :cond_e
    const/4 v2, 0x0

    .line 4855
    :goto_3
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v6, v6, v10

    iget-object v6, v6, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v2, :cond_f

    .line 4857
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v11

    .line 4858
    instance-of v14, v2, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    if-eqz v14, :cond_10

    .line 4859
    move-object v14, v2

    check-cast v14, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    .line 4860
    invoke-virtual {v14}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifySectionsChanged()V

    goto :goto_4

    :cond_f
    move v11, v3

    .line 4865
    :cond_10
    :goto_4
    iget-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v14, v14, v10

    iput-boolean v3, v14, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    .line 4867
    new-instance v14, Landroid/util/SparseBooleanArray;

    invoke-direct {v14}, Landroid/util/SparseBooleanArray;-><init>()V

    if-eqz v16, :cond_13

    .line 4870
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v15, v4

    :goto_5
    if-ltz v15, :cond_12

    .line 4871
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    .line 4872
    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v8, v8, v10

    invoke-virtual {v8, v12, v1, v4, v13}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;IZZ)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 4874
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-virtual {v14, v8, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4875
    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v8, v8, v10

    invoke-static {v8}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$810(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    .line 4876
    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v8, v8, v10

    invoke-static {v8}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$800(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result v8

    if-gez v8, :cond_11

    .line 4877
    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v8, v8, v10

    invoke-static {v8, v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$802(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;I)I

    :cond_11
    add-int/lit8 v15, v15, -0x1

    const/4 v12, 0x2

    goto :goto_5

    .line 4881
    :cond_12
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v5, v5, v10

    aget-object v7, p3, v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startReached:Z

    .line 4882
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v7, v5, v10

    iget-boolean v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startReached:Z

    if-eqz v7, :cond_17

    .line 4883
    aget-object v5, v5, v10

    invoke-static {v5, v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$802(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;I)I

    goto/16 :goto_7

    :cond_13
    move v8, v3

    .line 4886
    :goto_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_15

    .line 4887
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    .line 4888
    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v12, v12, v10

    invoke-virtual {v12, v9, v1, v3, v13}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;IZZ)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 4889
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-virtual {v14, v9, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4890
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v9, v9, v10

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$8410(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    .line 4891
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v9, v9, v10

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$8400(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result v9

    if-gez v9, :cond_14

    .line 4892
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v9, v9, v10

    invoke-static {v9, v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$8402(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;I)I

    :cond_14
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 4896
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

    .line 4897
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

    .line 4899
    :cond_16
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v5, v5, v10

    iget-object v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-object v7, p3, v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    aput-boolean v7, v5, v1

    .line 4900
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v7, v5, v10

    iget-object v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v7, v7, v1

    if-eqz v7, :cond_17

    .line 4901
    aget-object v7, v5, v10

    aget-object v5, v5, v10

    iget-object v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v8, v8, v10

    invoke-static {v8}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$800(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result v8

    add-int/2addr v5, v8

    iput v5, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    :cond_17
    :goto_7
    if-nez v16, :cond_18

    if-nez v1, :cond_18

    .line 4904
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v7, v5, v10

    iget-object v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v1, v7, v1

    if-eqz v1, :cond_18

    iget-wide v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    const-wide/16 v12, 0x0

    cmp-long v1, v7, v12

    if-eqz v1, :cond_18

    .line 4905
    aget-object v1, v5, v10

    iput-boolean v4, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    .line 4906
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

    move v5, v3

    const/4 v1, 0x0

    .line 4910
    :goto_8
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v8, v7

    if-ge v5, v8, :cond_1a

    .line 4911
    aget-object v7, v7, v5

    invoke-static {v7}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v7

    if-ne v7, v2, :cond_19

    .line 4912
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v5

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    .line 4913
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v7, v7, v5

    invoke-static {v7}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 4916
    :cond_1a
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    .line 4917
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    if-ne v2, v7, :cond_1c

    .line 4918
    invoke-virtual {v7}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getItemCount()I

    move-result v7

    if-ne v7, v11, :cond_1b

    .line 4919
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    goto :goto_9

    .line 4921
    :cond_1b
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_9

    .line 4925
    :cond_1c
    :try_start_0
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4930
    :catchall_0
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

    .line 4932
    invoke-direct {v0, v1, v11, v14}, Lorg/telegram/ui/Components/SharedMediaLayout;->animateItemsEnter(Lorg/telegram/ui/Components/RecyclerListView;ILandroid/util/SparseBooleanArray;)V

    goto :goto_a

    :cond_1d
    if-eqz v1, :cond_1f

    .line 4935
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    if-eq v2, v7, :cond_1e

    if-lt v5, v11, :cond_1f

    .line 4936
    :cond_1e
    invoke-direct {v0, v1, v11, v14}, Lorg/telegram/ui/Components/SharedMediaLayout;->animateItemsEnter(Lorg/telegram/ui/Components/RecyclerListView;ILandroid/util/SparseBooleanArray;)V

    :cond_1f
    :goto_a
    if-eqz v1, :cond_22

    .line 4939
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v2, v10

    iget-boolean v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loadingAfterFastScroll:Z

    if-nez v2, :cond_22

    if-nez v6, :cond_21

    move v2, v3

    :goto_b
    const/4 v5, 0x2

    if-ge v2, v5, :cond_22

    .line 4942
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    if-nez v5, :cond_20

    .line 4943
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getPositionForIndex(I)I

    move-result v5

    .line 4944
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v6, v5, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 4948
    :cond_21
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->saveScrollPosition()V

    .line 4952
    :cond_22
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v1, v10

    iget-boolean v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loadingAfterFastScroll:Z

    if-eqz v2, :cond_24

    .line 4953
    aget-object v1, v1, v10

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_23

    .line 4954
    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->loadFromStart(I)V

    goto :goto_c

    .line 4956
    :cond_23
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v1, v1, v10

    iput-boolean v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loadingAfterFastScroll:Z

    .line 4959
    :cond_24
    :goto_c
    iput-boolean v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrolling:Z

    goto/16 :goto_25

    .line 4960
    :cond_25
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    if-eqz v1, :cond_67

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v1, v1, v10

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_67

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v1, v1, v10

    iget-boolean v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loadingAfterFastScroll:Z

    if-nez v1, :cond_67

    .line 4961
    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->fillMediaData(I)Z

    move-result v1

    if-eqz v1, :cond_67

    if-nez v10, :cond_26

    .line 4964
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    goto :goto_d

    :cond_26
    if-ne v10, v4, :cond_27

    .line 4966
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_d

    :cond_27
    const/4 v1, 0x2

    if-ne v10, v1, :cond_28

    .line 4968
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_d

    :cond_28
    if-ne v10, v6, :cond_29

    .line 4970
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    goto :goto_d

    :cond_29
    if-ne v10, v11, :cond_2a

    .line 4972
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_d

    :cond_2a
    if-ne v10, v7, :cond_2b

    .line 4974
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    goto :goto_d

    :cond_2b
    const/4 v10, 0x0

    :goto_d
    if-eqz v10, :cond_2e

    .line 4977
    :goto_e
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v2, v1

    if-ge v3, v2, :cond_2d

    .line 4978
    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-ne v1, v10, :cond_2c

    .line 4979
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 4982
    :cond_2d
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4984
    :cond_2e
    iput-boolean v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrolling:Z

    goto/16 :goto_25

    .line 4987
    :cond_2f
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    const/4 v8, -0x1

    if-ne v1, v2, :cond_43

    const/4 v2, 0x2

    .line 4988
    aget-object v1, p3, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_30

    return-void

    .line 4993
    :cond_30
    iget-wide v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 4994
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

    .line 4996
    :goto_f
    aget-object v1, p3, v4

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 4998
    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_34

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-nez v7, :cond_32

    .line 4999
    iget-wide v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    cmp-long v5, v12, v5

    if-eqz v5, :cond_32

    move v1, v4

    goto :goto_11

    .line 5001
    :cond_32
    iget-wide v5, v10, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_33

    goto :goto_10

    :cond_33
    return-void

    :cond_34
    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_35

    return-void

    :cond_35
    :goto_10
    move v1, v3

    .line 5009
    :goto_11
    aget-object v2, p3, v3

    check-cast v2, Ljava/util/ArrayList;

    .line 5012
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v3

    move v7, v6

    :goto_12
    if-ge v6, v5, :cond_38

    move v9, v3

    .line 5013
    :goto_13
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length v12, v10

    if-ge v9, v12, :cond_37

    .line 5014
    aget-object v10, v10, v9

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v10, v12, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->deleteMessage(II)Lorg/telegram/messenger/MessageObject;

    move-result-object v10

    if-eqz v10, :cond_36

    move v7, v4

    move v8, v9

    :cond_36
    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_37
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 5021
    :cond_38
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 5022
    invoke-static/range {p2 .. p2}, Lcom/iMe/fork/controller/MusicController;->getInstance(I)Lcom/iMe/fork/controller/MusicController;

    move-result-object v1

    iget-wide v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-virtual {v1, v5, v6, v2}, Lcom/iMe/fork/controller/MusicController;->removePlaylistMessage(JLjava/util/List;)V

    :cond_39
    if-eqz v7, :cond_42

    .line 5026
    iput-boolean v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrolling:Z

    .line 5028
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v1, :cond_3a

    .line 5029
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5032
    :cond_3a
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    if-eqz v1, :cond_3b

    .line 5033
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5035
    :cond_3b
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v1, :cond_3c

    .line 5036
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5038
    :cond_3c
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v1, :cond_3d

    .line 5039
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5041
    :cond_3d
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    if-eqz v1, :cond_3e

    .line 5042
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    .line 5044
    :cond_3e
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v1, :cond_3f

    .line 5045
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5047
    :cond_3f
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    if-eqz v1, :cond_40

    .line 5048
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_40
    if-eqz v8, :cond_41

    if-eq v8, v4, :cond_41

    const/4 v1, 0x2

    if-eq v8, v1, :cond_41

    if-ne v8, v11, :cond_42

    .line 5052
    :cond_41
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->loadFastScrollData(Z)V

    .line 5055
    :cond_42
    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/SharedMediaLayout;->getMediaPage(I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    goto/16 :goto_25

    .line 5056
    :cond_43
    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    if-ne v1, v2, :cond_54

    const/4 v2, 0x2

    .line 5057
    aget-object v1, p3, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_44

    return-void

    .line 5061
    :cond_44
    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 5062
    iget-wide v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    cmp-long v1, v1, v9

    if-nez v1, :cond_67

    .line 5063
    aget-object v1, p3, v4

    check-cast v1, Ljava/util/ArrayList;

    .line 5064
    invoke-static {v9, v10}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v2

    move v5, v3

    move v9, v5

    .line 5066
    :goto_14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_49

    .line 5067
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessageObject;

    .line 5068
    iget-object v12, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v12}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v12

    if-eqz v12, :cond_48

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z

    move-result v12

    if-eqz v12, :cond_45

    goto :goto_16

    .line 5071
    :cond_45
    iget-object v12, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v12}, Lorg/telegram/messenger/MediaDataController;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v12

    if-ne v12, v8, :cond_46

    return-void

    .line 5075
    :cond_46
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v14, v13, v12

    iget-boolean v14, v14, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startReached:Z

    if-eqz v14, :cond_48

    aget-object v13, v13, v12

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v14

    iget-wide v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    cmp-long v7, v14, v7

    if-nez v7, :cond_47

    move v7, v3

    goto :goto_15

    :cond_47
    move v7, v4

    :goto_15
    invoke-virtual {v13, v10, v7, v4, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;IZZ)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 5077
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aput v4, v7, v12

    move v9, v4

    :cond_48
    :goto_16
    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x5

    const/4 v8, -0x1

    goto :goto_14

    :cond_49
    if-eqz v9, :cond_67

    .line 5081
    iput-boolean v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrolling:Z

    .line 5082
    :goto_17
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v2, v1

    if-ge v3, v2, :cond_53

    .line 5085
    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    sget v2, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v1, v2, :cond_4a

    .line 5086
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    :goto_18
    const/4 v2, 0x2

    :goto_19
    const/4 v5, 0x5

    goto :goto_1a

    .line 5088
    :cond_4a
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    if-nez v1, :cond_4b

    .line 5089
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    goto :goto_18

    .line 5090
    :cond_4b
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    if-ne v1, v4, :cond_4c

    .line 5091
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_18

    .line 5092
    :cond_4c
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4d

    .line 5093
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_19

    .line 5094
    :cond_4d
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    if-ne v1, v6, :cond_4e

    .line 5095
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    goto :goto_19

    .line 5096
    :cond_4e
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    if-ne v1, v11, :cond_4f

    .line 5097
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_19

    .line 5098
    :cond_4f
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    const/4 v5, 0x5

    if-ne v1, v5, :cond_50

    .line 5099
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    goto :goto_1a

    :cond_50
    const/4 v1, 0x0

    :goto_1a
    if-eqz v1, :cond_52

    .line 5102
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 5104
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v1, :cond_51

    .line 5105
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5108
    :cond_51
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5109
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5110
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5111
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    .line 5112
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5113
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_17

    .line 5116
    :cond_53
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateTabs(Z)V

    goto/16 :goto_25

    .line 5119
    :cond_54
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    if-ne v1, v2, :cond_56

    .line 5120
    aget-object v1, p3, v5

    check-cast v1, Ljava/lang/Boolean;

    .line 5121
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_55

    return-void

    .line 5124
    :cond_55
    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/Integer;

    .line 5125
    aget-object v2, p3, v4

    check-cast v2, Ljava/lang/Integer;

    .line 5126
    :goto_1b
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length v5, v4

    if-ge v3, v5, :cond_67

    .line 5127
    aget-object v4, v4, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->replaceMid(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 5129
    :cond_56
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    if-eq v1, v2, :cond_5f

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-eq v1, v2, :cond_5f

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-ne v1, v2, :cond_57

    goto/16 :goto_1f

    .line 5163
    :cond_57
    sget v2, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    if-ne v1, v2, :cond_67

    .line 5164
    aget-object v1, p3, v3

    check-cast v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    .line 5165
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->storiesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    if-eqz v2, :cond_5b

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-ne v1, v2, :cond_5b

    const/16 v2, 0x8

    .line 5166
    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->getMediaPage(I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    if-eqz v2, :cond_5a

    .line 5167
    iget-boolean v5, v2, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollEnabled:Z

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result v6

    if-lez v6, :cond_58

    move v6, v4

    goto :goto_1c

    :cond_58
    move v6, v3

    :goto_1c
    if-eq v5, v6, :cond_5a

    .line 5168
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result v5

    if-lez v5, :cond_59

    move v5, v4

    goto :goto_1d

    :cond_59
    move v5, v3

    :goto_1d
    iput-boolean v5, v2, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollEnabled:Z

    .line 5169
    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateFastScrollVisibility(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Z)V

    .line 5171
    :cond_5a
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->storiesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->notifyDataSetChanged()V

    .line 5172
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    if-eqz v2, :cond_5b

    .line 5173
    invoke-interface {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;->updateSelectedMediaTabText()V

    .line 5176
    :cond_5b
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->archivedStoriesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    if-eqz v2, :cond_67

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-ne v1, v2, :cond_67

    const/16 v2, 0x9

    .line 5177
    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->getMediaPage(I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 5178
    iget-boolean v5, v2, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollEnabled:Z

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result v6

    if-lez v6, :cond_5c

    move v6, v4

    goto :goto_1e

    :cond_5c
    move v6, v3

    :goto_1e
    if-eq v5, v6, :cond_5e

    .line 5179
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result v1

    if-lez v1, :cond_5d

    move v3, v4

    :cond_5d
    iput-boolean v3, v2, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollEnabled:Z

    .line 5180
    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateFastScrollVisibility(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Z)V

    .line 5182
    :cond_5e
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->archivedStoriesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->notifyDataSetChanged()V

    .line 5183
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    if-eqz v1, :cond_67

    .line 5184
    invoke-interface {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;->updateSelectedMediaTabText()V

    goto/16 :goto_25

    .line 5130
    :cond_5f
    :goto_1f
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-eq v1, v2, :cond_64

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-ne v1, v2, :cond_60

    goto :goto_22

    .line 5145
    :cond_60
    aget-object v1, p3, v3

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 5146
    iget-wide v1, v1, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_61

    return-void

    :cond_61
    move v1, v3

    .line 5149
    :goto_20
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v5, v2

    if-ge v1, v5, :cond_67

    .line 5150
    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v5, v3

    :goto_21
    if-ge v5, v2, :cond_63

    .line 5152
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 5153
    instance-of v7, v6, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v7, :cond_62

    .line 5154
    check-cast v6, Lorg/telegram/ui/Cells/SharedAudioCell;

    .line 5155
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    if-eqz v7, :cond_62

    .line 5157
    invoke-virtual {v6, v3, v4}, Lorg/telegram/ui/Cells/SharedAudioCell;->updateButtonState(ZZ)V

    :cond_62
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_64
    :goto_22
    move v1, v3

    .line 5131
    :goto_23
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v5, v2

    if-ge v1, v5, :cond_67

    .line 5132
    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v5, v3

    :goto_24
    if-ge v5, v2, :cond_66

    .line 5134
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 5135
    instance-of v7, v6, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v7, :cond_65

    .line 5136
    check-cast v6, Lorg/telegram/ui/Cells/SharedAudioCell;

    .line 5137
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    if-eqz v7, :cond_65

    .line 5139
    invoke-virtual {v6, v3, v4}, Lorg/telegram/ui/Cells/SharedAudioCell;->updateButtonState(ZZ)V

    :cond_65
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_67
    :goto_25
    return-void
.end method

.method public disableScroll(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 4716
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->stopScroll(Landroid/view/MotionEvent;)V

    .line 4718
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->disableScrolling:Z

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 3578
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    if-eqz v0, :cond_0

    .line 3579
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3580
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3581
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;->drawBackground(Landroid/graphics/Canvas;)V

    .line 3582
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3584
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3585
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentContextView;->isCallStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3586
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3587
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3588
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->setDrawOverlay(Z)V

    .line 3589
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3590
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->setDrawOverlay(Z)V

    .line 3591
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public dispatchFastScrollEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 462
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 463
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

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

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v3

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawBackgroundWithBlur(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0

    .line 3686
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .line 8415
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-ne p2, v0, :cond_0

    .line 8416
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8417
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

    .line 8418
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 8419
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 8422
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public drawListForBlur(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 662
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 663
    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    .line 664
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 665
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 666
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v5

    iget v5, v5, Lorg/telegram/ui/Components/BlurredRecyclerView;->blurTopPadding:I

    const/16 v6, 0x64

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 667
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 668
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

    invoke-static {v7}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getY()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 669
    invoke-virtual {v3, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 670
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

    .line 4401
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->forceHasOverlappingRendering(Z)V

    return-void
.end method

.method public getActionModeLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getClosestTab()I
    .locals 4

    .line 3969
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3970
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimationInProgress:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->backAnimation:Z

    if-nez v0, :cond_0

    .line 3971
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    return v0

    .line 3972
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

    .line 3973
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    return v0

    .line 3976
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getCurrentTabId()I

    move-result v0

    return v0
.end method

.method public getCurrentListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 2

    .line 4480
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v0

    return-object v0
.end method

.method protected getInitialTab()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMembersFilterItem()Landroid/widget/ImageView;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersFilterItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMembersMenuItem()Landroid/widget/ImageView;
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getNextMediaColumnsCount(IIZ)I
    .locals 3

    const/4 v0, 0x1

    if-nez p3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    add-int/2addr p2, v1

    const/16 v1, 0x9

    const/4 v2, 0x6

    if-le p2, v2, :cond_2

    if-nez p3, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v2

    .line 8339
    :cond_2
    :goto_1
    iget-boolean p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->allowStoriesSingleColumn:Z

    if-eqz p3, :cond_3

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x2

    :goto_2
    invoke-static {p2, v1, v0}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p1

    return p1
.end method

.method public getPhotoVideoOptionsAlpha(F)F
    .locals 6

    .line 739
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isArchivedOnlyStoriesView()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 743
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v2, 0x1

    aget-object v3, v0, v2

    const/16 v4, 0x9

    const/16 v5, 0x8

    if-eqz v3, :cond_2

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    if-eq v0, v5, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    if-ne v0, v4, :cond_2

    :cond_1
    add-float/2addr v1, p1

    .line 745
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    if-eqz v3, :cond_4

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    if-eq v0, v5, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    if-ne v0, v4, :cond_4

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    add-float/2addr v1, v0

    :cond_4
    return v1
.end method

.method public getPhotosVideosTypeFilter()I
    .locals 2

    .line 645
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    return v0
.end method

.method public getSearchItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1

    .line 3939
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method public getSelectedTab()I
    .locals 1

    .line 3965
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getCurrentTabId()I

    move-result v0

    return v0
.end method

.method public getStoriesCount(I)I
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 7618
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->storiesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    .line 7620
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->archivedStoriesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    :goto_0
    if-eqz p1, :cond_1

    .line 7625
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public getTabProgress()F
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 8478
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 8479
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 8480
    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 68
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 8194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8196
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

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerClose:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v11

    move/from16 v10, v22

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8197
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v2, :cond_0

    .line 8198
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8199
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8203
    :cond_0
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8205
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->shadowLine:Landroid/view/View;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8207
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    move-object v3, v2

    move v10, v11

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8208
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    move-object v14, v2

    move/from16 v21, v23

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8209
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v2, :cond_1

    .line 8210
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v15

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v14, v2

    move/from16 v21, v11

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8211
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v2

    move/from16 v10, v23

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8213
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v2, :cond_2

    .line 8214
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v15

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v14, v2

    move/from16 v21, v11

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8215
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v2

    move/from16 v10, v23

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8217
    :cond_2
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->closeButton:Landroid/widget/ImageView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    new-array v3, v12, [Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    aput-object v4, v3, v13

    const/16 v20, 0x0

    move-object v14, v2

    move-object/from16 v19, v3

    move/from16 v21, v11

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8218
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->closeButton:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v2

    move/from16 v10, v23

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8220
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v19, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    move-object v14, v2

    move/from16 v21, v10

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8221
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8223
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/16 v16, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaTimeBackground:I

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8224
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v5, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaTimeText:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8226
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    const/16 v25, 0x0

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    aput-object v5, v4, v13

    const-string v5, "selectorDrawable"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedLine:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8227
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

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedText:I

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8228
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

    const/4 v10, 0x0

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabText:I

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8229
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

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelector:I

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8231
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v25, v4, v5

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v5, v4, v13

    const-string v5, "frameLayout"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v27

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerBackground:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8232
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v34, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v6, v4, v13

    const-string v6, "playButton"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    sget v40, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerPlayPause:I

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    move-object/from16 v35, v4

    invoke-direct/range {v32 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8233
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v25, v4, v6

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v6, v4, v13

    const-string v6, "titleTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v27

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerTitle:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8234
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    or-int v34, v4, v7

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v7, v4, v13

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v36

    sget v40, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerPerformer:I

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    move-object/from16 v35, v4

    invoke-direct/range {v32 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8235
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v4, v3, v13

    const-string v4, "closeButton"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8237
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v25, v4, v7

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v7, v4, v13

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v27

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_returnToCallBackground:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8238
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v16, v3, v4

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v4, v3, v13

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_returnToCallText:I

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v13

    .line 8240
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 8242
    new-instance v3, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda20;

    invoke-direct {v3, v0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;I)V

    .line 8258
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v12, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v7, v13

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    move-object v4, v14

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8260
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$6200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    move-object v15, v4

    move/from16 v22, v29

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8261
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v31

    sget v32, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    sget v37, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    move-object/from16 v30, v4

    invoke-direct/range {v30 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8262
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v15

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v17, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object v14, v4

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8263
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v31

    sget v32, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v37, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    move-object/from16 v30, v4

    invoke-direct/range {v30 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8265
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v15

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v6, v5, v13

    const-string v30, "textView"

    filled-new-array/range {v30 .. v30}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_graySectionText:I

    move-object v14, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8266
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v32

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    or-int v33, v5, v6

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v6, v5, v13

    const/16 v37, 0x0

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    move-object/from16 v31, v4

    move-object/from16 v34, v5

    invoke-direct/range {v31 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8268
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v15

    const/16 v16, 0x0

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/LoadingCell;

    aput-object v6, v5, v13

    const-string v23, "progressBar"

    filled-new-array/range {v23 .. v23}, [Ljava/lang/String;

    move-result-object v18

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_progressCircle:I

    move-object v14, v4

    move-object/from16 v17, v5

    move/from16 v22, v39

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8270
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v41

    sget v42, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/UserCell;

    aput-object v6, v5, v13

    const-string v6, "adminTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v44

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    sget v48, Lorg/telegram/ui/ActionBar/Theme;->key_profile_creatorIcon:I

    move-object/from16 v40, v4

    move-object/from16 v43, v5

    invoke-direct/range {v40 .. v48}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8271
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v15

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/UserCell;

    aput-object v6, v5, v13

    const-string v6, "imageView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    move-object v14, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8272
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v41

    const/16 v42, 0x0

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/UserCell;

    aput-object v6, v5, v13

    const-string v24, "nameTextView"

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v44

    sget v49, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object/from16 v40, v4

    move-object/from16 v43, v5

    move/from16 v48, v49

    invoke-direct/range {v40 .. v48}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8273
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v15

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/UserCell;

    aput-object v6, v5, v13

    const-string v6, "statusColor"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v18

    sget v40, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    move-object v14, v4

    move-object/from16 v17, v5

    move-object/from16 v21, v3

    move/from16 v22, v40

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8274
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v15

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/UserCell;

    aput-object v6, v5, v13

    const-string v6, "statusOnlineColor"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    move-object v14, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8275
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v32

    const/16 v33, 0x0

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/UserCell;

    aput-object v6, v5, v13

    sget-object v36, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    move-object/from16 v31, v4

    move-object/from16 v34, v5

    move/from16 v38, v21

    invoke-direct/range {v31 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8277
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v51

    const/16 v52, 0x0

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v6, v5, v13

    const/16 v54, 0x0

    const/4 v6, 0x3

    new-array v7, v6, [Landroid/graphics/Paint;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    aget-object v9, v8, v13

    aput-object v9, v7, v13

    aget-object v8, v8, v12

    aput-object v8, v7, v12

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_searchNamePaint:Landroid/text/TextPaint;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    const/16 v56, 0x0

    const/16 v57, 0x0

    sget v58, Lorg/telegram/ui/ActionBar/Theme;->key_chats_name:I

    move-object/from16 v50, v4

    move-object/from16 v53, v5

    move-object/from16 v55, v7

    invoke-direct/range {v50 .. v58}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8278
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v60

    const/16 v61, 0x0

    new-array v5, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v7, v5, v13

    const/16 v63, 0x0

    new-array v6, v6, [Landroid/graphics/Paint;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameEncryptedPaint:[Landroid/text/TextPaint;

    aget-object v8, v7, v13

    aput-object v8, v6, v13

    aget-object v7, v7, v12

    aput-object v7, v6, v12

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_searchNameEncryptedPaint:Landroid/text/TextPaint;

    aput-object v7, v6, v9

    const/16 v65, 0x0

    const/16 v66, 0x0

    sget v67, Lorg/telegram/ui/ActionBar/Theme;->key_chats_secretName:I

    move-object/from16 v59, v4

    move-object/from16 v62, v5

    move-object/from16 v64, v6

    invoke-direct/range {v59 .. v67}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8279
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v15

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v6, v5, v13

    const/16 v18, 0x0

    sget-object v19, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    move-object v14, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8280
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundRed:I

    move-object v4, v14

    move-object v10, v3

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8281
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundOrange:I

    move-object v4, v14

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8282
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundViolet:I

    move-object v4, v14

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8283
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGreen:I

    move-object v4, v14

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8284
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundCyan:I

    move-object v4, v14

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8285
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    move-object v4, v14

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8286
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    move-object v4, v14

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8288
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v51

    sget v52, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;

    aput-object v6, v5, v13

    const-string v6, "emptyTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v54

    const/16 v55, 0x0

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object/from16 v50, v4

    move-object/from16 v53, v5

    move/from16 v58, v6

    invoke-direct/range {v50 .. v58}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8289
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v15

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v7, v5, v13

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object v14, v4

    move-object/from16 v17, v5

    move/from16 v22, v49

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8290
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v51

    sget v52, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v7, v5, v13

    const-string v7, "dateTextView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v54

    sget v58, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    move-object/from16 v50, v4

    move-object/from16 v53, v5

    invoke-direct/range {v50 .. v58}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8291
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v15

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v7, v5, v13

    const-string v7, "progressView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v18

    sget v58, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_startStopLoadIcon:I

    move-object v14, v4

    move-object/from16 v17, v5

    move/from16 v22, v58

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8292
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v51

    sget v52, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v7, v5, v13

    const-string v7, "statusImageView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v54

    move-object/from16 v50, v4

    move-object/from16 v53, v5

    invoke-direct/range {v50 .. v58}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8293
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v15

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v7, v5, v13

    const-string v7, "checkBox"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v18

    sget v41, Lorg/telegram/ui/ActionBar/Theme;->key_checkbox:I

    move-object v14, v4

    move-object/from16 v17, v5

    move/from16 v22, v41

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8294
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v51

    sget v52, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v8, v5, v13

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v54

    sget v42, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    move-object/from16 v50, v4

    move-object/from16 v53, v5

    move/from16 v58, v42

    invoke-direct/range {v50 .. v58}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8295
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v15

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v8, v5, v13

    const-string v8, "thumbImageView"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_files_folderIcon:I

    move-object v14, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8296
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v51

    sget v52, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v8, v5, v13

    const-string v8, "extTextView"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v54

    sget v58, Lorg/telegram/ui/ActionBar/Theme;->key_files_iconText:I

    move-object/from16 v50, v4

    move-object/from16 v53, v5

    invoke-direct/range {v50 .. v58}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8298
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v32

    new-array v5, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/LoadingCell;

    aput-object v8, v5, v13

    filled-new-array/range {v23 .. v23}, [Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    const/16 v38, 0x0

    move-object/from16 v31, v4

    move-object/from16 v34, v5

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8300
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v51

    sget v52, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/SharedAudioCell;

    aput-object v8, v5, v13

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v54

    move-object/from16 v50, v4

    move-object/from16 v53, v5

    move/from16 v58, v41

    invoke-direct/range {v50 .. v58}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8301
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v15

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/SharedAudioCell;

    aput-object v8, v5, v13

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v18

    move-object v14, v4

    move-object/from16 v17, v5

    move/from16 v22, v42

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8302
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v15

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/SharedAudioCell;

    aput-object v8, v5, v13

    sget-object v18, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_titleTextPaint:Landroid/text/TextPaint;

    move-object v14, v4

    move-object/from16 v17, v5

    move/from16 v21, v49

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8303
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v15

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/SharedAudioCell;

    aput-object v8, v5, v13

    sget-object v18, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    move-object v14, v4

    move-object/from16 v17, v5

    move/from16 v21, v6

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8305
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v51

    sget v52, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v6, v5, v13

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v54

    move-object/from16 v50, v4

    move-object/from16 v53, v5

    invoke-direct/range {v50 .. v58}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8306
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v15

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v6, v5, v13

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    move-object v14, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8307
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v15

    const/16 v16, 0x0

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v6, v5, v13

    const-string v6, "titleTextPaint"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v18

    move-object v14, v4

    move-object/from16 v17, v5

    move/from16 v22, v49

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8308
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v32

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v6, v5, v13

    const/16 v35, 0x0

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    move-object/from16 v31, v4

    move-object/from16 v34, v5

    invoke-direct/range {v31 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8309
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v15

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v6, v5, v13

    sget-object v18, Lorg/telegram/ui/ActionBar/Theme;->linkSelectionPaint:Landroid/graphics/Paint;

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkSelection:I

    move-object v14, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8310
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v32

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v6, v5, v13

    const-string v6, "letterDrawable"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v35

    const/16 v38, 0x0

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_linkPlaceholderText:I

    move-object/from16 v31, v4

    move-object/from16 v34, v5

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8311
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v15

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v7, v5, v13

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_linkPlaceholder:I

    move-object v14, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8313
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v23

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    or-int v24, v5, v6

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SharedMediaSectionCell;

    aput-object v6, v5, v13

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v22, v4

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8314
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v15

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SharedMediaSectionCell;

    aput-object v6, v5, v13

    filled-new-array/range {v30 .. v30}, [Ljava/lang/String;

    move-result-object v18

    move-object v14, v4

    move-object/from16 v17, v5

    move/from16 v22, v49

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8315
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v15

    const/16 v16, 0x0

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SharedMediaSectionCell;

    aput-object v6, v5, v13

    filled-new-array/range {v30 .. v30}, [Ljava/lang/String;

    move-result-object v18

    move-object v14, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8317
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v23

    const/16 v24, 0x0

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    aput-object v6, v5, v13

    const-string v14, "backgroundPaint"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v26

    const/16 v29, 0x0

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_photoPlaceholder:I

    move-object/from16 v22, v4

    move-object/from16 v25, v5

    move/from16 v30, v38

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8318
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v7, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    aput-object v4, v7, v13

    const/4 v8, 0x0

    move-object v4, v15

    move/from16 v11, v41

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8319
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v7, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    aput-object v4, v7, v13

    move-object v4, v15

    move/from16 v11, v42

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8321
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v31

    const/16 v32, 0x0

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ContextLinkCell;

    aput-object v6, v5, v13

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    move-object/from16 v30, v4

    move-object/from16 v33, v5

    invoke-direct/range {v30 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8322
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v7, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ContextLinkCell;

    aput-object v4, v7, v13

    move-object v4, v14

    move/from16 v11, v41

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8323
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v7, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ContextLinkCell;

    aput-object v4, v7, v13

    move-object v4, v14

    move/from16 v11, v42

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8325
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    new-array v4, v12, [Landroid/graphics/drawable/Drawable;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinnedHeaderShadowDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v13

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    move-object v15, v3

    move-object/from16 v20, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8327
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v4

    iget-object v15, v4, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object v14, v3

    move/from16 v21, v49

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8328
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v33, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v34, 0x0

    move-object/from16 v31, v3

    move-object/from16 v32, v4

    move/from16 v38, v40

    invoke-direct/range {v31 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    return-object v1
.end method

.method public hasInternet()Z
    .locals 2

    .line 1600
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected includeStories()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected invalidateBlur()V
    .locals 0

    return-void
.end method

.method public isActionModeShown()Z
    .locals 1

    .line 4756
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    return v0
.end method

.method protected isArchivedOnlyStoriesView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCalendarItemVisible()Z
    .locals 3

    .line 3961
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isCurrentTabFirst()Z
    .locals 2

    .line 4476
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

    .line 458
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

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

    .line 174
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

    .line 209
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isMembersMenuVisible:Z

    return v0
.end method

.method public isPinnedToTop()Z
    .locals 1

    .line 649
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isPinnedToTop:Z

    return v0
.end method

.method public isSearchItemVisible()Z
    .locals 4

    .line 3943
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x7

    if-ne v0, v3, :cond_1

    .line 3944
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;->canSearchMembers()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isMembersMenuVisible:Z

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 3946
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    .line 3947
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    .line 3948
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    .line 3949
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    .line 3950
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    .line 3951
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    .line 3952
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method protected isStoriesView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSwipeBackEnabled()Z
    .locals 1

    .line 641
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

.method public isTabZoomable(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

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

.method public onActionBarItemClick(Landroid/view/View;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 4157
    sget v3, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_MUSIC_PLAYLIST:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_5

    .line 4158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4159
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v5

    :goto_0
    if-ltz v3, :cond_2

    move v6, v4

    .line 4161
    :goto_1
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 4162
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v7, v7, v3

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    if-lez v7, :cond_0

    .line 4164
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4165
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v7, v7, v3

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4168
    :cond_1
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4170
    :cond_2
    iget v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    if-nez v3, :cond_3

    .line 4171
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMusicController()Lcom/iMe/fork/controller/MusicController;

    move-result-object v1

    iget-wide v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-virtual {v1, v3, v4, v2}, Lcom/iMe/fork/controller/MusicController;->addPlaylistMessage(JLjava/util/List;)V

    .line 4172
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMusicController()Lcom/iMe/fork/controller/MusicController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1, v2, v5}, Lcom/iMe/fork/controller/MusicController;->showAddToPlaylistUndoView(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    goto :goto_2

    .line 4173
    :cond_3
    iget v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    if-nez v2, :cond_4

    .line 4174
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMusicController()Lcom/iMe/fork/controller/MusicController;

    move-result-object v2

    iget-wide v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-virtual {v2, v5, v6, v1}, Lcom/iMe/fork/controller/MusicController;->removePlaylistMessage(JLjava/util/List;)V

    .line 4175
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMusicController()Lcom/iMe/fork/controller/MusicController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1, v2, v4}, Lcom/iMe/fork/controller/MusicController;->showAddToPlaylistUndoView(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 4177
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->closeActionMode()Z

    goto/16 :goto_9

    :cond_5
    const/16 v3, 0x65

    if-ne v2, v3, :cond_b

    .line 4181
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v4

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    sget v2, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v1, v2, :cond_8

    .line 4182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    if-ltz v5, :cond_7

    move v2, v4

    .line 4184
    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 4185
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v5

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 4187
    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 4189
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->closeActionMode()Z

    .line 4190
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMusicController()Lcom/iMe/fork/controller/MusicController;

    move-result-object v2

    iget-wide v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-virtual {v2, v3, v4, v1}, Lcom/iMe/fork/controller/MusicController;->removePlaylistMessage(JLjava/util/List;)V

    return-void

    .line 4197
    :cond_8
    iget-wide v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 4198
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

    .line 4199
    :cond_9
    iget-wide v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4200
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

    .line 4202
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

    .line 4204
    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v7, 0x0

    iget-wide v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    const/4 v10, 0x0

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    new-instance v15, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda14;

    invoke-direct {v15, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    const/16 v16, 0x0

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v17, v1

    invoke-static/range {v3 .. v17}, Lorg/telegram/ui/Components/AlertsCreator;->createDeleteMessagesAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$ChatFull;JLorg/telegram/messenger/MessageObject;[Landroid/util/SparseArray;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZILjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_9

    :cond_b
    const/16 v3, 0x64

    if-eq v2, v3, :cond_13

    .line 4210
    sget v3, Lcom/iMe/common/IdFabric$Menu;->MESSAGE_SAVE_CLOUD:I

    if-ne v2, v3, :cond_c

    goto/16 :goto_7

    :cond_c
    const/16 v1, 0x66

    if-ne v2, v1, :cond_1a

    .line 4322
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

    .line 4325
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v2, v1, v4

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v5, :cond_e

    move v5, v4

    :cond_e
    aget-object v1, v1, v5

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 4326
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4327
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    .line 4328
    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 4329
    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v3

    const-string v7, "enc_id"

    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_6

    .line 4330
    :cond_f
    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "user_id"

    .line 4331
    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_6

    .line 4333
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

    .line 4334
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v7, :cond_11

    const-string v7, "migrated_to"

    .line 4335
    invoke-virtual {v2, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4336
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:J

    neg-long v5, v5

    :cond_11
    neg-long v7, v5

    const-string v3, "chat_id"

    .line 4338
    invoke-virtual {v2, v3, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4340
    :goto_6
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    const-string v7, "message_id"

    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "need_remove_previous_same_chat_activity"

    .line 4341
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4342
    new-instance v3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v3, v2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 4343
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    iput v8, v3, Lorg/telegram/ui/ChatActivity;->highlightMessageId:I

    .line 4344
    iget v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    if-eqz v8, :cond_12

    .line 4345
    invoke-static {v5, v6, v8}, Lorg/telegram/messenger/MessagesStorage$TopicKey;->of(JI)Lorg/telegram/messenger/MessagesStorage$TopicKey;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->applyTopic(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagesStorage$TopicKey;)V

    .line 4346
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {v2, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4348
    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_9

    .line 4211
    :cond_13
    :goto_7
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_16

    .line 4212
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 4213
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->isChatNoForwards(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 4214
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fwdRestrictedHint:Lorg/telegram/ui/Components/HintView;

    if-eqz v2, :cond_15

    .line 4215
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

    .line 4216
    :cond_14
    sget v3, Lorg/telegram/messenger/R$string;->ForwardsRestrictedInfoGroup:I

    const-string v4, "ForwardsRestrictedInfoGroup"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 4215
    :goto_8
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    .line 4217
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fwdRestrictedHint:Lorg/telegram/ui/Components/HintView;

    invoke-virtual {v2, v1, v5}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    :cond_15
    return-void

    .line 4222
    :cond_16
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->hasNoforwardsMessage()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4223
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fwdRestrictedHint:Lorg/telegram/ui/Components/HintView;

    if-eqz v2, :cond_17

    .line 4224
    sget v3, Lorg/telegram/messenger/R$string;->ForwardsRestrictedInfoBot:I

    const-string v4, "ForwardsRestrictedInfoBot"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    .line 4225
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fwdRestrictedHint:Lorg/telegram/ui/Components/HintView;

    invoke-virtual {v2, v1, v5}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    :cond_17
    return-void

    .line 4230
    :cond_18
    sget v1, Lcom/iMe/common/IdFabric$Menu;->MESSAGE_SAVE_CLOUD:I

    if-ne v2, v1, :cond_19

    .line 4231
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloud()V

    return-void

    .line 4236
    :cond_19
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "onlySelect"

    .line 4237
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "canSelectTopics"

    .line 4238
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v2, 0x3

    const-string v3, "dialogsType"

    .line 4239
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4240
    new-instance v2, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 4241
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda24;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 4320
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1a
    :goto_9
    return-void
.end method

.method protected onActionModeSelectedUpdate(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 5358
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    .line 5359
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 5360
    aget-object v0, v0, p1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5362
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, p1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 5363
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$33;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$33;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 3996
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->playlistDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3997
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3998
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3999
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4000
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4001
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4002
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4003
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4004
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4006
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->storiesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v1, :cond_0

    .line 4007
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->destroy()V

    .line 4009
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->archivedStoriesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v1, :cond_1

    .line 4010
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->destroy()V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 4472
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

    .line 4420
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 4421
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
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    .line 4423
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 4426
    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 4428
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_5

    .line 4430
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 4431
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    goto :goto_2

    .line 4434
    :cond_2
    instance-of v4, v10, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    if-eqz v4, :cond_3

    const/4 v7, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 4435
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v10

    move v6, p1

    invoke-virtual/range {v4 .. v9}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 4436
    check-cast v10, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v10}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v4

    invoke-static {v10}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v5

    iget v5, v5, Lorg/telegram/ui/Components/BlurredRecyclerView;->topPadding:I

    iget v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->topPadding:I

    invoke-virtual {v4, v2, v5, v2, v6}, Lorg/telegram/ui/Components/BlurredRecyclerView;->setPadding(IIII)V

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v10

    move v6, p1

    move v8, p2

    .line 4438
    invoke-virtual/range {v4 .. v9}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method protected onMemberClick(Lorg/telegram/tgnet/TLRPC$ChatParticipant;ZLandroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 2

    const/4 v0, 0x1

    .line 5342
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrolling:Z

    .line 5343
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    if-eqz v0, :cond_0

    .line 5344
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5346
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v0, :cond_1

    .line 5347
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5349
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    if-eqz v0, :cond_2

    .line 5350
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    :cond_2
    const/4 v0, 0x0

    .line 5352
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 5353
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

.method protected onTabProgress(F)V
    .locals 0

    return-void
.end method

.method protected onTabScroll(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 4487
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->disableScrolling:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4490
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->checkTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->checkTabsAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    if-nez v0, :cond_1b

    if-eqz p1, :cond_2

    .line 4492
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 4493
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->velocityTracker:Landroid/view/VelocityTracker;

    .line 4495
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4497
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fwdRestrictedHint:Lorg/telegram/ui/Components/HintView;

    if-eqz v0, :cond_2

    .line 4498
    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintView;->hide()V

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 4501
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybeStartTracking:Z

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/16 v3, 0x30

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    .line 4502
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTrackingPointerId:I

    .line 4503
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybeStartTracking:Z

    .line 4504
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTrackingX:I

    .line 4505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTrackingY:I

    .line 4506
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_b

    :cond_3
    if-eqz p1, :cond_18

    .line 4507
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_18

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTrackingPointerId:I

    if-ne v2, v4, :cond_18

    .line 4508
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTrackingX:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 4509
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTrackingY:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 4510
    iget-boolean v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animatingForward:Z

    if-eqz v5, :cond_4

    if-gtz v2, :cond_5

    :cond_4
    if-nez v5, :cond_8

    if-gez v2, :cond_8

    :cond_5
    if-gez v2, :cond_6

    move v5, v0

    goto :goto_0

    :cond_6
    move v5, v1

    .line 4511
    :goto_0
    invoke-direct {p0, p1, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    move-result v5

    if-nez v5, :cond_8

    .line 4512
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybeStartTracking:Z

    .line 4513
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    .line 4514
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onTabScroll(Z)V

    .line 4515
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v1

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 4516
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v7, v5, v0

    iget-boolean v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animatingForward:Z

    if-eqz v8, :cond_7

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    goto :goto_1

    :cond_7
    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    neg-int v5, v5

    :goto_1
    int-to-float v5, v5

    invoke-virtual {v7, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 4517
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v7, v7, v0

    invoke-static {v7}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v7

    invoke-virtual {v5, v7, v6}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectTabWithId(IF)V

    .line 4518
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getTabProgress()F

    move-result v5

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->onTabProgress(F)V

    .line 4521
    :cond_8
    iget-boolean v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybeStartTracking:Z

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    if-nez v5, :cond_a

    const v3, 0x3e99999a    # 0.3f

    .line 4522
    invoke-static {v3, v0}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v3

    .line 4523
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v3, v5, v3

    if-ltz v3, :cond_1a

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v4, :cond_1a

    if-gez v2, :cond_9

    move v1, v0

    .line 4524
    :cond_9
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    goto/16 :goto_b

    .line 4526
    :cond_a
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    if-eqz p1, :cond_1a

    .line 4527
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p1, p1, v1

    int-to-float v4, v2

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 4528
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animatingForward:Z

    if-eqz p1, :cond_b

    .line 4529
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, p1, v0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v2

    int-to-float p1, p1

    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_2

    .line 4531
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, p1, v0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    sub-int p1, v2, p1

    int-to-float p1, p1

    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 4533
    :goto_2
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    .line 4534
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 4535
    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v2, v3, :cond_c

    .line 4536
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sub-float v3, v4, p1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_3

    :cond_c
    if-ne v2, v0, :cond_d

    .line 4538
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4541
    :cond_d
    :goto_3
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getPhotoVideoOptionsAlpha(F)F

    move-result v2

    .line 4542
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 4543
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    cmpl-float v2, v2, v6

    const/4 v5, 0x4

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isArchivedOnlyStoriesView()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_4

    :cond_e
    move v2, v1

    goto :goto_5

    :cond_f
    :goto_4
    move v2, v5

    :goto_5
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4547
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v2, v0

    const/4 v7, 0x7

    if-eqz v3, :cond_11

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-ne v2, v7, :cond_11

    .line 4549
    iget-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isMembersMenuVisible:Z

    if-eqz v2, :cond_10

    move v2, p1

    goto :goto_6

    :cond_10
    move v2, p1

    move v3, v6

    goto :goto_7

    :cond_11
    move v2, v6

    :goto_6
    move v3, v2

    .line 4553
    :goto_7
    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v8, v8, v1

    invoke-static {v8}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    if-ne v8, v7, :cond_12

    sub-float v2, v4, p1

    .line 4555
    iget-boolean v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isMembersMenuVisible:Z

    if-eqz v4, :cond_12

    move v3, v2

    .line 4559
    :cond_12
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersFilterItem:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 4560
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersFilterItem:Landroid/widget/ImageView;

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_14

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_8

    :cond_13
    move v2, v1

    goto :goto_9

    :cond_14
    :goto_8
    move v2, v5

    :goto_9
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4561
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 4562
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_15

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v3

    if-nez v3, :cond_16

    :cond_15
    move v1, v5

    :cond_16
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a

    .line 4565
    :cond_17
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4567
    :goto_a
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v2, v0

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectTabWithId(IF)V

    .line 4568
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getTabProgress()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onTabProgress(F)V

    .line 4569
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->onSelectedTabChanged()V

    goto :goto_b

    :cond_18
    if-eqz p1, :cond_19

    .line 4571
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTrackingPointerId:I

    if-ne v1, v2, :cond_1a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1a

    .line 4572
    :cond_19
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->stopScroll(Landroid/view/MotionEvent;)V

    .line 4574
    :cond_1a
    :goto_b
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    return p1

    :cond_1b
    return v1
.end method

.method public scrollToPage(I)V
    .locals 1

    .line 4580
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->disableScrolling:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4583
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->scrollTo(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 9

    .line 5376
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stories_pinned_available:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 5377
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_1

    .line 5378
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    iget-wide v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    cmp-long p1, v7, v5

    if-nez p1, :cond_1

    neg-long v3, v3

    .line 5379
    iput-wide v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    move p1, v1

    .line 5380
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length v4, v3

    if-ge p1, v4, :cond_1

    .line 5381
    aget-object v4, v3, p1

    iget-object v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_max_id:I

    aput v5, v4, v2

    .line 5382
    aget-object v3, v3, p1

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aput-boolean v1, v3, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 5385
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_4

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->stories_pinned_available:Z

    if-eq v0, p1, :cond_4

    .line 5386
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    if-eqz p1, :cond_3

    .line 5387
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isArchivedOnlyStoriesView()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    goto :goto_2

    :cond_2
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setInitialTabId(I)V

    .line 5389
    :cond_3
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateTabs(Z)V

    .line 5390
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->switchToCurrentSelectedMode(Z)V

    :cond_4
    return-void
.end method

.method public setChatUsers(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 5
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

    const/4 v0, 0x0

    move v1, v0

    .line 5404
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v3, v2

    const/4 v4, 0x7

    if-ge v1, v3, :cond_1

    .line 5405
    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 5406
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesController;->hasLoadingStories()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5411
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    if-nez v1, :cond_2

    .line 5412
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$4102(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;Lorg/telegram/tgnet/TLRPC$ChatFull;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 5413
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$4002(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_2
    const/4 p1, 0x1

    .line 5415
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateTabs(Z)V

    .line 5416
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length p2, p1

    if-ge v0, p2, :cond_4

    .line 5417
    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p1

    if-ne p1, v4, :cond_3

    .line 5418
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setCommonGroupsCount(I)V
    .locals 2

    .line 4148
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    if-nez v0, :cond_0

    .line 4149
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    const/4 v1, 0x6

    aput p1, v0, v1

    :cond_0
    const/4 p1, 0x1

    .line 4151
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateTabs(Z)V

    .line 4152
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->checkCurrentTabValid()V

    return-void
.end method

.method public setForwardRestrictedHint(Lorg/telegram/ui/Components/HintView;)V
    .locals 0

    .line 3080
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fwdRestrictedHint:Lorg/telegram/ui/Components/HintView;

    return-void
.end method

.method public setMembersMenuVisible(ZLcom/iMe/model/group/GroupMembersFilter;)V
    .locals 7

    .line 186
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isMembersMenuVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 189
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isMembersMenuVisible:Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    .line 191
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v4, Lcom/iMe/model/group/GroupMembersFilter;->BLOCKED:Lcom/iMe/model/group/GroupMembersFilter;

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

    .line 192
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    if-ne p2, v4, :cond_2

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :cond_2
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    :goto_1
    invoke-direct {v5, v6, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 193
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 195
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 196
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 197
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 199
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 200
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 201
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 203
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 204
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public setMergeDialogId(J)V
    .locals 0

    .line 5477
    iput-wide p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    return-void
.end method

.method public setNewMediaCounts([I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x6

    if-ge v1, v3, :cond_1

    .line 4027
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v4, v4, v1

    if-ltz v4, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 4032
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    invoke-static {p1, v0, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4033
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateTabs(Z)V

    if-nez v1, :cond_2

    .line 4034
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getCurrentTabId()I

    move-result p1

    if-ne p1, v3, :cond_2

    .line 4035
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->resetTab()V

    .line 4037
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->checkCurrentTabValid()V

    .line 4038
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget p1, p1, v0

    if-ltz p1, :cond_3

    .line 4039
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->loadFastScrollData(Z)V

    :cond_3
    return-void
.end method

.method public setOnLoadMoreMembersListener(Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->onLoadMoreMembersListener:Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;

    return-void
.end method

.method public setPadding(IIII)V
    .locals 2

    .line 4409
    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->topPadding:I

    const/4 p1, 0x0

    move p3, p1

    .line 4410
    :goto_0
    iget-object p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v0, p4

    if-ge p3, v0, :cond_0

    .line 4411
    aget-object p4, p4, p3

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->topPadding:I

    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->lastMeasuredTopPadding:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p4, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 4413
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result p4

    const/16 v0, 0x30

    if-eqz p4, :cond_1

    move p4, p1

    goto :goto_1

    :cond_1
    move p4, v0

    :goto_1
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    add-int/2addr p4, p2

    int-to-float p4, p4

    invoke-virtual {p3, p4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    int-to-float p2, p2

    .line 4414
    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->additionalFloatingTranslation:F

    .line 4415
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    neg-int p1, p1

    :cond_2
    int-to-float p1, p1

    iget p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->additionalFloatingTranslation:F

    add-float/2addr p1, p3

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method public setPinnedToTop(Z)V
    .locals 2

    .line 653
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isPinnedToTop:Z

    if-eq v0, p1, :cond_0

    .line 654
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isPinnedToTop:Z

    const/4 p1, 0x0

    .line 655
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 656
    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateFastScrollVisibility(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setStoriesFilter(ZZ)V
    .locals 1

    .line 3067
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->storiesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v0, :cond_0

    .line 3068
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->updateFilters(ZZ)V

    .line 3070
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->archivedStoriesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v0, :cond_1

    .line 3071
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->updateFilters(ZZ)V

    :cond_1
    return-void
.end method

.method public setUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;)V
    .locals 2

    .line 5395
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->stories_pinned_available:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5396
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    .line 5397
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateTabs(Z)V

    if-eqz p1, :cond_1

    .line 5398
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->stories_pinned_available:Z

    if-eq v0, p1, :cond_1

    const/16 p1, 0x8

    .line 5399
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollToPage(I)V

    :cond_1
    return-void
.end method

.method public setVisibleHeight(I)V
    .locals 3

    const/16 v0, 0x78

    .line 4741
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, 0x0

    .line 4742
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 4743
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, p1

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 4744
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4745
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$6200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object v2

    neg-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected showActionMode(Z)V
    .locals 7

    .line 4760
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 4763
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    .line 4764
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 4765
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 4768
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4770
    :cond_2
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeAnimation:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/animation/Animator;

    .line 4771
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

    .line 4772
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4773
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$31;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$31;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4790
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public showMediaCalendar(IZ)V
    .locals 9

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 3214
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->viewType:I

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x9

    const/16 v2, 0x8

    if-eqz p2, :cond_2

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_2

    .line 3217
    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesCount(I)I

    move-result v3

    if-gtz v3, :cond_2

    return-void

    .line 3220
    :cond_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3221
    iget-wide v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    const-string v6, "dialog_id"

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3222
    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    const-string v5, "topic_id"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x0

    if-eqz p2, :cond_6

    .line 3225
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->getMediaPage(I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 3227
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v5, v5, v4

    iget-object v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    const/4 v6, 0x0

    .line 3229
    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    if-ltz p2, :cond_6

    if-eqz v5, :cond_5

    move v7, v4

    .line 3232
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 3233
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    iget v8, v8, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->startOffset:I

    if-gt p2, v8, :cond_3

    .line 3234
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    move-object v6, p2

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-nez v6, :cond_5

    .line 3239
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    :cond_5
    if-eqz v6, :cond_6

    .line 3243
    iget p2, v6, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->date:I

    goto :goto_2

    :cond_6
    move p2, v4

    :goto_2
    const-string v5, "type"

    if-ne p1, v1, :cond_7

    const/4 p1, 0x3

    .line 3249
    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    :cond_7
    if-ne p1, v2, :cond_8

    const/4 p1, 0x2

    .line 3251
    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 3253
    :cond_8
    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3255
    :goto_3
    new-instance p1, Lorg/telegram/ui/CalendarActivity;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, v4

    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    invoke-direct {p1, v3, v0, p2}, Lorg/telegram/ui/CalendarActivity;-><init>(Landroid/os/Bundle;II)V

    .line 3256
    new-instance p2, Lorg/telegram/ui/Components/SharedMediaLayout$21;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$21;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/CalendarActivity;->setCallback(Lorg/telegram/ui/CalendarActivity$Callback;)V

    .line 3277
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public updateAdapters()V
    .locals 1

    .line 5426
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v0, :cond_0

    .line 5427
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5429
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->storiesSettingsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;

    if-eqz v0, :cond_1

    .line 5430
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5433
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    if-eqz v0, :cond_2

    .line 5434
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5436
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v0, :cond_3

    .line 5437
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5439
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v0, :cond_4

    .line 5440
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5442
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    if-eqz v0, :cond_5

    .line 5443
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    .line 5445
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v0, :cond_6

    .line 5446
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5448
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    if-eqz v0, :cond_7

    .line 5449
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5451
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->storiesAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    if-eqz v0, :cond_8

    .line 5452
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->notifyDataSetChanged()V

    :cond_8
    return-void
.end method

.method public updateFastScrollVisibility(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Z)V
    .locals 11

    .line 751
    iget-boolean v0, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollEnabled:Z

    const/4 v1, 0x1

    .line 773
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 751
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isPinnedToTop:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    .line 752
    :goto_0
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v4

    .line 753
    iget-object v5, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_1

    .line 754
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 755
    iget-object v5, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-nez p2, :cond_4

    .line 758
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    .line 759
    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v6

    .line 760
    :goto_2
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 761
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 762
    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleX(F)V

    .line 763
    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_3

    :cond_4
    const-wide/16 v7, 0x96

    const/4 p2, 0x0

    const/4 v9, 0x2

    if-eqz v0, :cond_6

    .line 764
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_6

    .line 765
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 766
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    .line 767
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 768
    invoke-virtual {v4, p2}, Landroid/view/View;->setAlpha(F)V

    .line 770
    :cond_5
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v9, [F

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v6

    aput v6, v0, v3

    aput v5, v0, v1

    invoke-static {v4, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 771
    iput-object p2, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollAnimator:Landroid/animation/ObjectAnimator;

    .line 772
    invoke-virtual {p2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 773
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    if-nez v0, :cond_7

    .line 774
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 776
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v9, [F

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v5

    aput v5, v2, v3

    aput p2, v2, v1

    invoke-static {v4, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 777
    new-instance v0, Lorg/telegram/ui/Components/HideViewAfterAnimation;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/HideViewAfterAnimation;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 778
    iput-object p2, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollAnimator:Landroid/animation/ObjectAnimator;

    .line 779
    invoke-virtual {p2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 780
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 782
    invoke-virtual {v4, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public zoomIn()Ljava/lang/Boolean;
    .locals 6

    .line 8346
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 8349
    :cond_0
    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->changeColumnsTab:I

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    .line 8351
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:[I

    aget v2, v2, v0

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->getNextMediaColumnsCount(IIZ)I

    move-result v2

    .line 8352
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaZoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v4, :cond_3

    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->getNextMediaColumnsCount(IIZ)I

    move-result v4

    if-ne v2, v4, :cond_3

    .line 8353
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaZoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 8354
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaZoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 8356
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:[I

    aget v4, v4, v0

    if-eq v4, v2, :cond_7

    .line 8357
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaZoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 8358
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaZoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 8359
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaZoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_4
    if-nez v0, :cond_5

    .line 8362
    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->setMediaColumnsCount(I)V

    goto :goto_2

    .line 8363
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesCount(I)I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_6

    .line 8364
    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->setStoriesColumnsCount(I)V

    .line 8366
    :cond_6
    :goto_2
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->animateToMediaColumnsCount(I)V

    .line 8368
    :cond_7
    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->getNextMediaColumnsCount(IIZ)I

    move-result v0

    if-eq v2, v0, :cond_8

    move v1, v3

    :cond_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_9
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public zoomOut()Ljava/lang/Boolean;
    .locals 6

    .line 8372
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->allowStoriesSingleColumn:Z

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 8375
    :cond_0
    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->changeColumnsTab:I

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    .line 8377
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:[I

    aget v2, v2, v0

    invoke-virtual {p0, v0, v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getNextMediaColumnsCount(IIZ)I

    move-result v2

    .line 8378
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaZoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v4, :cond_3

    invoke-virtual {p0, v0, v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getNextMediaColumnsCount(IIZ)I

    move-result v4

    if-ne v2, v4, :cond_3

    .line 8379
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaZoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 8380
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaZoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 8382
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:[I

    aget v4, v4, v0

    if-eq v4, v2, :cond_7

    .line 8383
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaZoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 8384
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaZoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 8385
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaZoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_4
    if-nez v0, :cond_5

    .line 8388
    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->setMediaColumnsCount(I)V

    goto :goto_2

    .line 8389
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesCount(I)I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_6

    .line 8390
    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->setStoriesColumnsCount(I)V

    .line 8392
    :cond_6
    :goto_2
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->animateToMediaColumnsCount(I)V

    .line 8394
    :cond_7
    invoke-virtual {p0, v0, v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getNextMediaColumnsCount(IIZ)I

    move-result v0

    if-eq v2, v0, :cond_8

    move v1, v3

    :cond_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_9
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method
