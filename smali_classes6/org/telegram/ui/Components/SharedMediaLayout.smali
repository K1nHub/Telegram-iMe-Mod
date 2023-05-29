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

.method public static synthetic $r8$lambda$wNRAvy55Ltc8-a8VK7jqO6pJz8s(Lorg/telegram/ui/Components/SharedMediaLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->lambda$getThemeDescriptions$23(I)V

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

    .line 238
    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/ui/Components/SharedMediaLayout;->supportedFastScrollTypes:[I

    .line 621
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
    .locals 32
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

    .line 1350
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 142
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlist:Ljava/util/LinkedHashMap;

    .line 269
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->rect:Landroid/graphics/Rect;

    const/4 v5, 0x2

    new-array v3, v5, [Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    .line 564
    iput-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    .line 577
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cellCache:Ljava/util/ArrayList;

    .line 578
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cache:Ljava/util/ArrayList;

    .line 579
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioCellCache:Ljava/util/ArrayList;

    .line 580
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioCache:Ljava/util/ArrayList;

    .line 585
    new-instance v3, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda12;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hideFloatingDateRunnable:Ljava/lang/Runnable;

    .line 586
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    .line 594
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->backgroundPaint:Landroid/graphics/Paint;

    new-array v3, v5, [Landroid/util/SparseArray;

    .line 602
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

    .line 615
    iput v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:I

    .line 618
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingSortedCells:Ljava/util/ArrayList;

    .line 1043
    new-instance v8, Lorg/telegram/ui/Components/SharedMediaLayout$1;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    const/4 v13, 0x6

    new-array v8, v13, [Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    .line 1327
    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    .line 2932
    new-instance v8, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v8}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 4554
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->messageAlphaEnter:Landroid/util/SparseArray;

    .line 5401
    new-instance v8, Lorg/telegram/ui/Components/SharedMediaLayout$31;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$31;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedLinkCellDelegate:Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;

    .line 1352
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v8

    const-wide/16 v18, 0x0

    if-eqz v8, :cond_1

    .line 1353
    invoke-virtual/range {p9 .. p9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    neg-long v9, v1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    .line 1354
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
    invoke-virtual/range {p9 .. p9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMusicController()Lcom/iMe/fork/controller/MusicController;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Lcom/iMe/fork/controller/MusicController;->getPlaylistForDialog(J)Ljava/util/ArrayList;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object v8, v9

    move-wide/from16 v9, p2

    move/from16 v23, v13

    move-object/from16 v13, v16

    move v4, v14

    move/from16 v14, v17

    move v3, v15

    move/from16 v15, v20

    move/from16 v16, v21

    move/from16 v17, v22

    invoke-virtual/range {v8 .. v17}, Lorg/telegram/messenger/MediaDataController;->loadPinnedMessages(JJLjava/util/ArrayList;ZZZZ)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1356
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    .line 1357
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlist:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move/from16 v23, v13

    move v4, v14

    move v3, v15

    :cond_2
    move/from16 v8, p11

    .line 1362
    iput v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->viewType:I

    move-object/from16 v8, p12

    .line 1363
    iput-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1365
    new-instance v9, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v9, v7}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    .line 1366
    invoke-virtual {v9, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    move-object/from16 v9, p4

    .line 1368
    iput-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    move-object/from16 v10, p10

    .line 1369
    iput-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    .line 1370
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getLastMediaCount()[I

    move-result-object v10

    .line 1371
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-static {v11}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->access$1000(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)I

    move-result v11

    iput v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    const/4 v12, 0x7

    new-array v13, v12, [I

    .line 1372
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
    move v10, v3

    :goto_2
    aput v10, v13, v23

    iput-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    const/4 v10, -0x1

    if-eqz p8, :cond_4

    if-nez v11, :cond_4

    .line 1374
    iput v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->initialTab:I

    goto :goto_5

    :cond_4
    move v11, v3

    .line 1376
    :goto_3
    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    array-length v13, v12

    if-ge v11, v13, :cond_7

    .line 1377
    aget v13, v12, v11

    if-eq v13, v10, :cond_6

    aget v12, v12, v11

    if-lez v12, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1378
    :cond_6
    :goto_4
    iput v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->initialTab:I

    .line 1383
    :cond_7
    :goto_5
    iput-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v6, :cond_8

    .line 1385
    iget-wide v11, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:J

    neg-long v11, v11

    iput-wide v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    .line 1387
    :cond_8
    iput-wide v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    move v1, v3

    .line 1389
    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length v11, v2

    if-ge v1, v11, :cond_b

    .line 1390
    new-instance v11, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-direct {v11}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;-><init>()V

    aput-object v11, v2, v1

    .line 1391
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

    .line 1392
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->fillMediaData(I)Z

    .line 1393
    iget-wide v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    cmp-long v2, v11, v18

    if-eqz v2, :cond_a

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_a

    .line 1394
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v12, v11, v1

    iget-object v12, v12, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_max_id:I

    aput v2, v12, v4

    .line 1395
    aget-object v2, v11, v1

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aput-boolean v3, v2, v4

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    move-object/from16 v11, p9

    .line 1399
    iput-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1400
    invoke-virtual/range {p9 .. p9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 1401
    sget v1, Lorg/telegram/messenger/SharedConfig;->mediaColumnsCount:I

    iput v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:I

    .line 1403
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->playlistDidChanged:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1404
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoad:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1405
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1406
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1407
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1408
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1409
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1410
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    move v1, v3

    :goto_8
    const/4 v12, 0x0

    const/16 v2, 0xa

    if-ge v1, v2, :cond_e

    .line 1414
    iget v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->initialTab:I

    if-ne v2, v15, :cond_d

    .line 1415
    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$2;

    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v13

    if-eqz v13, :cond_c

    sget v13, Lcom/iMe/common/IdFabric$CustomType;->SHARED_AUDIO_CELL_MUSIC:I

    goto :goto_9

    :cond_c
    move v13, v3

    :goto_9
    invoke-direct {v2, v0, v7, v13, v12}, Lorg/telegram/ui/Components/SharedMediaLayout$2;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1428
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/SharedAudioCell;->initStreamingIcons()V

    .line 1429
    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioCellCache:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1433
    :cond_e
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 1434
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->maximumVelocity:I

    .line 1436
    iput-boolean v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searching:Z

    .line 1437
    iput-boolean v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchWas:Z

    .line 1439
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->photos_header_shadow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinnedHeaderShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 1440
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-direct {v0, v13}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v13

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v13, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1442
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    if-eqz v1, :cond_f

    .line 1443
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getCurrentTabId()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->initialTab:I

    .line 1445
    :cond_f
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->createScrollingTextTabStrip(Landroid/content/Context;)Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    move v1, v4

    :goto_a
    if-ltz v1, :cond_10

    .line 1448
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 1450
    :cond_10
    iput v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    .line 1451
    iput v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    iput v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    .line 1452
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1454
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 1455
    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$3;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$3;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1465
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

    .line 1547
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1548
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->Search:I

    const-string v5, "Search"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 1549
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1550
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1553
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$5;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$5;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersFilterItem:Landroid/widget/ImageView;

    const/16 v2, 0xa

    .line 1565
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1566
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersFilterItem:Landroid/widget/ImageView;

    invoke-virtual {v1, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1567
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersFilterItem:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1568
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_members:I

    invoke-static {v7, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1569
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1570
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersFilterItem:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1571
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersFilterItem:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1572
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

    .line 1573
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    const/16 v2, 0xa

    .line 1574
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1575
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    invoke-virtual {v1, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1576
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1577
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1578
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    const/16 v14, 0x30

    const/16 v5, 0x38

    const/16 v12, 0x55

    invoke-static {v14, v5, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v1, v2, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1580
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    .line 1581
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v10, "AccDescrMoreOptions"

    invoke-static {v10, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1582
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    const/16 v2, 0xa

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1583
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-virtual {v1, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1585
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-static {v7, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1586
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v15

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v15, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1587
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1588
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1589
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-static {v14, v5, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1590
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$6;

    invoke-direct {v2, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$6;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1736
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    .line 1737
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1738
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_player_time:I

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1739
    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 1740
    iput v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    .line 1743
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v1, :cond_11

    .line 1744
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    goto :goto_b

    :cond_11
    const/4 v1, 0x0

    .line 1746
    :goto_b
    new-instance v2, Lorg/telegram/ui/Components/BlurredLinearLayout;

    invoke-direct {v2, v7, v1}, Lorg/telegram/ui/Components/BlurredLinearLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    .line 1747
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1748
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1749
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1750
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1752
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->closeButton:Landroid/widget/ImageView;

    .line 1753
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1754
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->closeButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v2, v4}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    iput-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1755
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    .line 1756
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->closeButton:Landroid/widget/ImageView;

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-direct {v0, v15}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v2

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1757
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->closeButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->Close:I

    const-string v5, "Close"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1758
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->closeButton:Landroid/widget/ImageView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x36

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1759
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1760
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->closeButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1762
    new-instance v1, Lorg/telegram/ui/Components/NumberTextView;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v2, 0x12

    .line 1763
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 1764
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1765
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 1766
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v25, 0x0

    const/16 v26, -0x1

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x12

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1767
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1770
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1771
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v20

    const/16 v21, 0x0

    move-object v1, v5

    move-object/from16 v2, p1

    const/4 v12, 0x0

    move-object v14, v5

    move/from16 v5, v20

    move/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZ)V

    iput-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1772
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_tone_add:I

    invoke-virtual {v14, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 1773
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setDuplicateParentStateEnabled(Z)V

    .line 1774
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1775
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x36

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/4 v4, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1776
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_12
    const/4 v12, 0x0

    .line 1779
    :goto_c
    iget-wide v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1780
    new-instance v14, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    invoke-direct {v0, v15}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v4

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v5

    const/4 v6, 0x0

    move-object v1, v14

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZ)V

    iput-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1781
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_message:I

    invoke-virtual {v14, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 1782
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrGoToMessage:I

    const-string v3, "AccDescrGoToMessage"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1783
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setDuplicateParentStateEnabled(Z)V

    .line 1784
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x36

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/4 v4, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1785
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1786
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1789
    new-instance v14, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    invoke-direct {v0, v15}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v4

    invoke-direct {v0, v13}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v5

    move-object v1, v14

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZ)V

    iput-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1790
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_forward_cloud:I

    invoke-virtual {v14, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 1791
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->chat_message_popup_option_forward_cloud:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1792
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setDuplicateParentStateEnabled(Z)V

    .line 1793
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1794
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x36

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1795
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1797
    new-instance v13, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    invoke-direct {v0, v15}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v4

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v5

    move-object v1, v13

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZ)V

    iput-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1798
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_forward:I

    invoke-virtual {v13, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 1799
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->Forward:I

    const-string v3, "Forward"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1800
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setDuplicateParentStateEnabled(Z)V

    .line 1801
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x36

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/4 v4, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1802
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1803
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1805
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateForwardItem()V

    .line 1807
    :cond_13
    new-instance v13, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    invoke-direct {v0, v15}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v4

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v5

    const/4 v6, 0x0

    move-object v1, v13

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZ)V

    iput-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1808
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v13, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 1809
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v3, "Delete"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1810
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setDuplicateParentStateEnabled(Z)V

    .line 1811
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x36

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1812
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1813
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1816
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1817
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    sget v2, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    invoke-direct {v1, v0, v7, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    .line 1818
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-direct {v1, v0, v7, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    .line 1821
    :cond_14
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$7;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$7;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    .line 1831
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingPhotoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    .line 1832
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v7, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    .line 1833
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    const/4 v3, 0x2

    invoke-direct {v1, v0, v7, v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    .line 1834
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    const/4 v4, 0x4

    invoke-direct {v1, v0, v7, v4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    .line 1835
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    .line 1836
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-direct {v1, v0, v7, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    .line 1837
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-direct {v1, v0, v7, v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    .line 1838
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    const/4 v4, 0x3

    invoke-direct {v1, v0, v7, v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    .line 1839
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    .line 1840
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    .line 1841
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    .line 1842
    iget v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    if-nez v4, :cond_16

    move-object/from16 v4, p6

    .line 1843
    invoke-static {v1, v4}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3602(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1844
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    if-eqz p8, :cond_15

    move-object/from16 v4, p7

    goto :goto_d

    :cond_15
    const/4 v4, 0x0

    :goto_d
    invoke-static {v1, v4}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3702(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;Lorg/telegram/tgnet/TLRPC$ChatFull;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1846
    :cond_16
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    .line 1848
    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    move v4, v12

    move v15, v4

    const/4 v1, -0x1

    .line 1853
    :goto_e
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v6, v5

    if-ge v15, v6, :cond_1b

    if-nez v15, :cond_18

    .line 1855
    aget-object v6, v5, v15

    if-eqz v6, :cond_18

    aget-object v5, v5, v15

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 1856
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v15

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 1857
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v15

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v5

    sub-int/2addr v5, v2

    if-eq v1, v5, :cond_17

    .line 1858
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v15

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz v5, :cond_17

    .line 1860
    iget-object v4, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_f

    :cond_17
    const/4 v1, -0x1

    .line 1869
    :cond_18
    :goto_f
    new-instance v5, Lorg/telegram/ui/Components/SharedMediaLayout$8;

    invoke-direct {v5, v0, v7}, Lorg/telegram/ui/Components/SharedMediaLayout$8;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x33

    const/16 v21, 0x0

    const/16 v22, 0x30

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 1922
    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1923
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aput-object v5, v6, v15

    .line 1925
    aget-object v6, v6, v15

    new-instance v9, Lorg/telegram/ui/Components/SharedMediaLayout$9;

    const/16 v10, 0x64

    invoke-direct {v9, v0, v7, v10, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$9;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;ILorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-static {v6, v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$202(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/ExtendedGridLayoutManager;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v6

    .line 1990
    new-instance v9, Lorg/telegram/ui/Components/SharedMediaLayout$10;

    invoke-direct {v9, v0, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$10;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-virtual {v6, v9}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 2008
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v9, v15

    new-instance v10, Lorg/telegram/ui/Components/SharedMediaLayout$11;

    invoke-direct {v10, v0, v7, v5, v6}, Lorg/telegram/ui/Components/SharedMediaLayout$11;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/ExtendedGridLayoutManager;)V

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$102(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/BlurredRecyclerView;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    .line 2312
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v9, v15

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v9

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollEnabled(I)V

    .line 2313
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v9, v15

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollingTouchSlop(I)V

    .line 2314
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v9, v15

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setPinnedSectionOffsetY(I)V

    .line 2315
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v9, v15

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v9, v12, v10, v12, v12}, Lorg/telegram/ui/Components/BlurredRecyclerView;->setPadding(IIII)V

    .line 2316
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v9, v15

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 2317
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v9, v15

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 2318
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v9, v15

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v9

    invoke-virtual {v9, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setSectionsType(I)V

    .line 2319
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v9, v15

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2320
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v13, v9, v15

    aget-object v9, v9, v15

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v9

    const/4 v14, -0x1

    invoke-static {v14, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v13, v9, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2321
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    new-instance v9, Lorg/telegram/ui/Components/BlurredRecyclerView;

    invoke-direct {v9, v7}, Lorg/telegram/ui/Components/BlurredRecyclerView;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3402(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/BlurredRecyclerView;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    .line 2322
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v9, v15

    new-instance v13, Lorg/telegram/ui/Components/SharedMediaLayout$12;

    const/4 v14, 0x3

    invoke-direct {v13, v0, v7, v14}, Lorg/telegram/ui/Components/SharedMediaLayout$12;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V

    invoke-static {v9, v13}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4902(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Landroidx/recyclerview/widget/GridLayoutManager;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2337
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v3, v15

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    const/4 v13, -0x1

    invoke-static {v13, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2338
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2341
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    new-instance v10, Lorg/telegram/ui/Components/SharedMediaLayout$13;

    invoke-direct {v10, v0, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$13;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-virtual {v3, v10}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 2362
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    new-instance v10, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda21;

    invoke-direct {v10, v0, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 2422
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    new-instance v10, Lorg/telegram/ui/Components/SharedMediaLayout$14;

    invoke-direct {v10, v0, v5, v6}, Lorg/telegram/ui/Components/SharedMediaLayout$14;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/ExtendedGridLayoutManager;)V

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 2444
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    new-instance v10, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda22;

    invoke-direct {v10, v0, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    if-nez v15, :cond_19

    const/4 v3, -0x1

    if-eq v1, v3, :cond_19

    .line 2494
    invoke-virtual {v6, v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2497
    :cond_19
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    .line 2499
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v15

    new-instance v10, Lorg/telegram/ui/Components/SharedMediaLayout$15;

    invoke-direct {v10, v0, v7, v3}, Lorg/telegram/ui/Components/SharedMediaLayout$15;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-static {v6, v10}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$502(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/ClippingImageView;)Lorg/telegram/ui/Components/ClippingImageView;

    .line 2506
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2507
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

    move-result-object v13

    invoke-virtual {v3, v6, v13}, Lorg/telegram/ui/Components/RecyclerListView;->addOverlayView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 2509
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    new-instance v6, Lorg/telegram/ui/Components/SharedMediaLayout$16;

    invoke-direct {v6, v0, v7, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$16;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-static {v3, v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5202(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/FlickerLoadingView;)Lorg/telegram/ui/Components/FlickerLoadingView;

    .line 2545
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object v3

    invoke-virtual {v3, v12}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    if-eqz v15, :cond_1a

    .line 2547
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2550
    :cond_1a
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v3, v15

    new-instance v6, Lorg/telegram/ui/Components/StickerEmptyView;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object v3

    invoke-direct {v6, v7, v3, v2}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5502(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/StickerEmptyView;)Lorg/telegram/ui/Components/StickerEmptyView;

    .line 2551
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v3

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 2552
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->setAnimateLayoutChange(Z)V

    .line 2553
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v3, v15

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v3

    const/4 v6, -0x1

    invoke-static {v6, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v3, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2554
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v3

    sget-object v5, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda8;->INSTANCE:Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda8;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2555
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v3

    invoke-virtual {v3, v2, v12}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 2556
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

    .line 2557
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

    .line 2558
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

    .line 2560
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v15

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 2561
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v15

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    invoke-virtual {v3, v2, v12}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 2563
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

    .line 2566
    :cond_1b
    new-instance v1, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    .line 2567
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v1, v3, v12, v12}, Lorg/telegram/ui/Cells/ChatActionCell;->setCustomDate(IZZ)V

    .line 2568
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2569
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaTimeBackground:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaTimeText:I

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Cells/ChatActionCell;->setOverrideColor(II)V

    .line 2570
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/16 v3, 0x30

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 2571
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x31

    const/4 v6, 0x0

    const/16 v9, 0x34

    const/4 v10, 0x0

    const/4 v13, 0x0

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v9

    move/from16 p7, v10

    move/from16 p8, v13

    invoke-static/range {p2 .. p8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2573
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

    .line 2574
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    new-instance v3, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda20;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/FragmentContextView;->setDelegate(Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;)V

    .line 2580
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    const/16 v3, 0x33

    const/16 v4, 0x30

    const/4 v5, -0x1

    invoke-static {v5, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2581
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    invoke-static {v5, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2583
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->shadowLine:Landroid/view/View;

    .line 2584
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2585
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2586
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2587
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->shadowLine:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2589
    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateTabs(Z)V

    .line 2590
    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/SharedMediaLayout;->switchToCurrentSelectedMode(Z)V

    .line 2591
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v1, v1, v12

    if-ltz v1, :cond_1c

    .line 2592
    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/SharedMediaLayout;->loadFastScrollData(Z)V

    :cond_1c
    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/SharedMediaLayout;)J
    .locals 2

    .line 132
    iget-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    return-wide v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searching:Z

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 132
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searching:Z

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/widget/ImageView;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersFilterItem:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 132
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchWas:Z

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->ignoreSearchCollapse:Z

    return p0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 132
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->ignoreSearchCollapse:Z

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->switchToCurrentSelectedMode(Z)V

    return-void
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    return p0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 132
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    return p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)I
    .locals 0

    .line 132
    iget p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:I

    return p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/SharedMediaLayout;I)I
    .locals 0

    .line 132
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:I

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/SharedMediaLayout;I)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->animateToMediaColumnsCount(I)V

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/SharedMediaLayout;)J
    .locals 2

    .line 132
    iget-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;Z)V
    .locals 0

    .line 132
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->showFastScrollHint(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;Z)V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->showMediaCalendar(Z)V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->changeTypeAnimation:Z

    return p0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 132
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->changeTypeAnimation:Z

    return p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->changeMediaFilterType()V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/SharedMediaLayout;I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getMediaPage(I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingPhotoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimationInProgress:Z

    return p0
.end method

.method static synthetic access$3802(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 132
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/SharedMediaLayout;)I
    .locals 0

    .line 132
    iget p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    return p0
.end method

.method static synthetic access$4002(Lorg/telegram/ui/Components/SharedMediaLayout;I)I
    .locals 0

    .line 132
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    return p1
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isMembersMenuVisible:Z

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/widget/ImageView;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout;->checkLoadMoreScroll(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    return-void
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)I
    .locals 0

    .line 132
    iget p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animateToColumnsCount:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingSortedCells:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)F
    .locals 0

    .line 132
    iget p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsProgress:F

    return p0
.end method

.method static synthetic access$4702(Lorg/telegram/ui/Components/SharedMediaLayout;F)F
    .locals 0

    .line 132
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsProgress:F

    return p1
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/view/View;)I
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getMessageId(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrolling:Z

    return p0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 132
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrolling:Z

    return p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->showFloatingDateView()V

    return-void
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/SharedMediaLayout;I)I
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/graphics/Paint;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/SharedMediaLayout;IIIZ)V
    .locals 0

    .line 132
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SharedMediaLayout;->jumpToDate(IIIZ)V

    return-void
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->saveScrollPosition()V

    return-void
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->hideFloatingDateView(Z)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animatingForward:Z

    return p0
.end method

.method static synthetic access$6002(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 132
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animatingForward:Z

    return p1
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollToTop()V

    return-void
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->startStopVisibleGifs()V

    return-void
.end method

.method static synthetic access$6302(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 132
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$6802(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 132
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->backAnimation:Z

    return p0
.end method

.method static synthetic access$7002(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 132
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybeStartTracking:Z

    return p1
.end method

.method static synthetic access$7102(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z
    .locals 0

    .line 132
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    return p1
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$7302(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 132
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    return-object p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    return-object p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    return-object p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Components/SharedMediaLayout;I)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->fixLayoutInternal(I)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/FragmentContextView;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    return-object p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method static synthetic access$8100(Lorg/telegram/ui/Components/SharedMediaLayout;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    return p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/Components/SharedMediaLayout;Ljava/lang/String;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    return-object p0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlist:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioCellCache:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioCache:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    return-object p0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/Components/SharedMediaLayout;ILorg/telegram/ui/Components/RecyclerListView;Z)V
    .locals 0

    .line 132
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout;->findPeriodAndJumpToDate(ILorg/telegram/ui/Components/RecyclerListView;Z)V

    return-void
.end method

.method static synthetic access$9200(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/RecyclerListView;ILandroid/util/SparseBooleanArray;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout;->animateItemsEnter(Lorg/telegram/ui/Components/RecyclerListView;ILandroid/util/SparseBooleanArray;)V

    return-void
.end method

.method static synthetic access$9300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object p0
.end method

.method private animateItemsEnter(Lorg/telegram/ui/Components/RecyclerListView;ILandroid/util/SparseBooleanArray;)V
    .locals 9

    .line 4557
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v7, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4560
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4561
    instance-of v3, v1, Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v3, :cond_0

    move-object v7, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_2

    .line 4567
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4569
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
    .locals 4

    const/4 v0, 0x0

    .line 2935
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getMediaPage(I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    const/4 v2, -0x1

    .line 2936
    iput v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    if-eqz v1, :cond_0

    .line 2939
    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 2940
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animateToColumnsCount:I

    .line 2941
    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2942
    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingPhotoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2943
    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4900(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 2944
    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    const/4 v2, 0x1

    .line 2946
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    .line 2947
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v3, v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setListFrozen(Z)V

    const/4 v0, 0x0

    .line 2948
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsProgress:F

    .line 2949
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->saveScrollPosition()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2950
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2952
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v2}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 2953
    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$21;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$21;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2960
    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$22;

    invoke-direct {v2, p0, p1, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$22;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;ILorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2978
    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x64

    .line 2979
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v1, 0x15e

    .line 2980
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2981
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

    .line 2666
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getMediaPage(I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2667
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    .line 2670
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

    .line 2672
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v3, :cond_0

    .line 2675
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->changeTypeAnimation:Z

    .line 2676
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2677
    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 2678
    new-instance v4, Landroid/view/View;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2679
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2680
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2682
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

    .line 2691
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2692
    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2693
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

    .line 2697
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getLastMediaCount()[I

    move-result-object v1

    .line 2698
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getSharedMediaData()[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    .line 2699
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v5, v4, v0

    iget v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-nez v5, :cond_1

    .line 2700
    aget-object v4, v4, v0

    aget v1, v1, v0

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setTotalCount(I)V

    goto :goto_1

    .line 2701
    :cond_1
    aget-object v5, v4, v0

    iget v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v5, v2, :cond_2

    .line 2702
    aget-object v4, v4, v0

    const/4 v5, 0x6

    aget v1, v1, v5

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setTotalCount(I)V

    goto :goto_1

    .line 2704
    :cond_2
    aget-object v4, v4, v0

    const/4 v5, 0x7

    aget v1, v1, v5

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setTotalCount(I)V

    .line 2706
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v1, v1, v0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollDataLoaded:Z

    .line 2707
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

    .line 2708
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->loadFastScrollData(Z)V

    .line 2709
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;->updateSelectedMediaTabText()V

    .line 2710
    iget-wide v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    move v4, v0

    .line 2711
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 2712
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 2713
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v7, v6, v0

    iget v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-nez v7, :cond_4

    .line 2714
    aget-object v6, v6, v0

    invoke-virtual {v6, v5, v0, v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;IZZ)Z

    goto :goto_4

    .line 2715
    :cond_4
    aget-object v6, v6, v0

    iget v6, v6, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v6, v2, :cond_5

    .line 2716
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2717
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v6, v6, v0

    invoke-virtual {v6, v5, v0, v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;IZZ)Z

    goto :goto_4

    .line 2720
    :cond_5
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v6

    if-nez v6, :cond_6

    .line 2721
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

    .line 3402
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getCurrentTabId()I

    move-result v0

    .line 3403
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3404
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getFirstTabId()I

    move-result v0

    .line 3405
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setInitialTabId(I)V

    .line 3406
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$002(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;I)I

    .line 3407
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->switchToCurrentSelectedMode(Z)V

    :cond_0
    return-void
.end method

.method private checkLoadMoreScroll(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 3202
    iget-boolean v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    if-nez v3, :cond_1e

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->jumpToRunnable:Ljava/lang/Runnable;

    if-nez v3, :cond_1e

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    sget v4, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v3, v4, :cond_0

    goto/16 :goto_5

    .line 3205
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3206
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

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    return-void

    .line 3209
    :cond_1
    iput-wide v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->lastCheckScrollTime:J

    .line 3210
    iget-boolean v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searching:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchWas:Z

    if-eqz v3, :cond_2

    return-void

    .line 3213
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_3

    move v7, v5

    goto :goto_0

    .line 3214
    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v7, v6

    .line 3215
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v8

    .line 3216
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

    .line 3217
    :cond_4
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    .line 3218
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

    .line 3219
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

    .line 3222
    iget v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:I

    goto :goto_1

    :cond_5
    move v13, v6

    .line 3224
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

    mul-float/2addr v14, v13

    const/high16 v13, 0x3fc00000    # 1.5f

    mul-float/2addr v14, v13

    float-to-int v13, v14

    if-ge v13, v10, :cond_6

    move v13, v10

    .line 3228
    :cond_6
    iget-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v14, v14, v8

    iget-object v14, v14, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    iget v14, v14, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->startOffset:I

    if-ge v13, v14, :cond_7

    .line 3229
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

    .line 3231
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

    .line 3232
    :cond_9
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda14;

    invoke-direct {v1, v0, v8, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;ILorg/telegram/ui/Components/RecyclerListView;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->jumpToRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_a
    move v8, v9

    .line 3241
    :cond_b
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v9

    const/4 v13, 0x7

    if-ne v9, v13, :cond_c

    add-int/2addr v3, v7

    add-int/lit8 v8, v8, -0x8

    if-lt v3, v8, :cond_1e

    .line 3245
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->onLoadMoreMembersListener:Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;

    if-eqz v1, :cond_1e

    .line 3246
    invoke-interface {v1}, Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;->onLoadMore()V

    goto/16 :goto_5

    .line 3250
    :cond_c
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v9

    const/4 v14, 0x6

    const/4 v15, 0x5

    if-ne v9, v14, :cond_d

    if-lez v7, :cond_1e

    .line 3252
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

    .line 3253
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

    .line 3258
    :cond_d
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v9

    const/4 v10, 0x3

    if-nez v9, :cond_e

    move v9, v10

    goto :goto_2

    .line 3260
    :cond_e
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v9

    if-ne v9, v15, :cond_f

    const/16 v9, 0xa

    goto :goto_2

    :cond_f
    move v9, v14

    :goto_2
    add-int/2addr v7, v3

    sub-int/2addr v8, v9

    if-gt v7, v8, :cond_10

    .line 3266
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

    .line 3268
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v7

    if-nez v7, :cond_13

    .line 3270
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v8, v7, v5

    iget v8, v8, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v8, v6, :cond_11

    move/from16 v22, v14

    goto :goto_3

    .line 3272
    :cond_11
    aget-object v7, v7, v5

    iget v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v7, v12, :cond_12

    move/from16 v22, v13

    goto :goto_3

    :cond_12
    move/from16 v22, v5

    goto :goto_3

    .line 3275
    :cond_13
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v7

    if-ne v7, v6, :cond_14

    move/from16 v22, v6

    goto :goto_3

    .line 3277
    :cond_14
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v7

    if-ne v7, v12, :cond_15

    move/from16 v22, v12

    goto :goto_3

    .line 3279
    :cond_15
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v7

    if-ne v7, v11, :cond_16

    move/from16 v22, v11

    goto :goto_3

    .line 3281
    :cond_16
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v7

    if-ne v7, v15, :cond_17

    move/from16 v22, v15

    goto :goto_3

    :cond_17
    move/from16 v22, v10

    .line 3286
    :goto_3
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    aget-object v7, v7, v8

    iget-object v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v7, v7, v5

    if-nez v7, :cond_18

    .line 3287
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    aget-object v7, v7, v8

    iput-boolean v6, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    .line 3288
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

    .line 3289
    :cond_18
    iget-wide v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    const-wide/16 v10, 0x0

    cmp-long v7, v7, v10

    if-eqz v7, :cond_19

    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    aget-object v7, v7, v8

    iget-object v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v7, v7, v6

    if-nez v7, :cond_19

    .line 3290
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    aget-object v7, v7, v8

    iput-boolean v6, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    .line 3291
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

    .line 3295
    :cond_19
    :goto_4
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    aget-object v7, v7, v8

    invoke-static {v7}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result v7

    .line 3296
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    if-nez v8, :cond_1a

    .line 3297
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getPositionForIndex(I)I

    move-result v7

    :cond_1a
    sub-int v7, v3, v7

    add-int/2addr v9, v6

    if-ge v7, v9, :cond_1b

    .line 3299
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

    .line 3300
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->loadFromStart(I)V

    .line 3302
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

    .line 3303
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 3304
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    if-nez v2, :cond_1e

    .line 3305
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz v2, :cond_1d

    .line 3306
    check-cast v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    .line 3307
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->getMessageObject(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 3309
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-virtual {v2, v1, v5, v6}, Lorg/telegram/ui/Cells/ChatActionCell;->setCustomDate(IZZ)V

    goto :goto_5

    .line 3311
    :cond_1d
    instance-of v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v2, :cond_1e

    .line 3312
    check-cast v1, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 3313
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

    .line 406
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 409
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

    .line 412
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

    .line 5841
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;

    invoke-direct {v0, p0, p4}, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-nez p1, :cond_1

    .line 5843
    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5844
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->NoMediaSecret:I

    const-string p2, "NoMediaSecret"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 5846
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

    .line 5849
    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 5850
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->NoSharedFilesSecret:I

    const-string p2, "NoSharedFilesSecret"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 5852
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

    .line 5855
    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 5856
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->NoSharedVoiceSecret:I

    const-string p2, "NoSharedVoiceSecret"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 5858
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

    .line 5861
    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 5862
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->NoSharedLinksSecret:I

    const-string p2, "NoSharedLinksSecret"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 5864
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

    .line 5866
    sget p0, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne p1, p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 p0, 0x5

    if-ne p1, p0, :cond_a

    .line 5877
    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 5878
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->NoSharedGifSecret:I

    const-string p2, "NoSharedGifSecret"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 5880
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

    .line 5883
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5884
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

    .line 5886
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5887
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5889
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyImageView:Landroid/widget/ImageView;

    sget p1, Lorg/telegram/messenger/R$drawable;->fork_members_tip:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5890
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->common_empty_state_title:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 5867
    :cond_c
    :goto_0
    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 5868
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->NoSharedAudioSecret:I

    const-string p2, "NoSharedAudioSecret"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 5871
    :cond_d
    sget p0, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne p1, p0, :cond_e

    .line 5872
    iget-object p0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$EmptyStubView;->emptyTextView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->music_playlist_empty_title:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 5874
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

    .line 3005
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p0, p1, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 3006
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->initialTab:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 3007
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setInitialTabId(I)V

    .line 3008
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->initialTab:I

    .line 3010
    :cond_0
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;->setBackgroundColor(I)V

    .line 3011
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedLine:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedText:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabText:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelector:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setColors(IIII)V

    .line 3012
    new-instance p1, Lorg/telegram/ui/Components/SharedMediaLayout$23;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$23;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setDelegate(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;)V

    return-object v0
.end method

.method private fillMediaData(I)Z
    .locals 7

    .line 3104
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getSharedMediaData()[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    .line 3109
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v2, p1

    iget-boolean v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollDataLoaded:Z

    if-nez v3, :cond_2

    .line 3110
    aget-object v2, v2, p1

    aget-object v3, v0, p1

    iget v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    iput v3, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    goto :goto_0

    .line 3113
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v2, p1

    aget-object v3, v0, p1

    iget v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    iput v3, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    .line 3115
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    aget-object v3, v0, p1

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3117
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    aget-object v3, v0, p1

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3118
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

    .line 3119
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

    .line 3122
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    aget-object v3, v0, p1

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v3

    aput-object v3, v2, v1

    .line 3123
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v2, p1

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    aget-object v4, v0, p1

    iget-object v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    aget v4, v4, v1

    aput v4, v3, v1

    .line 3124
    aget-object v2, v2, p1

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-object v3, v0, p1

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v3, v3, v1

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3126
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v1, v1, p1

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    aget-object v2, v0, p1

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3127
    aget-object p1, v0, p1

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private findPeriodAndJumpToDate(ILorg/telegram/ui/Components/RecyclerListView;Z)V
    .locals 4

    .line 6165
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    .line 6167
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    if-ltz p2, :cond_3

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 6170
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 6171
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    iget v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->startOffset:I

    if-gt p2, v3, :cond_0

    .line 6172
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

    .line 6177
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    :cond_2
    if-eqz v1, :cond_3

    .line 6181
    iget p2, v1, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->maxId:I

    iget v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->startOffset:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Components/SharedMediaLayout;->jumpToDate(IIIZ)V

    :cond_3
    return-void
.end method

.method private finishPinchToMediaColumnsCount()V
    .locals 8

    .line 2832
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    .line 2834
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 2835
    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-nez v3, :cond_0

    .line 2836
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_b

    .line 2841
    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    const/16 v5, 0x8

    if-nez v4, :cond_7

    .line 2842
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getItemCount()I

    move-result v2

    .line 2843
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    .line 2844
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v3, v1

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setListFrozen(Z)V

    .line 2845
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2846
    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animateToColumnsCount:I

    iput v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:I

    .line 2847
    invoke-static {v3}, Lorg/telegram/messenger/SharedConfig;->setMediaColumnsCount(I)V

    .line 2848
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:I

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 2849
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    .line 2850
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getItemCount()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 2851
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    goto :goto_2

    .line 2853
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2856
    :goto_2
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    if-ltz v0, :cond_5

    .line 2857
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v2, v0

    if-ge v1, v2, :cond_6

    .line 2858
    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    if-nez v0, :cond_4

    .line 2859
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4900(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2861
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterOffset:I

    .line 2863
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

    .line 2867
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->saveScrollPosition()V

    :cond_6
    return-void

    :cond_7
    const/4 v4, 0x0

    cmpl-float v6, v2, v4

    if-nez v6, :cond_8

    .line 2872
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    .line 2873
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v2, v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setListFrozen(Z)V

    .line 2874
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2875
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    :cond_8
    const v5, 0x3e4ccccd    # 0.2f

    cmpl-float v5, v2, v5

    const/4 v6, 0x1

    if-lez v5, :cond_9

    move v5, v6

    goto :goto_4

    :cond_9
    move v5, v1

    :goto_4
    const/4 v7, 0x2

    new-array v7, v7, [F

    aput v2, v7, v1

    if-eqz v5, :cond_a

    goto :goto_5

    :cond_a
    move v3, v4

    :goto_5
    aput v3, v7, v6

    .line 2879
    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2881
    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$19;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$19;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2888
    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$20;

    invoke-direct {v2, p0, v5, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$20;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;ZLorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2925
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xc8

    .line 2926
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2927
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_b
    return-void
.end method

.method private fixLayoutInternal(I)V
    .locals 2

    .line 5387
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 5388
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    if-nez p1, :cond_1

    .line 5390
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

    .line 5391
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    goto :goto_0

    .line 5393
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 5397
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method private forwardCloud()V
    .locals 4

    .line 199
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    .line 203
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isCloudAlbumsEnabled:Z

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v2, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {v2, v3, v0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 206
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
    .locals 2

    const/4 p1, 0x0

    .line 2728
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 2729
    aget-object v0, v0, p1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2730
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

    .line 2605
    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v0, :cond_0

    .line 2606
    check-cast p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageId()I

    move-result p1

    return p1

    .line 2608
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v0, :cond_1

    .line 2609
    check-cast p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 2610
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    return p1

    .line 2612
    :cond_1
    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v0, :cond_2

    .line 2613
    check-cast p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    .line 2614
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

    .line 7340
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    .line 7341
    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result p1

    return p1

    .line 7343
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

    .line 2644
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v0

    .line 2645
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 2646
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v6, v6, v2

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2648
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

    .line 2649
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_1

    .line 2650
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v6, v6, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_1

    .line 2651
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

    .line 3135
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hideFloatingDateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3136
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3139
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 3140
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 3141
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3142
    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 3145
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xb4

    .line 3146
    invoke-virtual {p1, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3147
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    .line 3148
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v1, v6

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v4, [F

    const/16 v5, 0x30

    .line 3149
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

    .line 3147
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3150
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3151
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$24;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$24;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3157
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 3159
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private jumpToDate(IIIZ)V
    .locals 4

    .line 6188
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6189
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 6190
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messagesDict:[Landroid/util/SparseArray;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 6191
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setMaxId(II)V

    .line 6192
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setEndReached(IZ)V

    .line 6193
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v0, p1

    iput-boolean v1, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startReached:Z

    .line 6194
    aget-object v0, v0, p1

    invoke-static {v0, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$702(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;I)I

    .line 6195
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v0, p1

    aget-object v0, v0, p1

    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    sub-int/2addr v0, p3

    sub-int/2addr v0, v2

    invoke-static {v3, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$7502(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;I)I

    .line 6196
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object p3, p3, p1

    invoke-static {p3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$7500(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result p3

    if-gez p3, :cond_0

    .line 6197
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object p3, p3, p1

    invoke-static {p3, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$7502(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;I)I

    .line 6199
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, p3, p1

    iput p2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->min_id:I

    .line 6200
    aget-object p2, p3, p1

    iput-boolean v2, p2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loadingAfterFastScroll:Z

    .line 6201
    aget-object p2, p3, p1

    iput-boolean v1, p2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    .line 6202
    aget-object p2, p3, p1

    iget p3, p2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->requestIndex:I

    add-int/2addr p3, v2

    iput p3, p2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->requestIndex:I

    .line 6203
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getMediaPage(I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6204
    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 6205
    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    if-eqz p4, :cond_3

    move p2, v1

    .line 6208
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length p4, p3

    if-ge p2, p4, :cond_3

    .line 6209
    aget-object p3, p3, p2

    invoke-static {p3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p3

    if-ne p3, p1, :cond_2

    .line 6210
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

    .line 3233
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->findPeriodAndJumpToDate(ILorg/telegram/ui/Components/RecyclerListView;Z)V

    const/4 p1, 0x0

    .line 3234
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->jumpToRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$forwardCloud$0(J)V
    .locals 12

    .line 200
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

    .line 201
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->closeActionMode()Z

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$23(I)V
    .locals 5

    .line 7177
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, p1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7178
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, p1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 7180
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, p1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7181
    instance-of v4, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz v4, :cond_0

    .line 7182
    check-cast v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->updateCheckboxColor()V

    goto :goto_1

    .line 7183
    :cond_0
    instance-of v4, v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v4, :cond_1

    .line 7184
    check-cast v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->update(I)V

    goto :goto_1

    .line 7185
    :cond_1
    instance-of v4, v3, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v4, :cond_2

    .line 7186
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

    .line 3477
    iget p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->date:I

    iget p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->date:I

    sub-int/2addr p1, p0

    return p1
.end method

.method private synthetic lambda$loadFastScrollData$17(Lorg/telegram/tgnet/TLRPC$TL_error;IILorg/telegram/tgnet/TLObject;)V
    .locals 3

    if-eqz p1, :cond_0

    return-void

    .line 3465
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, p1, p3

    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->requestIndex:I

    if-eq p2, v0, :cond_1

    return-void

    .line 3468
    :cond_1
    check-cast p4, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsPositions;

    .line 3469
    aget-object p1, p1, p3

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3470
    iget-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsPositions;->positions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_3

    .line 3471
    iget-object v1, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsPositions;->positions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_searchResultPosition;

    .line 3472
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_searchResultPosition;->date:I

    if-eqz v2, :cond_2

    .line 3473
    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$Period;-><init>(Lorg/telegram/tgnet/TLRPC$TL_searchResultPosition;)V

    .line 3474
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v1, v1, p3

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3477
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object p1, p1, p3

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    sget-object v0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda17;->INSTANCE:Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda17;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3478
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object p1, p1, p3

    iget p4, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsPositions;->count:I

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setTotalCount(I)V

    .line 3479
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object p4, p1, p3

    const/4 v0, 0x1

    iput-boolean v0, p4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollDataLoaded:Z

    .line 3480
    aget-object p1, p1, p3

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 3481
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length p4, p1

    if-ge p2, p4, :cond_5

    .line 3482
    aget-object p1, p1, p2

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p1

    if-ne p1, p3, :cond_4

    .line 3483
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p4, p1, p2

    iput-boolean v0, p4, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollEnabled:Z

    .line 3484
    aget-object p1, p1, p2

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateFastScrollVisibility(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Z)V

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 3488
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$loadFastScrollData$18(Lorg/telegram/tgnet/TLRPC$TL_error;IILorg/telegram/tgnet/TLObject;)V
    .locals 8

    .line 3461
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    new-instance v7, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda16;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/tgnet/TLRPC$TL_error;IILorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadFastScrollData$19(IILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 3460
    new-instance v6, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda15;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/tgnet/TLRPC$TL_error;IILorg/telegram/tgnet/TLObject;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    const/4 v0, 0x1

    .line 585
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->hideFloatingDateView(Z)V

    return-void
.end method

.method private synthetic lambda$new$10(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x65

    .line 1813
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->onActionBarItemClick(Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$new$11(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Landroid/view/View;IFF)V
    .locals 8

    .line 2363
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 2364
    instance-of p4, p2, Lorg/telegram/ui/Cells/UserCell;

    if-eqz p4, :cond_2

    const/4 p1, 0x0

    .line 2366
    iget-object p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {p4}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3600(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_0

    .line 2367
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3700(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    iget-object p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {p4}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3600(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    goto :goto_0

    :cond_0
    if-ltz p3, :cond_1

    .line 2370
    iget-object p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {p4}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3700(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p3, p4, :cond_1

    .line 2371
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3700(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    :cond_1
    :goto_0
    const/4 p3, 0x0

    .line 2373
    invoke-virtual {p0, p1, p3, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->onMemberClick(Lorg/telegram/tgnet/TLRPC$ChatParticipant;ZLandroid/view/View;)Z

    goto/16 :goto_3

    .line 2374
    :cond_2
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    if-ne p1, p2, :cond_f

    .line 2376
    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object p1

    .line 2377
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz p2, :cond_3

    .line 2378
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 2379
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide p1

    goto :goto_1

    .line 2380
    :cond_3
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz p2, :cond_5

    .line 2381
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 2382
    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    :goto_1
    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-eqz p3, :cond_5

    .line 2387
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide p3

    cmp-long p3, p1, p3

    if-nez p3, :cond_4

    goto :goto_2

    .line 2390
    :cond_4
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "user_id"

    .line 2391
    invoke-virtual {p3, p4, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2392
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance p2, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p2, p3}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_3

    :cond_5
    :goto_2
    return-void

    .line 2394
    :cond_6
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    instance-of v0, p2, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v0, :cond_8

    .line 2395
    check-cast p2, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 2396
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 2397
    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-string p1, "chat_id"

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2398
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 2401
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance p3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p3, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_3

    .line 2402
    :cond_8
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    instance-of v0, p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v0, :cond_9

    .line 2403
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

    .line 2404
    :cond_9
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    instance-of v0, p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz v0, :cond_a

    .line 2405
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

    .line 2406
    :cond_a
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    sget v1, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v0, v1, :cond_c

    :cond_b
    instance-of v0, p2, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v0, :cond_c

    .line 2407
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

    .line 2408
    :cond_c
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    instance-of v0, p2, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v0, :cond_d

    .line 2409
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

    .line 2410
    :cond_d
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    if-nez v0, :cond_f

    instance-of v0, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v0, :cond_f

    .line 2411
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    .line 2412
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->canRevealSpoiler()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2413
    invoke-virtual {v0, p4, p5}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->startRevealMedia(FF)V

    return-void

    .line 2416
    :cond_e
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    if-eqz v5, :cond_f

    const/4 v6, 0x0

    .line 2418
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v7

    move-object v2, p0

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/SharedMediaLayout;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;II)V

    :cond_f
    :goto_3
    return-void
.end method

.method private synthetic lambda$new$12(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Landroid/view/View;I)Z
    .locals 5

    .line 2445
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2448
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2449
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->getOnItemClickListener()Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2451
    invoke-interface {p1, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    :cond_1
    return v2

    .line 2455
    :cond_2
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_9

    instance-of v0, p2, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v0, :cond_9

    .line 2458
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3600(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 2459
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3600(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p3, p1, :cond_3

    return v1

    .line 2462
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3600(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Ljava/util/ArrayList;

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

    .line 2464
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3700(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_5

    goto :goto_3

    .line 2467
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3700(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 2468
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    .line 2469
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 2470
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2471
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-ne v4, p3, :cond_6

    move-object p2, v3

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2476
    :cond_7
    :goto_2
    invoke-virtual {p0, p1, v2, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->onMemberClick(Lorg/telegram/tgnet/TLRPC$ChatParticipant;ZLandroid/view/View;)Z

    move-result p1

    return p1

    :cond_8
    :goto_3
    return v1

    .line 2477
    :cond_9
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p3

    if-ne p3, v2, :cond_a

    instance-of p3, p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz p3, :cond_a

    .line 2478
    move-object p1, p2

    check-cast p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    move-result p1

    return p1

    .line 2479
    :cond_a
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p3

    const/4 v0, 0x3

    if-ne p3, v0, :cond_b

    instance-of p3, p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz p3, :cond_b

    .line 2480
    move-object p1, p2

    check-cast p1, Lorg/telegram/ui/Cells/SharedLinkCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedLinkCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    move-result p1

    return p1

    .line 2481
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

    .line 2482
    move-object p1, p2

    check-cast p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    move-result p1

    return p1

    .line 2483
    :cond_d
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p3

    const/4 v0, 0x5

    if-ne p3, v0, :cond_e

    instance-of p3, p2, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz p3, :cond_e

    .line 2484
    move-object p1, p2

    check-cast p1, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ContextLinkCell;->getParentObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    move-result p1

    return p1

    .line 2485
    :cond_e
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p1

    if-nez p1, :cond_f

    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz p1, :cond_f

    .line 2486
    move-object p1, p2

    check-cast p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 2488
    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    move-result p1

    return p1

    :cond_f
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

    .line 2576
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    .line 1571
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast p1, Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ProfileActivity;->showChooseMembersFilterDialog()V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 0

    .line 1577
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast p1, Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ProfileActivity;->processFilteredMembers()V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 0

    .line 1760
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->closeActionMode()Z

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 1

    .line 1774
    sget v0, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_MUSIC_PLAYLIST:I

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->onActionBarItemClick(Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x66

    .line 1786
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->onActionBarItemClick(Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/View;)V
    .locals 1

    .line 1793
    sget v0, Lcom/iMe/common/IdFabric$Menu;->MESSAGE_FORWARD_CLOUD:I

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->onActionBarItemClick(Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$new$9(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x64

    .line 1803
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->onActionBarItemClick(Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$onActionBarItemClick$21()V
    .locals 2

    const/4 v0, 0x0

    .line 3590
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->showActionMode(Z)V

    .line 3591
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    .line 3592
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    .line 3593
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    return-void
.end method

.method private synthetic lambda$onActionBarItemClick$22(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    .line 3627
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x1

    move v4, v15

    :goto_0
    const/4 v13, 0x0

    if-ltz v4, :cond_4

    .line 3629
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3630
    :goto_1
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v13, v6, :cond_0

    .line 3631
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v6, v6, v4

    invoke-virtual {v6, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 3633
    :cond_0
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3634
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

    .line 3635
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_1

    .line 3636
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

    .line 3641
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    .line 3645
    invoke-interface {v3, v14}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return v15

    .line 3649
    :cond_5
    iput v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    .line 3650
    iput v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    iput v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    .line 3651
    invoke-direct {v0, v13}, Lorg/telegram/ui/Components/SharedMediaLayout;->showActionMode(Z)V

    .line 3653
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

    .line 3676
    :cond_6
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v3, v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    .line 3677
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "scrollToTopOnResume"

    .line 3678
    invoke-virtual {v5, v6, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3679
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3680
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v3

    const-string v4, "enc_id"

    invoke-virtual {v5, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    .line 3682
    :cond_7
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "user_id"

    .line 3683
    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_3

    :cond_8
    neg-long v3, v3

    const-string v6, "chat_id"

    .line 3685
    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3687
    :goto_3
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v5, v1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v3

    if-nez v3, :cond_9

    return v15

    .line 3692
    :cond_9
    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v6, v13, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3694
    new-instance v3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v3, v5}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 3695
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->applyTopic(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagesStorage$TopicKey;)V

    .line 3696
    invoke-virtual {v1, v3, v15}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 3697
    invoke-virtual {v3, v15, v14}, Lorg/telegram/ui/ChatActivity;->showFieldPanelForForward(ZLjava/util/ArrayList;)V

    goto/16 :goto_7

    .line 3654
    :cond_a
    :goto_5
    invoke-virtual {v1, v14}, Lorg/telegram/ui/DialogsActivity;->filterSelectedForwardingMessages(Ljava/util/ArrayList;)V

    .line 3655
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateRowsSelection()V

    move v12, v13

    .line 3656
    :goto_6
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v12, v3, :cond_c

    .line 3657
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v5, v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    if-eqz p3, :cond_b

    .line 3659
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

    .line 3661
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

    .line 3663
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    const/4 v1, 0x0

    .line 3665
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v4, v3, Lorg/telegram/ui/ProfileActivity;

    if-eqz v4, :cond_d

    .line 3666
    check-cast v3, Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ProfileActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    :cond_d
    if-eqz v1, :cond_f

    .line 3669
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v15, :cond_e

    const/4 v3, 0x0

    .line 3670
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

    :cond_e
    const-wide/16 v3, 0x0

    const/16 v5, 0x35

    .line 3672
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

    :cond_f
    :goto_7
    return v15
.end method

.method private static synthetic lambda$showFastScrollHint$20(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;)V
    .locals 2

    const/4 v0, 0x0

    .line 3512
    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    .line 3513
    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHideHintRunnable:Ljava/lang/Runnable;

    .line 3514
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

    .line 3521
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

.method private loadFastScrollData(Z)V
    .locals 8

    .line 3431
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 3434
    :goto_0
    sget-object v2, Lorg/telegram/ui/Components/SharedMediaLayout;->supportedFastScrollTypes:[I

    array-length v3, v2

    if-ge v1, v3, :cond_9

    .line 3435
    aget v2, v2, v1

    .line 3436
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

    .line 3439
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v3, v2

    iput-boolean v0, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollDataLoaded:Z

    .line 3440
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;-><init>()V

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v2, :cond_6

    .line 3442
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v7, v6, v2

    iget v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v7, v5, :cond_4

    .line 3443
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotos;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotos;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1

    .line 3444
    :cond_4
    aget-object v5, v6, v2

    iget v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v5, v4, :cond_5

    .line 3445
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVideo;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVideo;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1

    .line 3447
    :cond_5
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideo;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideo;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1

    :cond_6
    if-ne v2, v5, :cond_7

    .line 3450
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1

    :cond_7
    if-ne v2, v4, :cond_8

    .line 3452
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterRoundVoice;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterRoundVoice;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1

    .line 3454
    :cond_8
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    :goto_1
    const/16 v4, 0x64

    .line 3456
    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;->limit:I

    .line 3457
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsPositions;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3458
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v4, v4, v2

    iget v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->requestIndex:I

    .line 3459
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v5

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda18;

    invoke-direct {v6, p0, v4, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;II)V

    invoke-virtual {v5, v3, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    .line 3490
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

    .line 3324
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v2, v5

    iget v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v3, v6, :cond_0

    const/4 v2, 0x6

    :goto_0
    move v13, v2

    goto :goto_1

    .line 3326
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

    .line 3340
    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v2, v1

    iput-boolean v6, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    .line 3341
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

    .line 5214
    iget-boolean v4, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    if-eqz v4, :cond_0

    goto/16 :goto_d

    .line 5217
    :cond_0
    iget-boolean v4, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_1d

    .line 5218
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    iget-wide v10, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    cmp-long v4, v8, v10

    if-nez v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v7

    .line 5219
    :goto_0
    iget-object v8, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v8, v8, v4

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v8

    if-ltz v8, :cond_4

    .line 5220
    iget-object v8, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v8, v8, v4

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->remove(I)V

    .line 5221
    invoke-virtual {v2, v6, v5}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(ZLorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 5222
    iget v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    sub-int/2addr v5, v7

    iput v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    .line 5225
    :cond_2
    iget-object v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v5

    if-eqz v5, :cond_8

    sget v5, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-eq v3, v5, :cond_8

    .line 5226
    iget-object v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->playlist:Ljava/util/LinkedHashMap;

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5227
    iget v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    sub-int/2addr v5, v7

    iput v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    goto :goto_1

    .line 5229
    :cond_3
    iget v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    sub-int/2addr v5, v7

    iput v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    goto :goto_1

    .line 5234
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

    .line 5237
    :cond_5
    iget-object v8, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v8, v8, v4

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-virtual {v8, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5238
    invoke-virtual {v2, v6, v5}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(ZLorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 5239
    iget v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    add-int/2addr v5, v7

    iput v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    .line 5242
    :cond_6
    iget-object v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v5

    if-eqz v5, :cond_8

    sget v5, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-eq v3, v5, :cond_8

    .line 5243
    iget-object v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->playlist:Ljava/util/LinkedHashMap;

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 5244
    iget v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    add-int/2addr v5, v7

    iput v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    goto :goto_1

    .line 5246
    :cond_7
    iget v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    add-int/2addr v5, v7

    iput v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    .line 5251
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

    .line 5252
    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->showActionMode(Z)V

    goto/16 :goto_7

    .line 5255
    :cond_9
    iget-object v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v8, 0x8

    if-eqz v5, :cond_e

    .line 5256
    sget v9, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v3, v9, :cond_a

    .line 5257
    iput v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    .line 5258
    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_5

    .line 5260
    :cond_a
    iget v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    if-eqz v3, :cond_c

    iget v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    if-nez v3, :cond_b

    goto :goto_2

    :cond_b
    move v3, v8

    goto :goto_3

    :cond_c
    :goto_2
    move v3, v6

    :goto_3
    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5261
    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    if-nez v5, :cond_d

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_tone_add:I

    goto :goto_4

    :cond_d
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_tone_off:I

    :goto_4
    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 5265
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

    .line 5266
    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    if-nez v5, :cond_f

    move v5, v6

    goto :goto_6

    :cond_f
    move v5, v8

    :goto_6
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5267
    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_11

    .line 5268
    iget-object v5, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ne v5, v7, :cond_10

    move v8, v6

    :cond_10
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5271
    :cond_11
    :goto_7
    iput-boolean v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->scrolling:Z

    .line 5272
    instance-of v3, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v3, :cond_13

    .line 5273
    check-cast v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v4

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_12

    move v6, v7

    :cond_12
    invoke-virtual {v0, v6, v7}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto/16 :goto_c

    .line 5274
    :cond_13
    instance-of v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz v3, :cond_15

    .line 5275
    check-cast v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v4

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_14

    move/from16 v2, p4

    move v6, v7

    goto :goto_8

    :cond_14
    move/from16 v2, p4

    :goto_8
    invoke-virtual {v0, v2, v6, v7}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setChecked(IZZ)V

    goto/16 :goto_c

    .line 5276
    :cond_15
    instance-of v3, v0, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz v3, :cond_17

    .line 5277
    check-cast v0, Lorg/telegram/ui/Cells/SharedLinkCell;

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v4

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_16

    move v6, v7

    :cond_16
    invoke-virtual {v0, v6, v7}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto/16 :goto_c

    .line 5278
    :cond_17
    instance-of v3, v0, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v3, :cond_19

    .line 5279
    check-cast v0, Lorg/telegram/ui/Cells/SharedAudioCell;

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v4

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_18

    move v6, v7

    :cond_18
    invoke-virtual {v0, v6, v7}, Lorg/telegram/ui/Cells/SharedAudioCell;->setChecked(ZZ)V

    goto/16 :goto_c

    .line 5280
    :cond_19
    instance-of v3, v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v3, :cond_1b

    .line 5281
    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v4

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_1a

    move v6, v7

    :cond_1a
    invoke-virtual {v0, v6, v7}, Lorg/telegram/ui/Cells/ContextLinkCell;->setChecked(ZZ)V

    goto/16 :goto_c

    .line 5282
    :cond_1b
    instance-of v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v3, :cond_2d

    .line 5283
    check-cast v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v4

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_1c

    move v6, v7

    :cond_1c
    invoke-virtual {v0, v6, v7}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setChecked(ZZ)V

    goto/16 :goto_c

    :cond_1d
    if-nez v3, :cond_1e

    .line 5287
    iget-object v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, v3

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result v0

    sub-int v4, p1, v0

    if-ltz v4, :cond_2d

    .line 5288
    iget-object v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, v3

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_2d

    .line 5289
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 5290
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

    .line 5292
    sget v4, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v3, v4, :cond_1f

    goto/16 :goto_b

    :cond_1f
    const/4 v4, 0x5

    if-ne v3, v4, :cond_21

    .line 5297
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v4, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 5298
    iget-object v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, v3

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_20

    .line 5300
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5301
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5302
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v5

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    iget-object v13, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-virtual/range {v5 .. v13}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    goto/16 :goto_c

    .line 5304
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

    .line 5307
    instance-of v4, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v4, :cond_2d

    .line 5308
    check-cast v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 5309
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    .line 5310
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoaded()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 5311
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->canPreviewDocument()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 5312
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v4, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 5313
    iget-object v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, v3

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_22

    .line 5315
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5316
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5317
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v5

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    iget-object v13, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-virtual/range {v5 .. v13}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    goto :goto_9

    .line 5319
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

    .line 5323
    :cond_23
    iget-object v0, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v2, v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->openDocument(Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto/16 :goto_c

    .line 5324
    :cond_24
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoading()Z

    move-result v2

    if-nez v2, :cond_25

    .line 5325
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    .line 5326
    iput-boolean v7, v2, Lorg/telegram/messenger/MessageObject;->putInDownloadsStore:Z

    .line 5327
    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v4, v2, v6, v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 5328
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon(Z)V

    goto/16 :goto_c

    .line 5330
    :cond_25
    iget-object v2, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 5331
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon(Z)V

    goto :goto_c

    :cond_26
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2d

    .line 5336
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

    .line 5338
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;

    if-nez v4, :cond_2a

    .line 5339
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz v4, :cond_28

    .line 5340
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 5341
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;)Z

    return-void

    .line 5343
    :cond_28
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    if-eqz v4, :cond_29

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_29

    .line 5344
    invoke-direct {p0, v3, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;)V

    return-void

    .line 5347
    :cond_29
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    :cond_2a
    if-nez v5, :cond_2b

    .line 5351
    check-cast v0, Lorg/telegram/ui/Cells/SharedLinkCell;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/SharedLinkCell;->getLink(I)Ljava/lang/String;

    move-result-object v5

    :cond_2b
    if-eqz v5, :cond_2d

    .line 5354
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->openUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    .line 5357
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_c

    .line 5293
    :cond_2c
    :goto_b
    instance-of v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v2, :cond_2d

    .line 5294
    check-cast v0, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedAudioCell;->didPressedButton()V

    .line 5361
    :cond_2d
    :goto_c
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateForwardItem()V

    :cond_2e
    :goto_d
    return-void
.end method

.method private onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z
    .locals 7

    .line 5153
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_13

    if-nez p1, :cond_0

    goto/16 :goto_8

    .line 5156
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 5157
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

    .line 5158
    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(ZLorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5159
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    .line 5162
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0x8

    if-eqz v0, :cond_8

    .line 5163
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    sget v4, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v0, v4, :cond_3

    .line 5164
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    .line 5165
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->addToPlaylistItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_5

    .line 5167
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlist:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5168
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    goto :goto_1

    .line 5170
    :cond_4
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    .line 5172
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

    .line 5173
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

    .line 5177
    :cond_8
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    if-nez v0, :cond_9

    move v2, v1

    :cond_9
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5178
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_a

    .line 5179
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5181
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {p1, v3, v1}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 5182
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 5183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 5184
    :goto_6
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_b

    .line 5185
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 5186
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    .line 5187
    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 5189
    :cond_b
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v4, 0xfa

    .line 5190
    invoke-virtual {p1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5191
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 5192
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrolling:Z

    .line 5193
    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz p1, :cond_c

    .line 5194
    check-cast p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {p2, v3, v3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto :goto_7

    .line 5195
    :cond_c
    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz p1, :cond_d

    .line 5196
    check-cast p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    invoke-virtual {p2, p3, v3, v3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setChecked(IZZ)V

    goto :goto_7

    .line 5197
    :cond_d
    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz p1, :cond_e

    .line 5198
    check-cast p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    invoke-virtual {p2, v3, v3}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto :goto_7

    .line 5199
    :cond_e
    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz p1, :cond_f

    .line 5200
    check-cast p2, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {p2, v3, v3}, Lorg/telegram/ui/Cells/SharedAudioCell;->setChecked(ZZ)V

    goto :goto_7

    .line 5201
    :cond_f
    instance-of p1, p2, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz p1, :cond_10

    .line 5202
    check-cast p2, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {p2, v3, v3}, Lorg/telegram/ui/Cells/ContextLinkCell;->setChecked(ZZ)V

    goto :goto_7

    .line 5203
    :cond_10
    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz p1, :cond_11

    .line 5204
    check-cast p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {p2, v3, v3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setChecked(ZZ)V

    .line 5206
    :cond_11
    :goto_7
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    if-nez p1, :cond_12

    .line 5207
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->showActionMode(Z)V

    .line 5209
    :cond_12
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateForwardItem()V

    return v3

    :cond_13
    :goto_8
    return v1

    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private openUrl(Ljava/lang/String;)V
    .locals 2

    .line 5365
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowUrlInAlert(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5366
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v1}, Lorg/telegram/ui/Components/AlertsCreator;->showOpenUrlAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 5368
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

    .line 5373
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

    .line 3734
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

    .line 3736
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 3737
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

    .line 3744
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_6

    .line 3745
    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    if-eqz v1, :cond_7

    const/4 v6, 0x2

    if-ne v1, v6, :cond_4

    .line 3747
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_1

    :cond_4
    if-ne v1, v5, :cond_5

    .line 3749
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3750
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3752
    :cond_5
    :goto_1
    iput v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    goto :goto_2

    .line 3755
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3756
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3759
    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3760
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->hideFloatingDateView(Z)V

    .line 3761
    iput-boolean v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybeStartTracking:Z

    .line 3762
    iput-boolean v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    .line 3763
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTrackingX:I

    .line 3764
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 3765
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setEnabled(Z)V

    .line 3766
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p1, p1, v5

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$002(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;I)I

    .line 3767
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p1, p1, v5

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3768
    iput-boolean p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animatingForward:Z

    .line 3769
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->switchToCurrentSelectedMode(Z)V

    if-eqz p2, :cond_8

    .line 3771
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p2, p1, v5

    aget-object p1, p1, v3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_3

    .line 3773
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

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 213
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 214
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 215
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v4, v4, v1

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 217
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 218
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

    .line 219
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_1

    .line 220
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

    .line 5377
    instance-of v0, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    if-eqz v0, :cond_0

    .line 5378
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cellCache:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cache:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5379
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cache:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 5380
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-ne p1, v0, :cond_2

    .line 5381
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioCellCache:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioCache:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5382
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

    .line 4504
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v3, v2

    if-ge v1, v3, :cond_9

    .line 4505
    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    if-eqz v2, :cond_8

    move v3, v0

    move v4, v3

    move v5, v4

    .line 4509
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 4510
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4511
    instance-of v7, v6, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v7, :cond_0

    .line 4512
    move-object v4, v6

    check-cast v4, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    .line 4513
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageId()I

    move-result v5

    .line 4514
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    move v9, v5

    move v5, v4

    move v4, v9

    .line 4516
    :cond_0
    instance-of v7, v6, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v7, :cond_1

    .line 4517
    move-object v4, v6

    check-cast v4, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 4518
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    .line 4519
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTop()I

    move-result v4

    move v9, v5

    move v5, v4

    move v4, v9

    .line 4521
    :cond_1
    instance-of v7, v6, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v7, :cond_2

    .line 4522
    check-cast v6, Lorg/telegram/ui/Cells/SharedAudioCell;

    .line 4523
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    .line 4524
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

    .line 4532
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
    move v6, v0

    .line 4535
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

    .line 4536
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

    .line 4542
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

    .line 4544
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

    .line 4545
    iget-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    if-eqz v2, :cond_8

    .line 4546
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

    .line 3165
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

    .line 3182
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    .line 3178
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    .line 3175
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x38

    .line 3172
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_0

    .line 3167
    :cond_3
    invoke-static {v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->getItemSize(I)I

    move-result v0

    .line 3186
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-nez v3, :cond_4

    .line 3187
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:I

    div-int/2addr v3, v4

    goto :goto_1

    .line 3189
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    :goto_1
    mul-int/2addr v3, v0

    int-to-float v0, v3

    .line 3191
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f99999a    # 1.2f

    mul-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5

    .line 3192
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollDirection(I)V

    .line 3193
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollToPosition(IIZZ)V

    goto :goto_2

    .line 3195
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

    .line 383
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    .line 384
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/BlurredRecyclerView;->blurTopPadding:I

    add-int/2addr p2, v1

    .line 385
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

    .line 388
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 389
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 390
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 391
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->rect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 392
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v2

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v6

    iput v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    .line 393
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterOffset:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 396
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    invoke-interface {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;->canSearchMembers()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 397
    iget p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    if-ne p2, v0, :cond_3

    const/high16 p2, 0x3f800000    # 1.0f

    int-to-float p1, p1

    .line 398
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

    .line 399
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

    mul-float/2addr v0, p1

    add-float/2addr p2, v0

    float-to-int p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    .line 400
    iput v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterOffset:I

    :cond_3
    return-void
.end method

.method private showActionMode(Z)V
    .locals 7

    .line 4097
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 4100
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    .line 4101
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 4102
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 4105
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4107
    :cond_2
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeAnimation:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/animation/Animator;

    .line 4108
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

    .line 4109
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4110
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$27;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$27;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4127
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private static showFastScrollHint(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;Z)V
    .locals 2

    if-eqz p2, :cond_2

    .line 3497
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

    .line 3500
    :cond_0
    sget p1, Lorg/telegram/messenger/SharedConfig;->fastScrollHintCount:I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setFastScrollHintCount(I)V

    .line 3501
    iput-boolean p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHinWasShown:Z

    .line 3502
    new-instance p1, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;-><init>(Landroid/content/Context;)V

    .line 3503
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    const/4 p2, -0x2

    .line 3504
    invoke-static {p2, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3505
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3506
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 3507
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 3508
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

    .line 3509
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 3511
    new-instance p2, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHideHintRunnable:Ljava/lang/Runnable;

    const-wide/16 p0, 0xfa0

    invoke-static {p2, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 3524
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHideHintRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_3

    goto :goto_1

    .line 3527
    :cond_3
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3528
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHideHintRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 3529
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHideHintRunnable:Ljava/lang/Runnable;

    .line 3530
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

    .line 2737
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->viewType:I

    if-ne v1, v0, :cond_0

    return-void

    .line 2740
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2741
    iget-wide v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    const-string v4, "dialog_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2742
    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    const-string v3, "topic_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 2745
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->getMediaPage(I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2747
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    const/4 v4, 0x0

    .line 2749
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    if-ltz p1, :cond_4

    if-eqz v3, :cond_3

    move v5, v2

    .line 2752
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 2753
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    iget v6, v6, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->startOffset:I

    if-gt p1, v6, :cond_1

    .line 2754
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

    .line 2759
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    :cond_3
    if-eqz v4, :cond_4

    .line 2763
    iget p1, v4, Lorg/telegram/ui/Components/SharedMediaLayout$Period;->date:I

    goto :goto_2

    :cond_4
    move p1, v2

    :goto_2
    const-string v3, "type"

    .line 2768
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2769
    new-instance v0, Lorg/telegram/ui/CalendarActivity;

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v3, v2

    iget v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    invoke-direct {v0, v1, v2, p1}, Lorg/telegram/ui/CalendarActivity;-><init>(Landroid/os/Bundle;II)V

    .line 2770
    new-instance p1, Lorg/telegram/ui/Components/SharedMediaLayout$18;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$18;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/CalendarActivity;->setCallback(Lorg/telegram/ui/CalendarActivity$Callback;)V

    .line 2791
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private startPinchToMediaColumnsCount(Z)V
    .locals 5

    .line 2795
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    .line 2799
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 2800
    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    if-nez v3, :cond_1

    .line 2801
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_6

    .line 2806
    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:I

    invoke-virtual {p0, v2, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getNextMediaColumnsCount(IZ)I

    move-result p1

    .line 2807
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animateToColumnsCount:I

    .line 2808
    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:I

    if-ne p1, v2, :cond_3

    return-void

    .line 2811
    :cond_3
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2812
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animationSupportingPhotoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2813
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4900(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 2814
    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    const/4 p1, 0x1

    .line 2816
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    .line 2817
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setListFrozen(Z)V

    const/4 p1, 0x0

    .line 2818
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsProgress:F

    .line 2819
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    if-ltz p1, :cond_5

    .line 2820
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v0, p1

    if-ge v1, v0, :cond_6

    .line 2821
    aget-object p1, p1, v1

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p1

    if-nez p1, :cond_4

    .line 2822
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

    .line 2826
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->saveScrollPosition()V

    :cond_6
    return-void
.end method

.method private startStopVisibleGifs()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 4893
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 4894
    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_2

    .line 4896
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4897
    instance-of v5, v4, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v5, :cond_1

    .line 4898
    check-cast v4, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 4899
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ContextLinkCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    if-nez v1, :cond_0

    const/4 v5, 0x1

    .line 4901
    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 4902
    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    goto :goto_2

    .line 4904
    :cond_0
    invoke-virtual {v4, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 4905
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

    move v2, v1

    .line 4913
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 4914
    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4917
    :cond_0
    aget-object v2, v3, p1

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 4921
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, p1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    .line 4923
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

    .line 4925
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

    .line 4931
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4933
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    sget v8, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v4, v8, :cond_3

    .line 4934
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eqz v4, :cond_12

    .line 4935
    invoke-virtual {v4, v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->search(Ljava/lang/String;Z)V

    .line 4936
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eq v3, v2, :cond_12

    .line 4937
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4938
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_2

    .line 4942
    :cond_3
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-ne v4, v14, :cond_4

    .line 4943
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eqz v4, :cond_12

    .line 4944
    invoke-virtual {v4, v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->search(Ljava/lang/String;Z)V

    .line 4945
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eq v3, v2, :cond_12

    .line 4946
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4947
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_2

    .line 4950
    :cond_4
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-ne v4, v9, :cond_5

    .line 4951
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eqz v4, :cond_12

    .line 4952
    invoke-virtual {v4, v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->search(Ljava/lang/String;Z)V

    .line 4953
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eq v3, v2, :cond_12

    .line 4954
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4955
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_2

    .line 4958
    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-ne v4, v13, :cond_6

    .line 4959
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eqz v4, :cond_12

    .line 4960
    invoke-virtual {v4, v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->search(Ljava/lang/String;Z)V

    .line 4961
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eq v3, v2, :cond_12

    .line 4962
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4963
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_2

    .line 4966
    :cond_6
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-ne v4, v12, :cond_12

    .line 4967
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    if-eqz v4, :cond_12

    .line 4968
    invoke-virtual {v4, v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->search(Ljava/lang/String;Z)V

    .line 4969
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    if-eq v3, v2, :cond_12

    .line 4970
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4971
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_2

    .line 4926
    :cond_7
    :goto_1
    iput-boolean v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searching:Z

    .line 4927
    iput-boolean v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchWas:Z

    .line 4928
    invoke-direct {v0, v14}, Lorg/telegram/ui/Components/SharedMediaLayout;->switchToCurrentSelectedMode(Z)V

    return-void

    .line 4977
    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 4979
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    sget v4, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v2, v4, :cond_a

    .line 4980
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eq v3, v2, :cond_9

    .line 4981
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4982
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4984
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 4986
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-ne v2, v14, :cond_c

    .line 4987
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eq v3, v2, :cond_b

    .line 4988
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4989
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4991
    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 4992
    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-ne v2, v9, :cond_e

    .line 4993
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eq v3, v2, :cond_d

    .line 4994
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4995
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4997
    :cond_d
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 4998
    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-ne v2, v13, :cond_10

    .line 4999
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    if-eq v3, v2, :cond_f

    .line 5000
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5001
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5003
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 5004
    :cond_10
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-ne v2, v12, :cond_12

    .line 5005
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    if-eq v3, v2, :cond_11

    .line 5006
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5007
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5009
    :cond_11
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->groupUsersSearchAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->notifyDataSetChanged()V

    :cond_12
    :goto_2
    move v2, v1

    goto/16 :goto_f

    .line 5014
    :cond_13
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setPinnedHeaderShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5017
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    sget v15, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v4, v15, :cond_14

    .line 5018
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eq v3, v2, :cond_22

    .line 5019
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5020
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_7

    .line 5023
    :cond_14
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-nez v4, :cond_18

    .line 5024
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    if-eq v3, v4, :cond_15

    .line 5025
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5026
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, p1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5028
    :cond_15
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 5029
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v3, v2, v1

    iget-boolean v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollDataLoaded:Z

    if-eqz v3, :cond_16

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    move v2, v14

    goto :goto_3

    :cond_16
    move v2, v1

    .line 5032
    :goto_3
    iget v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaColumnsCount:I

    .line 5033
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinnedHeaderShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setPinnedHeaderShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5034
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v5, v4, v1

    iget-object v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->recycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    if-nez v5, :cond_17

    .line 5035
    aget-object v4, v4, v1

    new-instance v5, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v5}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v5, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->recycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 5037
    :cond_17
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v4, v4, v1

    iget-object v5, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->recycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    goto/16 :goto_9

    .line 5038
    :cond_18
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-ne v2, v14, :cond_1a

    .line 5039
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v4, v2, v14

    iget-boolean v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollDataLoaded:Z

    if-eqz v4, :cond_19

    aget-object v2, v2, v14

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    move v2, v14

    goto :goto_4

    :cond_19
    move v2, v1

    .line 5042
    :goto_4
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eq v3, v4, :cond_23

    .line 5043
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5044
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, p1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_8

    .line 5046
    :cond_1a
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-ne v2, v11, :cond_1c

    .line 5047
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v4, v2, v11

    iget-boolean v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollDataLoaded:Z

    if-eqz v4, :cond_1b

    aget-object v2, v2, v11

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->fastScrollPeriods:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    move v2, v14

    goto :goto_5

    :cond_1b
    move v2, v1

    .line 5050
    :goto_5
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eq v3, v4, :cond_23

    .line 5051
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5052
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, p1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_8

    .line 5054
    :cond_1c
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-ne v2, v9, :cond_1d

    .line 5055
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    if-eq v3, v2, :cond_22

    .line 5056
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5057
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto/16 :goto_7

    .line 5059
    :cond_1d
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-ne v2, v13, :cond_1f

    .line 5060
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

    move v2, v14

    goto :goto_6

    :cond_1e
    move v2, v1

    .line 5063
    :goto_6
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eq v3, v4, :cond_23

    .line 5064
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5065
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, p1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_8

    .line 5067
    :cond_1f
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-ne v2, v8, :cond_20

    .line 5068
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    if-eq v3, v2, :cond_22

    .line 5069
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5070
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_7

    .line 5072
    :cond_20
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-ne v2, v10, :cond_21

    .line 5073
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    if-eq v3, v2, :cond_22

    .line 5074
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5075
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_7

    .line 5077
    :cond_21
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v2

    if-ne v2, v12, :cond_22

    .line 5078
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    if-eq v3, v2, :cond_22

    .line 5079
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->recycleAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5080
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_22
    :goto_7
    move v2, v1

    :cond_23
    :goto_8
    move v3, v6

    .line 5083
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

    .line 5092
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-ne v4, v13, :cond_27

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v4

    if-nez v4, :cond_27

    .line 5093
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 5094
    iput v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    .line 5095
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_a

    .line 5097
    :cond_26
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5099
    :goto_a
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_c

    .line 5101
    :cond_27
    iput v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    goto :goto_c

    .line 5103
    :cond_28
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-ne v4, v13, :cond_2c

    .line 5104
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 5105
    iput v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    .line 5106
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5107
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_c

    .line 5109
    :cond_29
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5110
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_c

    :cond_2a
    :goto_b
    if-eqz p1, :cond_2b

    .line 5085
    iput v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    goto :goto_c

    .line 5087
    :cond_2b
    iput v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    .line 5088
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5114
    :cond_2c
    :goto_c
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-ne v4, v10, :cond_2d

    .line 5115
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

    .line 5116
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->commonGroupsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;

    const-wide/16 v8, 0x0

    invoke-static {v4, v8, v9, v6}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->access$6700(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;JI)V

    goto/16 :goto_e

    .line 5118
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

    .line 5121
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

    .line 5122
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, p1

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v6

    aget-object v4, v4, v6

    iput-boolean v14, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    .line 5123
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5124
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-nez v4, :cond_30

    .line 5126
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v8, v6, v1

    iget v8, v8, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v8, v14, :cond_2f

    move/from16 v21, v10

    goto :goto_d

    .line 5128
    :cond_2f
    aget-object v6, v6, v1

    iget v6, v6, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v6, v11, :cond_30

    move/from16 v21, v12

    goto :goto_d

    :cond_30
    move/from16 v21, v4

    .line 5132
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

    .line 5135
    :cond_31
    :goto_e
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    move v6, v3

    .line 5137
    :goto_f
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v3, p1

    iput-boolean v2, v4, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollEnabled:Z

    .line 5138
    aget-object v2, v3, p1

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateFastScrollVisibility(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Z)V

    .line 5139
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 5140
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 5141
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 5143
    iget v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    if-ne v2, v11, :cond_32

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 5144
    iput-boolean v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->ignoreSearchCollapse:Z

    .line 5145
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    .line 5146
    iput v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    .line 5147
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5148
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_32
    return-void
.end method

.method private updateForwardItem()V
    .locals 7

    .line 2620
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    return-void

    .line 2623
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

    .line 2624
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

    .line 2625
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 2626
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_4
    if-nez v0, :cond_5

    .line 2627
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_5

    .line 2628
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemedColor(I)I

    move-result v6

    invoke-static {v6, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2631
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

    .line 2633
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2634
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 2636
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_8

    .line 2637
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

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

    move v1, v0

    .line 4727
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v3, v2

    if-ge v1, v3, :cond_6

    .line 4728
    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_5

    .line 4730
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4731
    instance-of v5, v4, Lorg/telegram/ui/Cells/SharedDocumentCell;

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 4732
    check-cast v4, Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {v4, v0, v6}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto :goto_2

    .line 4733
    :cond_0
    instance-of v5, v4, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v5, :cond_1

    .line 4734
    check-cast v4, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v4, v0, v6}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setChecked(ZZ)V

    goto :goto_2

    .line 4735
    :cond_1
    instance-of v5, v4, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz v5, :cond_2

    .line 4736
    check-cast v4, Lorg/telegram/ui/Cells/SharedLinkCell;

    invoke-virtual {v4, v0, v6}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto :goto_2

    .line 4737
    :cond_2
    instance-of v5, v4, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v5, :cond_3

    .line 4738
    check-cast v4, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {v4, v0, v6}, Lorg/telegram/ui/Cells/SharedAudioCell;->setChecked(ZZ)V

    goto :goto_2

    .line 4739
    :cond_3
    instance-of v5, v4, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v5, :cond_4

    .line 4740
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

    .line 4751
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    if-nez v0, :cond_0

    return-void

    .line 4754
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;->isFragmentOpened()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move p1, v1

    .line 4758
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3700(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v3

    if-ne v0, v3, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    .line 4761
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v3, v3, v1

    if-gtz v3, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v5

    if-ne v3, v5, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 4764
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v3, v3, v2

    if-gtz v3, :cond_6

    move v3, v2

    goto :goto_3

    :cond_6
    move v3, v1

    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v5

    if-ne v3, v5, :cond_7

    add-int/lit8 v0, v0, 0x1

    .line 4767
    :cond_7
    iget-wide v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    const/4 v5, 0x3

    const/4 v6, 0x4

    if-nez v3, :cond_b

    .line 4768
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v3, v3, v5

    if-gtz v3, :cond_8

    move v3, v2

    goto :goto_4

    :cond_8
    move v3, v1

    :goto_4
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v7

    if-ne v3, v7, :cond_9

    add-int/lit8 v0, v0, 0x1

    .line 4771
    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v3, v3, v6

    if-gtz v3, :cond_a

    move v3, v2

    goto :goto_5

    :cond_a
    move v3, v1

    :goto_5
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v7

    if-ne v3, v7, :cond_d

    goto :goto_7

    .line 4775
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v3, v3, v6

    if-gtz v3, :cond_c

    move v3, v2

    goto :goto_6

    :cond_c
    move v3, v1

    :goto_6
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v7

    if-ne v3, v7, :cond_d

    :goto_7
    add-int/lit8 v0, v0, 0x1

    .line 4779
    :cond_d
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    const/4 v7, 0x2

    aget v3, v3, v7

    if-gtz v3, :cond_e

    move v3, v2

    goto :goto_8

    :cond_e
    move v3, v1

    :goto_8
    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v8

    if-ne v3, v8, :cond_f

    add-int/lit8 v0, v0, 0x1

    .line 4782
    :cond_f
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    const/4 v8, 0x5

    aget v3, v3, v8

    if-gtz v3, :cond_10

    move v3, v2

    goto :goto_9

    :cond_10
    move v3, v1

    :goto_9
    iget-object v9, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v9, v8}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v9

    if-ne v3, v9, :cond_11

    add-int/lit8 v0, v0, 0x1

    .line 4785
    :cond_11
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    const/4 v9, 0x6

    aget v3, v3, v9

    if-gtz v3, :cond_12

    move v3, v2

    goto :goto_a

    :cond_12
    move v3, v1

    :goto_a
    iget-object v10, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v10, v9}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v10

    if-ne v3, v10, :cond_13

    add-int/lit8 v0, v0, 0x1

    :cond_13
    if-lez v0, :cond_20

    if-eqz p1, :cond_14

    .line 4789
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt p1, v3, :cond_14

    .line 4790
    new-instance p1, Landroid/transition/TransitionSet;

    invoke-direct {p1}, Landroid/transition/TransitionSet;-><init>()V

    .line 4791
    invoke-virtual {p1, v1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 4792
    new-instance v3, Landroid/transition/ChangeBounds;

    invoke-direct {v3}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {p1, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 4793
    new-instance v3, Lorg/telegram/ui/Components/SharedMediaLayout$30;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$30;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {p1, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    const-wide/16 v10, 0xc8

    .line 4818
    invoke-virtual {p1, v10, v11}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 4819
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getTabsContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 4821
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->recordIndicatorParams()V

    .line 4823
    :cond_14
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->removeTabs()Landroid/util/SparseArray;

    move-result-object p1

    if-le v0, v5, :cond_15

    const/4 p1, 0x0

    .line 4827
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3700(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 4828
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 4829
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v3, Lorg/telegram/messenger/R$string;->GroupMembers:I

    const-string v10, "GroupMembers"

    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 4832
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v0, v0, v1

    if-lez v0, :cond_18

    .line 4833
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 4834
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

    .line 4835
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v3, Lorg/telegram/messenger/R$string;->SharedMediaTabFull2:I

    const-string v4, "SharedMediaTabFull2"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    goto :goto_b

    .line 4837
    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v3, Lorg/telegram/messenger/R$string;->SharedMediaTab2:I

    const-string v4, "SharedMediaTab2"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 4841
    :cond_18
    :goto_b
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v0, v0, v2

    if-lez v0, :cond_19

    .line 4842
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 4843
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v3, Lorg/telegram/messenger/R$string;->SharedFilesTab2:I

    const-string v4, "SharedFilesTab2"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 4846
    :cond_19
    iget-wide v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    const-string v2, "SharedMusicTab2"

    if-nez v0, :cond_1b

    .line 4847
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v0, v0, v5

    if-lez v0, :cond_1a

    .line 4848
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 4849
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v3, Lorg/telegram/messenger/R$string;->SharedLinksTab2:I

    const-string v4, "SharedLinksTab2"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 4852
    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v0, v0, v6

    if-lez v0, :cond_1c

    .line 4853
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 4854
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v3, Lorg/telegram/messenger/R$string;->SharedMusicTab2:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    goto :goto_c

    .line 4858
    :cond_1b
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v0, v0, v6

    if-lez v0, :cond_1c

    .line 4859
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 4860
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v3, Lorg/telegram/messenger/R$string;->SharedMusicTab2:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 4865
    :cond_1c
    :goto_c
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v2, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 4866
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v3, Lorg/telegram/messenger/R$string;->music_tab_playlist:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 4869
    :cond_1d
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v0, v0, v7

    if-lez v0, :cond_1e

    .line 4870
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 4871
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v2, Lorg/telegram/messenger/R$string;->SharedVoiceTab2:I

    const-string v3, "SharedVoiceTab2"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v2, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 4874
    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v0, v0, v8

    if-lez v0, :cond_1f

    .line 4875
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 4876
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v2, Lorg/telegram/messenger/R$string;->SharedGIFsTab2:I

    const-string v3, "SharedGIFsTab2"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 4879
    :cond_1f
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget v0, v0, v9

    if-lez v0, :cond_20

    .line 4880
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->hasTab(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 4881
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v2, Lorg/telegram/messenger/R$string;->SharedGroupsTab2:I

    const-string v3, "SharedGroupsTab2"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9, v2, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    .line 4885
    :cond_20
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getCurrentTabId()I

    move-result p1

    if-gez p1, :cond_21

    .line 4886
    sget v0, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne p1, v0, :cond_22

    .line 4887
    :cond_21
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$002(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;I)I

    .line 4889
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

    .line 278
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

    .line 281
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsAnimation:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    if-nez v0, :cond_1

    return v2

    .line 285
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

    .line 314
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

    move v7, v0

    move v8, v7

    move v3, v1

    .line 317
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ge v3, v9, :cond_6

    .line 318
    iget v9, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pointerId1:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    if-ne v9, v10, :cond_4

    move v7, v3

    .line 321
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

    .line 332
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

    .line 333
    iget-boolean v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    if-nez v3, :cond_a

    const v3, 0x3f8147ae    # 1.01f

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_8

    const v3, 0x3f7d70a4    # 0.99f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_a

    .line 334
    :cond_8
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    cmpl-float v0, v0, v6

    if-lez v0, :cond_9

    move v0, v2

    goto :goto_1

    :cond_9
    move v0, v1

    .line 335
    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchScaleUp:Z

    .line 337
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->startPinchToMediaColumnsCount(Z)V

    .line 339
    :cond_a
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    if-eqz v0, :cond_1a

    .line 340
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

    .line 341
    :cond_c
    iput v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsProgress:F

    goto :goto_3

    :cond_d
    if-eqz v0, :cond_e

    .line 343
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

    .line 345
    :goto_3
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsProgress:F

    cmpl-float v3, v0, v6

    if-eqz v3, :cond_f

    cmpl-float v3, v0, v5

    if-nez v3, :cond_13

    :cond_f
    cmpl-float v0, v0, v6

    if-nez v0, :cond_11

    .line 348
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    int-to-float v0, v0

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animateToColumnsCount:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    .line 349
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

    .line 350
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

    mul-float/2addr v4, v6

    float-to-int v4, v4

    mul-int/2addr v0, v3

    add-int/2addr v0, v4

    .line 352
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getItemCount()I

    move-result v3

    if-lt v0, v3, :cond_10

    .line 353
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v2

    .line 355
    :cond_10
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    .line 358
    :cond_11
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->finishPinchToMediaColumnsCount()V

    .line 359
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoChangeColumnsProgress:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_12

    .line 360
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchScaleUp:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchScaleUp:Z

    .line 363
    :cond_12
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchScaleUp:Z

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->startPinchToMediaColumnsCount(Z)V

    .line 364
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

    .line 367
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p1, p1, v1

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 368
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, p1, v1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    if-eqz v0, :cond_1a

    .line 369
    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    goto/16 :goto_6

    .line 326
    :cond_14
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybePinchToZoomTouchMode:Z

    .line 327
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybePinchToZoomTouchMode2:Z

    .line 328
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    .line 329
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->finishPinchToMediaColumnsCount()V

    return v1

    .line 372
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

    .line 373
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybePinchToZoomTouchMode2:Z

    .line 374
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybePinchToZoomTouchMode:Z

    .line 375
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    .line 376
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->finishPinchToMediaColumnsCount()V

    goto/16 :goto_6

    .line 286
    :cond_18
    :goto_5
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybePinchToZoomTouchMode:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isInPinchToZoomTouchMode:Z

    if-nez v0, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_19

    .line 287
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

    .line 289
    iput v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchScale:F

    .line 291
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pointerId1:I

    .line 292
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pointerId2:I

    .line 294
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 296
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

    .line 298
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 299
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

    .line 300
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

    .line 302
    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterX:I

    invoke-direct {p0, v3, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->selectPinchPosition(II)V

    .line 303
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybePinchToZoomTouchMode2:Z

    .line 305
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1a

    .line 306
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 308
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

    .line 310
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybePinchToZoomTouchMode:Z

    .line 379
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

    .line 3823
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimationInProgress:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 3825
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->backAnimation:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    .line 3826
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    .line 3827
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3828
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

    .line 3831
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    .line 3832
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

    .line 3833
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v5

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_1

    :cond_3
    move v5, v1

    :goto_1
    if-eqz v5, :cond_5

    .line 3837
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    .line 3838
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 3839
    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    .line 3841
    :cond_4
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimationInProgress:Z

    .line 3843
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimationInProgress:Z

    return v0

    :cond_6
    return v1
.end method

.method public closeActionMode()Z
    .locals 4

    .line 4071
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    .line 4073
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4075
    :cond_0
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantDeleteMessagesCount:I

    .line 4076
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    .line 4077
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->showActionMode(Z)V

    .line 4078
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateRowsSelection()V

    return v0

    :cond_1
    return v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 4133
    sget v2, Lorg/telegram/messenger/NotificationCenter;->playlistDidChanged:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_3

    .line 4134
    aget-object v1, p3, v4

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4136
    aget-object v1, p3, v3

    check-cast v1, Ljava/util/List;

    .line 4137
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 4138
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlist:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4141
    :cond_0
    aget-object v1, p3, v3

    check-cast v1, Ljava/util/List;

    .line 4142
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 4143
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4146
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v1, :cond_2

    .line 4147
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4149
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v1, :cond_5f

    .line 4150
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_21

    .line 4153
    :cond_3
    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoad:I

    const/4 v5, 0x6

    const/4 v6, 0x3

    const/4 v7, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x2

    if-ne v1, v2, :cond_2f

    .line 4154
    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 4155
    aget-object v13, p3, v6

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x7

    .line 4156
    aget-object v15, p3, v14

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 4157
    aget-object v16, p3, v11

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 4158
    aget-object v16, p3, v5

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eq v10, v5, :cond_4

    if-ne v10, v14, :cond_5

    :cond_4
    move v10, v3

    .line 4164
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

    .line 4166
    aget-object v5, v5, v10

    aget-object v13, p3, v4

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->totalCount:I

    .line 4168
    :cond_6
    aget-object v5, p3, v12

    check-cast v5, Ljava/util/ArrayList;

    .line 4170
    iget-wide v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v13, v14}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v13

    .line 4171
    iget-wide v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    cmp-long v1, v1, v14

    if-nez v1, :cond_7

    move v1, v3

    goto :goto_2

    :cond_7
    move v1, v4

    .line 4175
    :goto_2
    sget v2, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v10, v2, :cond_8

    .line 4176
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_3

    :cond_8
    if-nez v10, :cond_9

    .line 4179
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    goto :goto_3

    :cond_9
    if-ne v10, v4, :cond_a

    .line 4181
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_3

    :cond_a
    if-ne v10, v12, :cond_b

    .line 4183
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_3

    :cond_b
    if-ne v10, v6, :cond_c

    .line 4185
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    goto :goto_3

    :cond_c
    if-ne v10, v11, :cond_d

    .line 4187
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_3

    :cond_d
    if-ne v10, v7, :cond_e

    .line 4189
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    goto :goto_3

    :cond_e
    const/4 v2, 0x0

    .line 4192
    :goto_3
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v6, v6, v10

    iget-object v6, v6, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v2, :cond_f

    .line 4194
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v11

    .line 4195
    instance-of v14, v2, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    if-eqz v14, :cond_10

    .line 4196
    move-object v14, v2

    check-cast v14, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    .line 4197
    invoke-virtual {v14}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifySectionsChanged()V

    goto :goto_4

    :cond_f
    move v11, v3

    .line 4202
    :cond_10
    :goto_4
    iget-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v14, v14, v10

    iput-boolean v3, v14, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    .line 4204
    new-instance v14, Landroid/util/SparseBooleanArray;

    invoke-direct {v14}, Landroid/util/SparseBooleanArray;-><init>()V

    if-eqz v16, :cond_13

    .line 4207
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v15, v4

    :goto_5
    if-ltz v15, :cond_12

    .line 4208
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    .line 4209
    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v8, v8, v10

    invoke-virtual {v8, v12, v1, v4, v13}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;IZZ)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 4211
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-virtual {v14, v8, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4212
    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v8, v8, v10

    invoke-static {v8}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$710(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    .line 4213
    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v8, v8, v10

    invoke-static {v8}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result v8

    if-gez v8, :cond_11

    .line 4214
    iget-object v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v8, v8, v10

    invoke-static {v8, v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$702(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;I)I

    :cond_11
    add-int/lit8 v15, v15, -0x1

    const/4 v12, 0x2

    goto :goto_5

    .line 4218
    :cond_12
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v5, v5, v10

    aget-object v7, p3, v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startReached:Z

    .line 4219
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v7, v5, v10

    iget-boolean v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startReached:Z

    if-eqz v7, :cond_17

    .line 4220
    aget-object v5, v5, v10

    invoke-static {v5, v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$702(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;I)I

    goto/16 :goto_7

    :cond_13
    move v8, v3

    .line 4223
    :goto_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_15

    .line 4224
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    .line 4225
    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v12, v12, v10

    invoke-virtual {v12, v9, v1, v3, v13}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;IZZ)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 4226
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-virtual {v14, v9, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4227
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v9, v9, v10

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$7510(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    .line 4228
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v9, v9, v10

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$7500(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result v9

    if-gez v9, :cond_14

    .line 4229
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v9, v9, v10

    invoke-static {v9, v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$7502(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;I)I

    :cond_14
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 4233
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

    .line 4234
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

    .line 4236
    :cond_16
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v5, v5, v10

    iget-object v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-object v7, p3, v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    aput-boolean v7, v5, v1

    .line 4237
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v7, v5, v10

    iget-object v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v7, v7, v1

    if-eqz v7, :cond_17

    .line 4238
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

    .line 4241
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v7, v5, v10

    iget-object v7, v7, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v1, v7, v1

    if-eqz v1, :cond_18

    iget-wide v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    const-wide/16 v12, 0x0

    cmp-long v1, v7, v12

    if-eqz v1, :cond_18

    .line 4242
    aget-object v1, v5, v10

    iput-boolean v4, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    .line 4243
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

    .line 4247
    :goto_8
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v8, v7

    if-ge v5, v8, :cond_1a

    .line 4248
    aget-object v7, v7, v5

    invoke-static {v7}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v7

    if-ne v7, v2, :cond_19

    .line 4249
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v5

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v1

    .line 4250
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v7, v7, v5

    invoke-static {v7}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 4253
    :cond_1a
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    .line 4254
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    if-ne v2, v7, :cond_1c

    .line 4255
    invoke-virtual {v7}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getItemCount()I

    move-result v7

    if-ne v7, v11, :cond_1b

    .line 4256
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    goto :goto_9

    .line 4258
    :cond_1b
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_9

    .line 4262
    :cond_1c
    :try_start_0
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4267
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

    .line 4269
    invoke-direct {v0, v1, v11, v14}, Lorg/telegram/ui/Components/SharedMediaLayout;->animateItemsEnter(Lorg/telegram/ui/Components/RecyclerListView;ILandroid/util/SparseBooleanArray;)V

    goto :goto_a

    :cond_1d
    if-eqz v1, :cond_1f

    .line 4272
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    if-eq v2, v7, :cond_1e

    if-lt v5, v11, :cond_1f

    .line 4273
    :cond_1e
    invoke-direct {v0, v1, v11, v14}, Lorg/telegram/ui/Components/SharedMediaLayout;->animateItemsEnter(Lorg/telegram/ui/Components/RecyclerListView;ILandroid/util/SparseBooleanArray;)V

    :cond_1f
    :goto_a
    if-eqz v1, :cond_22

    .line 4276
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v2, v10

    iget-boolean v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loadingAfterFastScroll:Z

    if-nez v2, :cond_22

    if-nez v6, :cond_21

    move v2, v3

    :goto_b
    const/4 v5, 0x2

    if-ge v2, v5, :cond_22

    .line 4279
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v5

    if-nez v5, :cond_20

    .line 4280
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getPositionForIndex(I)I

    move-result v5

    .line 4281
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v6, v5, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 4285
    :cond_21
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->saveScrollPosition()V

    .line 4289
    :cond_22
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v2, v1, v10

    iget-boolean v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loadingAfterFastScroll:Z

    if-eqz v2, :cond_24

    .line 4290
    aget-object v1, v1, v10

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_23

    .line 4291
    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->loadFromStart(I)V

    goto :goto_c

    .line 4293
    :cond_23
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    aget-object v1, v1, v10

    iput-boolean v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loadingAfterFastScroll:Z

    .line 4296
    :cond_24
    :goto_c
    iput-boolean v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrolling:Z

    goto/16 :goto_21

    .line 4297
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

    .line 4298
    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->fillMediaData(I)Z

    move-result v1

    if-eqz v1, :cond_5f

    if-nez v10, :cond_26

    .line 4301
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    goto :goto_d

    :cond_26
    if-ne v10, v4, :cond_27

    .line 4303
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_d

    :cond_27
    const/4 v1, 0x2

    if-ne v10, v1, :cond_28

    .line 4305
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_d

    :cond_28
    if-ne v10, v6, :cond_29

    .line 4307
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    goto :goto_d

    :cond_29
    if-ne v10, v11, :cond_2a

    .line 4309
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_d

    :cond_2a
    if-ne v10, v7, :cond_2b

    .line 4311
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    goto :goto_d

    :cond_2b
    const/4 v10, 0x0

    :goto_d
    if-eqz v10, :cond_2e

    .line 4314
    :goto_e
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v2, v1

    if-ge v3, v2, :cond_2d

    .line 4315
    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-ne v1, v10, :cond_2c

    .line 4316
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 4319
    :cond_2d
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4321
    :cond_2e
    iput-boolean v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrolling:Z

    goto/16 :goto_21

    .line 4324
    :cond_2f
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    const/4 v8, -0x1

    if-ne v1, v2, :cond_43

    const/4 v2, 0x2

    .line 4325
    aget-object v1, p3, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_30

    return-void

    .line 4330
    :cond_30
    iget-wide v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 4331
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

    .line 4333
    :goto_f
    aget-object v1, p3, v4

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 4335
    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_34

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-nez v7, :cond_32

    .line 4336
    iget-wide v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    cmp-long v5, v12, v5

    if-eqz v5, :cond_32

    move v1, v4

    goto :goto_11

    .line 4338
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

    .line 4346
    :goto_11
    aget-object v2, p3, v3

    check-cast v2, Ljava/util/ArrayList;

    .line 4349
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v3

    move v7, v6

    :goto_12
    if-ge v6, v5, :cond_38

    move v9, v3

    .line 4350
    :goto_13
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length v12, v10

    if-ge v9, v12, :cond_37

    .line 4351
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

    .line 4358
    :cond_38
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 4359
    invoke-static/range {p2 .. p2}, Lcom/iMe/fork/controller/MusicController;->getInstance(I)Lcom/iMe/fork/controller/MusicController;

    move-result-object v1

    iget-wide v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-virtual {v1, v5, v6, v2}, Lcom/iMe/fork/controller/MusicController;->removePlaylistMessage(JLjava/util/List;)V

    :cond_39
    if-eqz v7, :cond_42

    .line 4363
    iput-boolean v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrolling:Z

    .line 4365
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v1, :cond_3a

    .line 4366
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4369
    :cond_3a
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    if-eqz v1, :cond_3b

    .line 4370
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4372
    :cond_3b
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v1, :cond_3c

    .line 4373
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4375
    :cond_3c
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v1, :cond_3d

    .line 4376
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4378
    :cond_3d
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    if-eqz v1, :cond_3e

    .line 4379
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    .line 4381
    :cond_3e
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v1, :cond_3f

    .line 4382
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4384
    :cond_3f
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    if-eqz v1, :cond_40

    .line 4385
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_40
    if-eqz v8, :cond_41

    if-eq v8, v4, :cond_41

    const/4 v1, 0x2

    if-eq v8, v1, :cond_41

    if-ne v8, v11, :cond_42

    .line 4389
    :cond_41
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->loadFastScrollData(Z)V

    .line 4392
    :cond_42
    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/SharedMediaLayout;->getMediaPage(I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    goto/16 :goto_21

    .line 4393
    :cond_43
    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    if-ne v1, v2, :cond_54

    const/4 v2, 0x2

    .line 4394
    aget-object v1, p3, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_44

    return-void

    .line 4398
    :cond_44
    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 4399
    iget-wide v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    cmp-long v1, v1, v9

    if-nez v1, :cond_5f

    .line 4400
    aget-object v1, p3, v4

    check-cast v1, Ljava/util/ArrayList;

    .line 4401
    invoke-static {v9, v10}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v2

    move v5, v3

    move v9, v5

    .line 4403
    :goto_14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_49

    .line 4404
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessageObject;

    .line 4405
    iget-object v12, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v12}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v12

    if-eqz v12, :cond_48

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z

    move-result v12

    if-eqz v12, :cond_45

    goto :goto_16

    .line 4408
    :cond_45
    iget-object v12, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v12}, Lorg/telegram/messenger/MediaDataController;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v12

    if-ne v12, v8, :cond_46

    return-void

    .line 4412
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

    .line 4414
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
    if-eqz v9, :cond_5f

    .line 4418
    iput-boolean v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrolling:Z

    .line 4419
    :goto_17
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v2, v1

    if-ge v3, v2, :cond_53

    .line 4422
    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    sget v2, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v1, v2, :cond_4a

    .line 4423
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    :goto_18
    const/4 v2, 0x2

    :goto_19
    const/4 v5, 0x5

    goto :goto_1a

    .line 4425
    :cond_4a
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    if-nez v1, :cond_4b

    .line 4426
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    goto :goto_18

    .line 4427
    :cond_4b
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    if-ne v1, v4, :cond_4c

    .line 4428
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_18

    .line 4429
    :cond_4c
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4d

    .line 4430
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_19

    .line 4431
    :cond_4d
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    if-ne v1, v6, :cond_4e

    .line 4432
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    goto :goto_19

    .line 4433
    :cond_4e
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    if-ne v1, v11, :cond_4f

    .line 4434
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    goto :goto_19

    .line 4435
    :cond_4f
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    const/4 v5, 0x5

    if-ne v1, v5, :cond_50

    .line 4436
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    goto :goto_1a

    :cond_50
    const/4 v1, 0x0

    :goto_1a
    if-eqz v1, :cond_52

    .line 4439
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 4441
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v1, :cond_51

    .line 4442
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4445
    :cond_51
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4446
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4447
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4448
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    .line 4449
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4450
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_17

    .line 4453
    :cond_53
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateTabs(Z)V

    goto/16 :goto_21

    .line 4456
    :cond_54
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    if-ne v1, v2, :cond_56

    .line 4457
    aget-object v1, p3, v5

    check-cast v1, Ljava/lang/Boolean;

    .line 4458
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_55

    return-void

    .line 4461
    :cond_55
    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/Integer;

    .line 4462
    aget-object v2, p3, v4

    check-cast v2, Ljava/lang/Integer;

    .line 4463
    :goto_1b
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length v5, v4

    if-ge v3, v5, :cond_5f

    .line 4464
    aget-object v4, v4, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->replaceMid(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 4466
    :cond_56
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    if-eq v1, v2, :cond_57

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-eq v1, v2, :cond_57

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-ne v1, v2, :cond_5f

    .line 4467
    :cond_57
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-eq v1, v2, :cond_5c

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-ne v1, v2, :cond_58

    goto :goto_1e

    .line 4482
    :cond_58
    aget-object v1, p3, v3

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 4483
    iget-wide v1, v1, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_59

    return-void

    :cond_59
    move v1, v3

    .line 4486
    :goto_1c
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v5, v2

    if-ge v1, v5, :cond_5f

    .line 4487
    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v5, v3

    :goto_1d
    if-ge v5, v2, :cond_5b

    .line 4489
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4490
    instance-of v7, v6, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v7, :cond_5a

    .line 4491
    check-cast v6, Lorg/telegram/ui/Cells/SharedAudioCell;

    .line 4492
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    if-eqz v7, :cond_5a

    .line 4494
    invoke-virtual {v6, v3, v4}, Lorg/telegram/ui/Cells/SharedAudioCell;->updateButtonState(ZZ)V

    :cond_5a
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_5c
    :goto_1e
    move v1, v3

    .line 4468
    :goto_1f
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v5, v2

    if-ge v1, v5, :cond_5f

    .line 4469
    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v5, v3

    :goto_20
    if-ge v5, v2, :cond_5e

    .line 4471
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4472
    instance-of v7, v6, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v7, :cond_5d

    .line 4473
    check-cast v6, Lorg/telegram/ui/Cells/SharedAudioCell;

    .line 4474
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    if-eqz v7, :cond_5d

    .line 4476
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

    .line 2987
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    if-eqz v0, :cond_0

    .line 2988
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2989
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2990
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;->drawBackground(Landroid/graphics/Canvas;)V

    .line 2991
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2993
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2994
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentContextView;->isCallStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2995
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2996
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2997
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->setDrawOverlay(Z)V

    .line 2998
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2999
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->setDrawOverlay(Z)V

    .line 3000
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public dispatchFastScrollEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 250
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 251
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

    .line 252
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

    .line 3100
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .line 7301
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-ne p2, v0, :cond_0

    .line 7302
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7303
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

    .line 7304
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 7305
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 7308
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public drawListForBlur(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 440
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 441
    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    .line 442
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 443
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 444
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

    .line 445
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 446
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

    .line 447
    invoke-virtual {v3, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 448
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

    .line 3780
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->forceHasOverlappingRendering(Z)V

    return-void
.end method

.method public getClosestTab()I
    .locals 4

    .line 3364
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3365
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimationInProgress:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->backAnimation:Z

    if-nez v0, :cond_0

    .line 3366
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    return v0

    .line 3367
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

    .line 3368
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    return v0

    .line 3371
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getCurrentTabId()I

    move-result v0

    return v0
.end method

.method public getCurrentListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 2

    .line 3858
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public getMembersFilterItem()Landroid/widget/ImageView;
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersFilterItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMembersMenuItem()Landroid/widget/ImageView;
    .locals 1

    .line 164
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
    move p1, v4

    goto :goto_4

    :cond_0
    if-ne p1, v4, :cond_1

    :goto_1
    move p1, v2

    goto :goto_4

    :cond_1
    if-ne p1, v2, :cond_2

    goto :goto_3

    :cond_2
    if-ne p1, v3, :cond_3

    goto :goto_2

    :cond_3
    if-ne p1, v5, :cond_9

    move p1, v1

    goto :goto_4

    :cond_4
    if-ne p1, v1, :cond_5

    :goto_2
    move p1, v5

    goto :goto_4

    :cond_5
    if-ne p1, v5, :cond_6

    :goto_3
    move p1, v3

    goto :goto_4

    :cond_6
    if-ne p1, v3, :cond_7

    goto :goto_1

    :cond_7
    if-ne p1, v2, :cond_8

    goto :goto_0

    :cond_8
    if-ne p1, v4, :cond_9

    move p1, v0

    :cond_9
    :goto_4
    return p1
.end method

.method public getPhotosVideosTypeFilter()I
    .locals 2

    .line 423
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    return v0
.end method

.method public getSearchItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1

    .line 3345
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method public getSelectedTab()I
    .locals 1

    .line 3360
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getCurrentTabId()I

    move-result v0

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

    .line 7128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7130
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

    .line 7131
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v2, :cond_0

    .line 7132
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

    .line 7133
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

    .line 7137
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

    .line 7139
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

    .line 7141
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

    .line 7142
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    move-object v14, v2

    move/from16 v21, v23

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7143
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v2, :cond_1

    .line 7144
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

    .line 7145
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

    .line 7147
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v2, :cond_2

    .line 7148
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

    .line 7149
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

    .line 7151
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

    .line 7152
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

    .line 7154
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionModeLayout:Landroid/widget/LinearLayout;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v19, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    move-object v14, v2

    move/from16 v21, v10

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7155
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7157
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/16 v16, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaTimeBackground:I

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7158
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v5, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaTimeText:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7160
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

    .line 7161
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

    .line 7162
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

    .line 7163
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

    .line 7165
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

    .line 7166
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

    .line 7167
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

    .line 7168
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

    .line 7169
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

    .line 7171
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

    .line 7172
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

    .line 7174
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 7176
    new-instance v3, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda19;

    invoke-direct {v3, v0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;I)V

    .line 7192
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

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    move-object v4, v14

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7194
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

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    move-object v15, v4

    move/from16 v22, v29

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7195
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7196
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v15

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v17, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object v14, v4

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7197
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v31

    sget v32, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v37, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    move-object/from16 v30, v4

    invoke-direct/range {v30 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7199
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7200
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7202
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7204
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7205
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

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    move-object v14, v4

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7206
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7207
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7208
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7209
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7211
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7212
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7213
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7214
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

    .line 7215
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundOrange:I

    move-object v4, v14

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7216
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundViolet:I

    move-object v4, v14

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7217
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGreen:I

    move-object v4, v14

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7218
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundCyan:I

    move-object v4, v14

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7219
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    move-object v4, v14

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7220
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    move-object v4, v14

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7222
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7223
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7224
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7225
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7226
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7227
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7228
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7229
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7230
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7232
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7234
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7235
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7236
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7237
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7239
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7240
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7241
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7242
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7243
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7244
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7245
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7247
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7248
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7249
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7251
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7252
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7253
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v7, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    aput-object v4, v7, v13

    move-object v4, v15

    move/from16 v11, v42

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7255
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7256
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v7, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ContextLinkCell;

    aput-object v4, v7, v13

    move-object v4, v14

    move/from16 v11, v41

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7257
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v7, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ContextLinkCell;

    aput-object v4, v7, v13

    move-object v4, v14

    move/from16 v11, v42

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7259
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

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

    .line 7261
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v4

    iget-object v15, v4, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object v14, v3

    move/from16 v21, v49

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7262
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

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

.method protected invalidateBlur()V
    .locals 0

    return-void
.end method

.method public isCalendarItemVisible()Z
    .locals 2

    .line 3356
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

    .line 3854
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

    .line 246
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

    .line 156
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

    .line 191
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isMembersMenuVisible:Z

    return v0
.end method

.method public isPinnedToTop()Z
    .locals 1

    .line 427
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isPinnedToTop:Z

    return v0
.end method

.method public isSearchItemVisible()Z
    .locals 4

    .line 3349
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x7

    if-ne v0, v3, :cond_1

    .line 3350
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;->canSearchMembers()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isMembersMenuVisible:Z

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 3352
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

    move v1, v2

    :cond_2
    return v1
.end method

.method public isSwipeBackEnabled()Z
    .locals 1

    .line 419
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

    .line 3544
    sget v3, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_MUSIC_PLAYLIST:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_5

    .line 3545
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3546
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ltz v5, :cond_2

    move v3, v4

    .line 3548
    :goto_1
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 3549
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v6, v6, v5

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    if-lez v6, :cond_0

    .line 3551
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3552
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v6, v6, v5

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3555
    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 3557
    :cond_2
    iget v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantAddToPlaylistCount:I

    if-nez v3, :cond_3

    .line 3558
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMusicController()Lcom/iMe/fork/controller/MusicController;

    move-result-object v1

    iget-wide v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-virtual {v1, v3, v4, v2}, Lcom/iMe/fork/controller/MusicController;->addPlaylistMessage(JLjava/util/List;)V

    goto :goto_2

    .line 3559
    :cond_3
    iget v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->cantRemoveFromPlaylistCount:I

    if-nez v2, :cond_4

    .line 3560
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMusicController()Lcom/iMe/fork/controller/MusicController;

    move-result-object v2

    iget-wide v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-virtual {v2, v3, v4, v1}, Lcom/iMe/fork/controller/MusicController;->removePlaylistMessage(JLjava/util/List;)V

    .line 3562
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->closeActionMode()Z

    goto/16 :goto_9

    :cond_5
    const/16 v3, 0x65

    if-ne v2, v3, :cond_b

    .line 3566
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

    .line 3567
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    if-ltz v5, :cond_7

    move v2, v4

    .line 3569
    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 3570
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v3, v3, v5

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3572
    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 3574
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->closeActionMode()Z

    .line 3575
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMusicController()Lcom/iMe/fork/controller/MusicController;

    move-result-object v2

    iget-wide v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-virtual {v2, v3, v4, v1}, Lcom/iMe/fork/controller/MusicController;->removePlaylistMessage(JLjava/util/List;)V

    return-void

    .line 3582
    :cond_8
    iget-wide v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 3583
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

    .line 3584
    :cond_9
    iget-wide v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->dialog_id:J

    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3585
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

    .line 3587
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

    .line 3589
    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v7, 0x0

    iget-wide v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    const/4 v10, 0x0

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->selectedFiles:[Landroid/util/SparseArray;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    new-instance v15, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda13;

    invoke-direct {v15, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    const/16 v16, 0x0

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v17, v1

    invoke-static/range {v3 .. v17}, Lorg/telegram/ui/Components/AlertsCreator;->createDeleteMessagesAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$ChatFull;JLorg/telegram/messenger/MessageObject;[Landroid/util/SparseArray;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZILjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_9

    :cond_b
    const/16 v3, 0x64

    if-eq v2, v3, :cond_13

    .line 3595
    sget v3, Lcom/iMe/common/IdFabric$Menu;->MESSAGE_FORWARD_CLOUD:I

    if-ne v2, v3, :cond_c

    goto/16 :goto_7

    :cond_c
    const/16 v1, 0x66

    if-ne v2, v1, :cond_1a

    .line 3703
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

    .line 3706
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

    .line 3707
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3708
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    .line 3709
    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 3710
    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v3

    const-string v7, "enc_id"

    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_6

    .line 3711
    :cond_f
    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "user_id"

    .line 3712
    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_6

    .line 3714
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

    .line 3715
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v7, :cond_11

    const-string v7, "migrated_to"

    .line 3716
    invoke-virtual {v2, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3717
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:J

    neg-long v5, v5

    :cond_11
    neg-long v7, v5

    const-string v3, "chat_id"

    .line 3719
    invoke-virtual {v2, v3, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3721
    :goto_6
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    const-string v7, "message_id"

    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "need_remove_previous_same_chat_activity"

    .line 3722
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3723
    new-instance v3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v3, v2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 3724
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    iput v8, v3, Lorg/telegram/ui/ChatActivity;->highlightMessageId:I

    .line 3725
    iget v8, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    if-eqz v8, :cond_12

    .line 3726
    invoke-static {v5, v6, v8}, Lorg/telegram/messenger/MessagesStorage$TopicKey;->of(JI)Lorg/telegram/messenger/MessagesStorage$TopicKey;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->applyTopic(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagesStorage$TopicKey;)V

    .line 3727
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {v2, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3729
    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_9

    .line 3596
    :cond_13
    :goto_7
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_16

    .line 3597
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 3598
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->isChatNoForwards(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 3599
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fwdRestrictedHint:Lorg/telegram/ui/Components/HintView;

    if-eqz v2, :cond_15

    .line 3600
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

    .line 3601
    :cond_14
    sget v3, Lorg/telegram/messenger/R$string;->ForwardsRestrictedInfoGroup:I

    const-string v4, "ForwardsRestrictedInfoGroup"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 3600
    :goto_8
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    .line 3602
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fwdRestrictedHint:Lorg/telegram/ui/Components/HintView;

    invoke-virtual {v2, v1, v5}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    :cond_15
    return-void

    .line 3607
    :cond_16
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->hasNoforwardsMessage()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3608
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fwdRestrictedHint:Lorg/telegram/ui/Components/HintView;

    if-eqz v2, :cond_17

    .line 3609
    sget v3, Lorg/telegram/messenger/R$string;->ForwardsRestrictedInfoBot:I

    const-string v4, "ForwardsRestrictedInfoBot"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    .line 3610
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->fwdRestrictedHint:Lorg/telegram/ui/Components/HintView;

    invoke-virtual {v2, v1, v5}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    :cond_17
    return-void

    .line 3615
    :cond_18
    sget v1, Lcom/iMe/common/IdFabric$Menu;->MESSAGE_FORWARD_CLOUD:I

    if-ne v2, v1, :cond_19

    .line 3616
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->forwardCloud()V

    return-void

    .line 3621
    :cond_19
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "onlySelect"

    .line 3622
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "canSelectTopics"

    .line 3623
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v2, 0x3

    const-string v3, "dialogsType"

    .line 3624
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3625
    new-instance v2, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 3626
    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda23;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 3701
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1a
    :goto_9
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 4659
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    .line 4660
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 4661
    aget-object v0, v0, p1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4663
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v0, p1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 4664
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

    .line 3391
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->playlistDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3392
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3393
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3394
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3395
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3396
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3397
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3398
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->profileActivity:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 3850
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

    .line 3799
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 3800
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

    .line 3802
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 3805
    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 3807
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_5

    .line 3809
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 3810
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    goto :goto_2

    .line 3813
    :cond_2
    instance-of v4, v10, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    if-eqz v4, :cond_3

    const/4 v7, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 3814
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v10

    move v6, p1

    invoke-virtual/range {v4 .. v9}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 3815
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

    .line 3817
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

    .line 4643
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrolling:Z

    .line 4644
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    if-eqz v0, :cond_0

    .line 4645
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4647
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v0, :cond_1

    .line 4648
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4650
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    if-eqz v0, :cond_2

    .line 4651
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    :cond_2
    const/4 v0, 0x0

    .line 4653
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 4654
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

    .line 3863
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

    .line 3865
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 3866
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->velocityTracker:Landroid/view/VelocityTracker;

    .line 3868
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3870
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fwdRestrictedHint:Lorg/telegram/ui/Components/HintView;

    if-eqz v0, :cond_1

    .line 3871
    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintView;->hide()V

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 3874
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

    .line 3875
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTrackingPointerId:I

    .line 3876
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybeStartTracking:Z

    .line 3877
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTrackingX:I

    .line 3878
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTrackingY:I

    .line 3879
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_12

    :cond_2
    const/4 v2, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz p1, :cond_19

    .line 3880
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v4, :cond_19

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTrackingPointerId:I

    if-ne v6, v7, :cond_19

    .line 3881
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTrackingX:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    .line 3882
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTrackingY:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 3883
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

    move v8, v0

    goto :goto_0

    :cond_5
    move v8, v1

    .line 3884
    :goto_0
    invoke-direct {p0, p1, v8}, Lorg/telegram/ui/Components/SharedMediaLayout;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    move-result v8

    if-nez v8, :cond_7

    .line 3885
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybeStartTracking:Z

    .line 3886
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    .line 3887
    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v8, v8, v1

    invoke-virtual {v8, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3888
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

    .line 3889
    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    iget-object v9, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v9, v0

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v9

    invoke-virtual {v8, v9, v5}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectTabWithId(IF)V

    .line 3892
    :cond_7
    iget-boolean v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybeStartTracking:Z

    if-eqz v8, :cond_9

    iget-boolean v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    if-nez v8, :cond_9

    const v2, 0x3e99999a    # 0.3f

    .line 3893
    invoke-static {v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v2

    .line 3894
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_25

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v7, :cond_25

    if-gez v6, :cond_8

    move v1, v0

    .line 3895
    :cond_8
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    goto/16 :goto_12

    .line 3897
    :cond_9
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    if-eqz p1, :cond_25

    .line 3898
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p1, p1, v1

    int-to-float v7, v6

    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3899
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animatingForward:Z

    if-eqz p1, :cond_a

    .line 3900
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v7, p1, v0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v6

    int-to-float p1, p1

    invoke-virtual {v7, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_2

    .line 3902
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v7, p1, v0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    sub-int p1, v6, p1

    int-to-float p1, p1

    invoke-virtual {v7, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3904
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

    .line 3905
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 3906
    iget v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemState:I

    if-ne v6, v4, :cond_b

    .line 3907
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sub-float v6, v3, p1

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_3

    :cond_b
    if-ne v6, v0, :cond_c

    .line 3909
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3913
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
    move v4, v5

    .line 3916
    :goto_4
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v6

    if-nez v6, :cond_e

    sub-float v4, v3, p1

    .line 3919
    :cond_e
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3920
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_10

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_5

    :cond_f
    move v4, v1

    goto :goto_6

    :cond_10
    :goto_5
    move v4, v2

    :goto_6
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3924
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v6, v4, v0

    const/4 v7, 0x7

    if-eqz v6, :cond_12

    aget-object v4, v4, v0

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    if-ne v4, v7, :cond_12

    .line 3926
    iget-boolean v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isMembersMenuVisible:Z

    if-eqz v4, :cond_11

    move v4, p1

    goto :goto_7

    :cond_11
    move v4, p1

    move v6, v5

    goto :goto_8

    :cond_12
    move v4, v5

    :goto_7
    move v6, v4

    .line 3930
    :goto_8
    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v8, v8, v1

    invoke-static {v8}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v8

    if-ne v8, v7, :cond_13

    sub-float v4, v3, p1

    .line 3932
    iget-boolean v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isMembersMenuVisible:Z

    if-eqz v3, :cond_13

    move v6, v4

    .line 3936
    :cond_13
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersFilterItem:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3937
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersFilterItem:Landroid/widget/ImageView;

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_15

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v4

    if-nez v4, :cond_14

    goto :goto_9

    :cond_14
    move v4, v1

    goto :goto_a

    :cond_15
    :goto_9
    move v4, v2

    :goto_a
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3938
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3939
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    cmpl-float v4, v6, v5

    if-eqz v4, :cond_16

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v4

    if-nez v4, :cond_17

    :cond_16
    move v1, v2

    :cond_17
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    .line 3942
    :cond_18
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3944
    :goto_b
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v0, v2, v0

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectTabWithId(IF)V

    .line 3945
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->onSelectedTabChanged()V

    goto/16 :goto_12

    :cond_19
    const/4 v6, 0x3

    if-eqz p1, :cond_1a

    .line 3947
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

    .line 3948
    :cond_1a
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    iget v9, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maximumVelocity:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    if-eqz p1, :cond_1c

    .line 3951
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-eq v7, v6, :cond_1c

    .line 3952
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    .line 3953
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    .line 3954
    iget-boolean v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    if-nez v8, :cond_1d

    .line 3955
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

    move v8, v0

    goto :goto_c

    :cond_1b
    move v8, v1

    .line 3956
    :goto_c
    invoke-direct {p0, p1, v8}, Lorg/telegram/ui/Components/SharedMediaLayout;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    goto :goto_d

    :cond_1c
    move v6, v5

    move v7, v6

    .line 3963
    :cond_1d
    :goto_d
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    if-eqz p1, :cond_24

    .line 3964
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getX()F

    move-result p1

    .line 3965
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    .line 3966
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
    move v7, v0

    goto :goto_e

    :cond_1f
    move v7, v1

    :goto_e
    iput-boolean v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->backAnimation:Z

    if-eqz v7, :cond_21

    .line 3970
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 3971
    iget-boolean v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animatingForward:Z

    if-eqz v7, :cond_20

    .line 3972
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v4, [Landroid/animation/Animator;

    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v8, v8, v1

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v0, [F

    aput v5, v10, v1

    .line 3973
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v4, v1

    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v8, v0

    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v11, v0, [F

    aget-object v8, v8, v0

    .line 3974
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    aput v8, v11, v1

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v4, v0

    .line 3972
    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_f

    .line 3977
    :cond_20
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v4, [Landroid/animation/Animator;

    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v8, v8, v1

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v0, [F

    aput v5, v10, v1

    .line 3978
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v4, v1

    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v8, v0

    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v11, v0, [F

    aget-object v8, v8, v0

    .line 3979
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v11, v1

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v4, v0

    .line 3977
    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_f

    .line 3983
    :cond_21
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float p1, v7, p1

    .line 3984
    iget-boolean v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->animatingForward:Z

    if-eqz v7, :cond_22

    .line 3985
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v4, [Landroid/animation/Animator;

    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v8, v1

    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v11, v0, [F

    aget-object v8, v8, v1

    .line 3986
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

    .line 3987
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v4, v0

    .line 3985
    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_f

    .line 3990
    :cond_22
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v4, [Landroid/animation/Animator;

    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v9, v8, v1

    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v11, v0, [F

    aget-object v8, v8, v1

    .line 3991
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

    .line 3992
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v4, v0

    .line 3990
    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3996
    :goto_f
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    sget-object v7, Lorg/telegram/ui/Components/SharedMediaLayout;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3998
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    .line 3999
    div-int/lit8 v7, v4, 0x2

    mul-float v8, p1, v3

    int-to-float v4, v4

    div-float/2addr v8, v4

    .line 4000
    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    int-to-float v7, v7

    .line 4001
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->distanceInfluenceForSnapDuration(F)F

    move-result v4

    mul-float/2addr v4, v7

    add-float/2addr v7, v4

    .line 4002
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v5, v4, v5

    if-lez v5, :cond_23

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr v7, v4

    .line 4005
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/2addr p1, v2

    goto :goto_10

    .line 4007
    :cond_23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    add-float/2addr p1, v3

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    :goto_10
    const/16 v2, 0x96

    const/16 v3, 0x258

    .line 4010
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4012
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4013
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$26;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$26;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4051
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 4052
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->tabsAnimationInProgress:Z

    .line 4053
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    .line 4054
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->onSelectedTabChanged()V

    goto :goto_11

    .line 4056
    :cond_24
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->maybeStartTracking:Z

    .line 4057
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 4058
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setEnabled(Z)V

    .line 4060
    :goto_11
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_25

    .line 4061
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 4062
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->velocityTracker:Landroid/view/VelocityTracker;

    .line 4065
    :cond_25
    :goto_12
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->startedTracking:Z

    return p1

    :cond_26
    return v1
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 6

    .line 4677
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_0

    .line 4678
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iget-wide v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    cmp-long p1, v4, v2

    if-nez p1, :cond_0

    neg-long v0, v0

    .line 4679
    iput-wide v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mergeDialogId:J

    const/4 p1, 0x0

    move v0, p1

    .line 4680
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedMediaData:[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 4681
    aget-object v2, v1, v0

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->max_id:[I

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_max_id:I

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 4682
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

    .line 4688
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    if-nez v0, :cond_0

    .line 4689
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3702(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;Lorg/telegram/tgnet/TLRPC$ChatFull;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 4690
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->chatUsersAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->access$3602(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    const/4 p1, 0x1

    .line 4692
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateTabs(Z)V

    const/4 p1, 0x0

    .line 4693
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v0, p2

    if-ge p1, v0, :cond_2

    .line 4694
    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p2

    const/4 v0, 0x7

    if-ne p2, v0, :cond_1

    .line 4695
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

    .line 3535
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->topicId:I

    if-nez v0, :cond_0

    .line 3536
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    const/4 v1, 0x6

    aput p1, v0, v1

    :cond_0
    const/4 p1, 0x1

    .line 3538
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateTabs(Z)V

    .line 3539
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->checkCurrentTabValid()V

    return-void
.end method

.method public setForwardRestrictedHint(Lorg/telegram/ui/Components/HintView;)V
    .locals 0

    .line 2601
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fwdRestrictedHint:Lorg/telegram/ui/Components/HintView;

    return-void
.end method

.method public setMembersMenuVisible(ZLcom/iMe/model/group/GroupMembersFilter;)V
    .locals 7

    .line 168
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isMembersMenuVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 171
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isMembersMenuVisible:Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    .line 173
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

    .line 174
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

    .line 175
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 177
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 178
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 179
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 181
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 182
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 183
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 185
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 186
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->membersMenuItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public setMergeDialogId(J)V
    .locals 0

    .line 4747
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

    .line 3414
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

    .line 3419
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    invoke-static {p1, v0, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3420
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateTabs(Z)V

    if-nez v1, :cond_2

    .line 3421
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getCurrentTabId()I

    move-result p1

    if-ne p1, v3, :cond_2

    .line 3422
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->resetTab()V

    .line 3424
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout;->checkCurrentTabValid()V

    .line 3425
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->hasMedia:[I

    aget p1, p1, v0

    if-ltz p1, :cond_3

    .line 3426
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->loadFastScrollData(Z)V

    :cond_3
    return-void
.end method

.method public setOnLoadMoreMembersListener(Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->onLoadMoreMembersListener:Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;

    return-void
.end method

.method public setPadding(IIII)V
    .locals 2

    .line 3788
    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->topPadding:I

    const/4 p1, 0x0

    move p3, p1

    .line 3789
    :goto_0
    iget-object p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v0, p4

    if-ge p3, v0, :cond_0

    .line 3790
    aget-object p4, p4, p3

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->topPadding:I

    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->lastMeasuredTopPadding:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p4, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 3792
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/16 p4, 0x30

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v0, p2

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    int-to-float p2, p2

    .line 3793
    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->additionalFloatingTranslation:F

    .line 3794
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

    .line 431
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isPinnedToTop:Z

    if-eq v0, p1, :cond_0

    .line 432
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isPinnedToTop:Z

    const/4 p1, 0x0

    .line 433
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 434
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

    .line 4086
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, 0x0

    .line 4087
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 4088
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, p1

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 4089
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->mediaPages:[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4090
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

    .line 4702
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->playlistAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v0, :cond_0

    .line 4703
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4706
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    if-eqz v0, :cond_1

    .line 4707
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4709
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->documentsAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v0, :cond_2

    .line 4710
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4712
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->voiceAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v0, :cond_3

    .line 4713
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4715
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->linksAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;

    if-eqz v0, :cond_4

    .line 4716
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    .line 4718
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->audioAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    if-eqz v0, :cond_5

    .line 4719
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4721
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->gifAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    if-eqz v0, :cond_6

    .line 4722
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_6
    return-void
.end method

.method public updateFastScrollVisibility(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Z)V
    .locals 11

    .line 514
    iget-boolean v0, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollEnabled:Z

    const/4 v1, 0x1

    .line 536
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 514
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout;->isPinnedToTop:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    .line 515
    :goto_0
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v4

    .line 516
    iget-object v5, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_1

    .line 517
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 518
    iget-object v5, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-nez p2, :cond_4

    .line 521
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    .line 522
    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v6

    .line 523
    :goto_2
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 524
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 525
    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleX(F)V

    .line 526
    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_3

    :cond_4
    const-wide/16 v7, 0x96

    const/4 p2, 0x0

    const/4 v9, 0x2

    if-eqz v0, :cond_6

    .line 527
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_6

    .line 528
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 529
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    .line 530
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 531
    invoke-virtual {v4, p2}, Landroid/view/View;->setAlpha(F)V

    .line 533
    :cond_5
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v9, [F

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v6

    aput v6, v0, v3

    aput v5, v0, v1

    invoke-static {v4, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 534
    iput-object p2, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollAnimator:Landroid/animation/ObjectAnimator;

    .line 535
    invoke-virtual {p2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 536
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    if-nez v0, :cond_7

    .line 537
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 539
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v9, [F

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v5

    aput v5, v2, v3

    aput p2, v2, v1

    invoke-static {v4, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 540
    new-instance v0, Lorg/telegram/ui/Components/HideViewAfterAnimation;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/HideViewAfterAnimation;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 541
    iput-object p2, p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollAnimator:Landroid/animation/ObjectAnimator;

    .line 542
    invoke-virtual {p2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 543
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 545
    invoke-virtual {v4, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_7
    :goto_3
    return-void
.end method
