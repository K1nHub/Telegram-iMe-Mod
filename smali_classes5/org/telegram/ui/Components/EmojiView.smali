.class public Lorg/telegram/ui/Components/EmojiView;
.super Lcom/smedialink/ui/base/mvp/view/MvpFrameLayout;
.source "EmojiView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lcom/smedialink/ui/kikliko/EmojiViewView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/EmojiView$Tab;,
        Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;,
        Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;,
        Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;,
        Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;,
        Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;,
        Lorg/telegram/ui/Components/EmojiView$GifAdapter;,
        Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;,
        Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;,
        Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;,
        Lorg/telegram/ui/Components/EmojiView$EmojiPack;,
        Lorg/telegram/ui/Components/EmojiView$CustomEmoji;,
        Lorg/telegram/ui/Components/EmojiView$EmojiPackExpand;,
        Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;,
        Lorg/telegram/ui/Components/EmojiView$TrendingListView;,
        Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;,
        Lorg/telegram/ui/Components/EmojiView$EmojiGridSpacing;,
        Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;,
        Lorg/telegram/ui/Components/EmojiView$EmojiPackButton;,
        Lorg/telegram/ui/Components/EmojiView$EmojiGridView;,
        Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;,
        Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;,
        Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;,
        Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;,
        Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;,
        Lorg/telegram/ui/Components/EmojiView$SearchField;,
        Lorg/telegram/ui/Components/EmojiView$DragListener;,
        Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;
    }
.end annotation


# static fields
.field private static final NOP:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field public static TAB_KIKLIKO:I = 0x3

.field private static final observers:[I

.field private static final superListenerField:Ljava/lang/reflect/Field;


# instance fields
.field private allTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/EmojiView$Tab;",
            ">;"
        }
    .end annotation
.end field

.field private allowAnimatedEmoji:Z

.field private allowEmojisForNonPremium:Z

.field private animateExpandFromButton:Landroid/view/View;

.field private animateExpandFromPosition:I

.field private animateExpandStartTime:J

.field private animateExpandToPosition:I

.field private animatedEmojiDrawables:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/ui/Components/AnimatedEmojiDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private backspaceButton:Landroid/widget/ImageView;

.field private backspaceButtonAnimation:Landroid/animation/AnimatorSet;

.field private backspaceOnce:Z

.field private backspacePressed:Z

.field private bottomTabAdditionalTranslation:F

.field private bottomTabContainer:Landroid/widget/FrameLayout;

.field private bottomTabContainerAnimator:Landroid/animation/ValueAnimator;

.field private bottomTabContainerBackground:Landroid/view/View;

.field private bottomTabMainTranslation:F

.field private bulletinContainer:Landroid/widget/FrameLayout;

.field private final checkExpandKiklikoTabsRunnable:Ljava/lang/Runnable;

.field private checkExpandStickerTabsRunnable:Ljava/lang/Runnable;

.field private chooseStickerActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

.field public contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

.field public currentAccount:I

.field private currentBackgroundType:I

.field private currentChatId:J

.field private currentPage:I

.field private currentPreviewGif:Lorg/telegram/tgnet/TLRPC$Document;

.field private currentPreviewSticker:Lorg/telegram/tgnet/TLRPC$Document;

.field private currentTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/EmojiView$Tab;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

.field private dotPaint:Landroid/graphics/Paint;

.field private dragListener:Lorg/telegram/ui/Components/EmojiView$DragListener;

.field private emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

.field emojiBanned:Z

.field private emojiContainer:Landroid/widget/FrameLayout;

.field private emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

.field private emojiLastX:F

.field private emojiLastY:F

.field private emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private emojiLockDrawable:Landroid/graphics/drawable/Drawable;

.field private emojiLockPaint:Landroid/graphics/Paint;

.field private emojiPackAlertOpened:Z

.field emojiPagerAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;

.field private emojiScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

.field private emojiSearchAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

.field private emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

.field private emojiSize:I

.field private emojiSmoothScrolling:Z

.field private emojiTabShadowAnimator:Landroid/animation/AnimatorSet;

.field private emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

.field private emojiTabsShadow:Landroid/view/View;

.field private emojiTitles:[Ljava/lang/String;

.field private emojiTouchedView:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

.field private emojiTouchedX:F

.field private emojiTouchedY:F

.field private emojipacksProcessed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/EmojiView$EmojiPack;",
            ">;"
        }
    .end annotation
.end field

.field private expandKiklikoByDrag:Z

.field private expandStickersByDragg:Z

.field private expandedEmojiSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private favTabNum:I

.field private favouriteStickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private featuredEmojiSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private featuredStickerSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private firstEmojiAttach:Z

.field private firstGifAttach:Z

.field private firstKiklikoAttach:Z

.field private firstKiklikoTabUpdate:Z

.field private firstStickersAttach:Z

.field private firstTabUpdate:Z

.field private floatingButton:Landroid/widget/ImageView;

.field private forseMultiwindowLayout:Z

.field private fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field frozenStickerSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

.field private final gifCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$messages_BotResults;",
            ">;"
        }
    .end annotation
.end field

.field private gifContainer:Landroid/widget/FrameLayout;

.field private gifFirstEmojiTabNum:I

.field private gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private gifIcons:[Landroid/graphics/drawable/Drawable;

.field private gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

.field private gifOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

.field private gifRecentTabNum:I

.field private gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

.field private gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

.field private gifSearchPreloader:Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;

.field private gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

.field private gifTrendingTabNum:I

.field private groupStickerPackNum:I

.field private groupStickerPackPosition:I

.field private groupStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

.field private groupStickersHidden:Z

.field private hasChatStickers:Z

.field private hideStickersBan:Ljava/lang/Runnable;

.field private ignorePagerScroll:Z

.field private ignoreStickersScroll:Z

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field public installedEmojiSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private installingStickerSets:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private final isAvatarMode:Z

.field private isGifsBanned:Z

.field private isKiklikoPrepareLoading:Z

.field private isKiklikoPrepared:Z

.field private isLayout:Z

.field private kiklikoAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

.field private kiklikoContainer:Landroid/widget/FrameLayout;

.field private kiklikoContainerAttached:Z

.field private kiklikoGridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private kiklikoLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

.field private kiklikoLoadingPreviewCanceled:Z

.field private kiklikoLoadingPreviewDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private kiklikoLoadingPreviewUrl:Ljava/lang/String;

.field private kiklikoLoadingPreviewView:Lorg/fork/ui/view/KiklikoGifView;

.field private kiklikoSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

.field private final kiklikoSearchByTyping:Ljava/lang/Runnable;

.field private kiklikoSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

.field private kiklikoTabContainer:Landroid/widget/FrameLayout;

.field private kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

.field private final kiklikoTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/network/model/response/kikliko/TagResponse;",
            ">;"
        }
    .end annotation
.end field

.field private kiklikoTrendsIcon:Landroid/graphics/drawable/Drawable;

.field private lastBottomScrollDy:F

.field private lastKiklikoSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

.field private lastNotifyWidth:I

.field private lastRecentArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastRecentCount:I

.field private lastSearchKeyboardLanguage:[Ljava/lang/String;

.field private lastStickersX:F

.field private location:[I

.field private mediaBanTooltip:Landroid/widget/TextView;

.field private needEmojiSearch:Z

.field private outlineProvider:Ljava/lang/Object;

.field private pager:Landroidx/viewpager/widget/ViewPager;

.field private pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

.field private pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

.field private popupHeight:I

.field private popupWidth:I

.field private premiumBulletin:Z

.field private premiumStickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private premiumTabNum:I

.field public presenter:Lcom/smedialink/ui/kikliko/EmojiViewPresenter;
    .annotation runtime Lmoxy/presenter/InjectPresenter;
    .end annotation
.end field

.field private primaryInstallingStickerSets:[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

.field private recentGifs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private recentStickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private recentTabNum:I

.field rect:Landroid/graphics/Rect;

.field private removingStickerSets:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private searchAnimation:Landroid/animation/AnimatorSet;

.field private searchButton:Landroid/widget/ImageView;

.field private searchFieldHeight:I

.field private searchIconDotDrawable:Landroid/graphics/drawable/Drawable;

.field private searchIconDrawable:Landroid/graphics/drawable/Drawable;

.field private setAvatarPreviewImage:Lorg/telegram/ui/Components/BackupImageView;

.field private setAvatarPreviewLayout:Landroid/widget/FrameLayout;

.field private shadowLine:Landroid/view/View;

.field private showStickersBanAnimator:Landroid/animation/AnimatorSet;

.field private showing:Z

.field private shownBottomTabAfterClick:J

.field private stickerIcons:[Landroid/graphics/drawable/Drawable;

.field private stickerSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private stickerSettingsButton:Landroid/widget/ImageView;

.field stickersBanned:Z

.field private stickersButtonAnimation:Landroid/animation/AnimatorSet;

.field private stickersContainer:Landroid/widget/FrameLayout;

.field private stickersContainerAttached:Z

.field private stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

.field private stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

.field private stickersScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

.field private stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

.field private stickersSearchGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

.field private stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

.field private stickersTabContainer:Landroid/widget/FrameLayout;

.field private stickersTabOffset:I

.field private tabIcons:[Landroid/graphics/drawable/Drawable;

.field private final tabsMinusDy:[I

.field private final tabsYAnimators:[Landroid/animation/ObjectAnimator;

.field private toInstall:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private trendingAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

.field private trendingEmojiAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

.field private trendingTabNum:I

.field private typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

.field private updateStickersLoadedDelayed:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$-sKO-xFQEHpK7Bix_jWvK9Lgefg(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$17gErnFE52qZVoPXNdZlq-rWF-I(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$11(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$2nrZtvd503sg58kUd_PQSPlVRMs(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$5(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8ku8hyy_Tso6R_i_kwTj3jYEreU(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$7(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8l_BFYqLEM7822vZ9lVLTvyk1m0(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$9(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9OIS9PU7AX4lMrbp67Q11u7lI7I(Lorg/telegram/ui/Components/EmojiView;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$13(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JRpXNlQvODvh_AoilaKrIParId8(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->lambda$createSetAvatarPreviewLayout$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QwuS48C_sNW0AnfDTVcJBSgpfbc(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$15(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$R97bDZrT88YYaMXbK0OLk7yz8LU(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$16(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$S0WEaWf8iaZ8NbHsNj-ECW9IeDM()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/Components/EmojiView;->lambda$static$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$TbYdN2s4zitcBt76j4h7Oz4YmfM(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$22()V

    return-void
.end method

.method public static synthetic $r8$lambda$Uf_8Qk6o4njRZMd1V-ussV2Wquo(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$12(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$V3T5HhzyGk8ireciEeN-Zd7vzMI(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$14(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZsZv8ad2Ld70wohDZSIsSh5UPsk(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->lambda$postBackspaceRunnable$19(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aPcoP9mQdbOk9vceCdFs4Y-ER0I(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->lambda$sendEmoji$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$c_Ib2f5N7MHGy-uJjELyIw0Gigc(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->openPremiumAnimatedEmojiFeature()V

    return-void
.end method

.method public static synthetic $r8$lambda$cueNaU8eWypqsujCsBcqEmMn_eI(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$dvKz5_VWsJW2DDpvGA70Ry_Fgvg(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->lambda$onAttachedToWindow$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$eonCKtlrtrpcst8oAQ3TRD0cWjg(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->lambda$createSetAvatarPreviewLayout$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nmaQcd3PbCJIKo8mzMUI0MqA-Bw(Lorg/telegram/ui/Components/EmojiView;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->lambda$showStickerBanHint$21(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$oB5-0_RgvMr9llJVKWqqlEZHxz0(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$8(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$q0AVWD__37050-c0SNJHcKw-ra4(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView;->lambda$new$10(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$s5WEDQP6EyfYgsnzg3sb7UCnIrs(Lorg/telegram/ui/Components/EmojiView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->lambda$showBottomTab$17(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yMCYUcAP4VmkHXUnBthTgaCNsaw(Lorg/telegram/ui/Components/EmojiView;ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->lambda$animateTabsY$18(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 182
    sget v1, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lorg/telegram/ui/Components/EmojiView;->observers:[I

    const/4 v0, 0x0

    .line 974
    :try_start_0
    const-class v1, Landroid/widget/PopupWindow;

    const-string v3, "mOnScrollChangedListener"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 975
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    :catch_0
    sput-object v0, Lorg/telegram/ui/Components/EmojiView;->superListenerField:Ljava/lang/reflect/Field;

    .line 982
    sget-object v0, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda9;->INSTANCE:Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda9;

    sput-object v0, Lorg/telegram/ui/Components/EmojiView;->NOP:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 11

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 235
    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 38

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move/from16 v5, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move/from16 v8, p10

    .line 1996
    invoke-direct {v9, v12}, Lcom/smedialink/ui/base/mvp/view/MvpFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x4

    new-array v1, v7, [I

    .line 194
    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    new-array v1, v7, [Landroid/animation/ObjectAnimator;

    .line 195
    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->tabsYAnimators:[Landroid/animation/ObjectAnimator;

    .line 196
    new-instance v1, Lorg/telegram/ui/Components/EmojiView$1;

    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/EmojiView$1;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->checkExpandKiklikoTabsRunnable:Ljava/lang/Runnable;

    const/4 v6, 0x1

    .line 212
    iput-boolean v6, v9, Lorg/telegram/ui/Components/EmojiView;->firstKiklikoAttach:Z

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoTags:Ljava/util/List;

    .line 226
    new-instance v1, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda10;

    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoSearchByTyping:Ljava/lang/Runnable;

    .line 418
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    .line 419
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    .line 448
    iput-boolean v6, v9, Lorg/telegram/ui/Components/EmojiView;->firstEmojiAttach:Z

    .line 458
    new-instance v1, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;

    const/4 v4, 0x0

    invoke-direct {v1, v9, v4}, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$1;)V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->gifSearchPreloader:Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;

    .line 459
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->gifCache:Ljava/util/Map;

    .line 464
    iput-boolean v6, v9, Lorg/telegram/ui/Components/EmojiView;->firstGifAttach:Z

    const/4 v3, -0x2

    .line 465
    iput v3, v9, Lorg/telegram/ui/Components/EmojiView;->gifRecentTabNum:I

    .line 466
    iput v3, v9, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    .line 467
    iput v3, v9, Lorg/telegram/ui/Components/EmojiView;->gifFirstEmojiTabNum:I

    .line 480
    iput-boolean v6, v9, Lorg/telegram/ui/Components/EmojiView;->firstStickersAttach:Z

    .line 548
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v1, v9, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    .line 549
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    .line 555
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    .line 556
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    .line 557
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    .line 558
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->premiumStickers:Ljava/util/ArrayList;

    .line 559
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->featuredStickerSets:Ljava/util/ArrayList;

    .line 561
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->featuredEmojiSets:Ljava/util/ArrayList;

    .line 562
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 563
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->expandedEmojiSets:Ljava/util/ArrayList;

    .line 564
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    .line 565
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->emojipacksProcessed:Ljava/util/ArrayList;

    .line 566
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->toInstall:Ljava/util/HashMap;

    const/16 v1, 0xa

    new-array v1, v1, [Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 576
    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->primaryInstallingStickerSets:[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 577
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Landroid/util/LongSparseArray;

    .line 578
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Landroid/util/LongSparseArray;

    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 587
    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->location:[I

    .line 589
    iput v3, v9, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    .line 590
    iput v3, v9, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    .line 591
    iput v3, v9, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    .line 592
    iput v3, v9, Lorg/telegram/ui/Components/EmojiView;->premiumTabNum:I

    const/4 v1, -0x1

    .line 597
    iput v1, v9, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    .line 630
    new-instance v3, Lorg/telegram/ui/Components/EmojiView$3;

    invoke-direct {v3, v9}, Lorg/telegram/ui/Components/EmojiView$3;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    iput-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->checkExpandStickerTabsRunnable:Ljava/lang/Runnable;

    .line 762
    new-instance v3, Lorg/telegram/ui/Components/EmojiView$4;

    invoke-direct {v3, v9}, Lorg/telegram/ui/Components/EmojiView$4;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    iput-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    .line 1694
    iput-boolean v6, v9, Lorg/telegram/ui/Components/EmojiView;->premiumBulletin:Z

    .line 3574
    iput v1, v9, Lorg/telegram/ui/Components/EmojiView;->animateExpandFromPosition:I

    iput v1, v9, Lorg/telegram/ui/Components/EmojiView;->animateExpandToPosition:I

    const-wide/16 v6, -0x1

    .line 3575
    iput-wide v6, v9, Lorg/telegram/ui/Components/EmojiView;->animateExpandStartTime:J

    const/4 v7, 0x0

    .line 4877
    iput-boolean v7, v9, Lorg/telegram/ui/Components/EmojiView;->emojiPackAlertOpened:Z

    .line 5067
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->rect:Landroid/graphics/Rect;

    .line 7026
    new-instance v3, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda11;

    invoke-direct {v3, v9}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    iput-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->updateStickersLoadedDelayed:Ljava/lang/Runnable;

    if-eq v8, v2, :cond_1

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v6, 0x1

    .line 1997
    :goto_1
    iput-boolean v6, v9, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    .line 1998
    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1999
    iput-boolean v5, v9, Lorg/telegram/ui/Components/EmojiView;->allowAnimatedEmoji:Z

    .line 2000
    iput-object v15, v9, Lorg/telegram/ui/Components/EmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v3, "chat_emojiBottomPanelIcon"

    .line 2002
    invoke-direct {v9, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v19

    const/16 v1, 0x1e

    .line 2003
    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v1, v4, v2, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    if-eqz v6, :cond_2

    const/4 v1, 0x0

    .line 2007
    iput v1, v9, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    goto :goto_2

    :cond_2
    const/16 v1, 0x32

    .line 2009
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v9, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    .line 2010
    :goto_2
    iput-boolean v13, v9, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    const/4 v4, 0x3

    new-array v1, v4, [Landroid/graphics/drawable/Drawable;

    .line 2012
    sget v2, Lorg/telegram/messenger/R$drawable;->smiles_tab_smiles:I

    move/from16 v19, v6

    const-string v6, "chat_emojiPanelBackspace"

    .line 2013
    invoke-direct {v9, v6}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    const-string v14, "chat_emojiPanelIconSelected"

    move-object/from16 v25, v3

    invoke-direct {v9, v14}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v12, v2, v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget v2, Lorg/telegram/messenger/R$drawable;->smiles_tab_gif:I

    .line 2014
    invoke-direct {v9, v6}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v9, v14}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v12, v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget v2, Lorg/telegram/messenger/R$drawable;->smiles_tab_stickers:I

    .line 2015
    invoke-direct {v9, v6}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v9, v14}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v12, v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->tabIcons:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x4

    new-array v2, v1, [Landroid/graphics/drawable/Drawable;

    .line 2018
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_emoji_recent:I

    const-string v3, "chat_emojiPanelIcon"

    .line 2019
    invoke-direct {v9, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v26, v6

    invoke-direct {v9, v14}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v12, v1, v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v2, v6

    sget v4, Lorg/telegram/messenger/R$drawable;->emoji_tabs_faves:I

    .line 2020
    invoke-direct {v9, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    move/from16 v27, v7

    invoke-direct {v9, v14}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    invoke-static {v12, v4, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v2, v6

    sget v4, Lorg/telegram/messenger/R$drawable;->emoji_tabs_new3:I

    .line 2021
    invoke-direct {v9, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v9, v14}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    invoke-static {v12, v4, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v2, v6

    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    new-array v7, v6, [Landroid/graphics/drawable/Drawable;

    sget v6, Lorg/telegram/messenger/R$drawable;->emoji_tabs_new1:I

    .line 2023
    invoke-direct {v9, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v9, v14}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v11

    invoke-static {v12, v6, v8, v11}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v9, Lorg/telegram/ui/Components/EmojiView;->searchIconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    sget v6, Lorg/telegram/messenger/R$drawable;->emoji_tabs_new2:I

    const-string v11, "chat_emojiPanelStickerPackSelectorLine"

    .line 2024
    invoke-direct {v9, v11}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v9, v11}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v10

    invoke-static {v12, v6, v8, v10}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v9, Lorg/telegram/ui/Components/EmojiView;->searchIconDotDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-direct {v4, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x3

    aput-object v4, v2, v6

    iput-object v2, v9, Lorg/telegram/ui/Components/EmojiView;->stickerIcons:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    new-array v4, v2, [Landroid/graphics/drawable/Drawable;

    .line 2029
    invoke-direct {v9, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v9, v14}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v12, v1, v2, v6}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v4, v2

    sget v10, Lorg/telegram/messenger/R$drawable;->stickers_gifs_trending:I

    .line 2030
    invoke-direct {v9, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v9, v14}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v12, v10, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    iput-object v4, v9, Lorg/telegram/ui/Components/EmojiView;->gifIcons:[Landroid/graphics/drawable/Drawable;

    const/16 v8, 0x8

    new-array v1, v8, [Ljava/lang/String;

    .line 2033
    sget v3, Lorg/telegram/messenger/R$string;->Emoji1:I

    const-string v4, "Emoji1"

    .line 2034
    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    sget v3, Lorg/telegram/messenger/R$string;->Emoji2:I

    const-string v4, "Emoji2"

    .line 2035
    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget v2, Lorg/telegram/messenger/R$string;->Emoji3:I

    const-string v3, "Emoji3"

    .line 2036
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget v2, Lorg/telegram/messenger/R$string;->Emoji4:I

    const-string v4, "Emoji4"

    .line 2037
    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget v2, Lorg/telegram/messenger/R$string;->Emoji5:I

    const-string v6, "Emoji5"

    .line 2038
    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget v2, Lorg/telegram/messenger/R$string;->Emoji6:I

    const-string v6, "Emoji6"

    .line 2039
    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v1, v6

    const/4 v2, 0x6

    sget v3, Lorg/telegram/messenger/R$string;->Emoji7:I

    const-string v4, "Emoji7"

    .line 2040
    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget v3, Lorg/telegram/messenger/R$string;->Emoji8:I

    const-string v4, "Emoji8"

    .line 2041
    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->emojiTitles:[Ljava/lang/String;

    move-object/from16 v1, p7

    .line 2045
    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 2047
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->dotPaint:Landroid/graphics/Paint;

    const-string v2, "chat_emojiPanelNewTrending"

    .line 2048
    invoke-direct {v9, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2050
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v4, v3, :cond_3

    .line 2051
    new-instance v1, Lorg/telegram/ui/Components/EmojiView$6;

    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/EmojiView$6;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->outlineProvider:Ljava/lang/Object;

    .line 2060
    :cond_3
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v12}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->emojiContainer:Landroid/widget/FrameLayout;

    .line 2061
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$Tab;

    const/4 v1, 0x0

    invoke-direct {v2, v9, v1}, Lorg/telegram/ui/Components/EmojiView$Tab;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$1;)V

    const/4 v1, 0x0

    .line 2062
    iput v1, v2, Lorg/telegram/ui/Components/EmojiView$Tab;->type:I

    .line 2063
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->emojiContainer:Landroid/widget/FrameLayout;

    iput-object v1, v2, Lorg/telegram/ui/Components/EmojiView$Tab;->view:Landroid/view/View;

    .line 2064
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_4

    .line 2067
    iget v1, v9, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    .line 2068
    iget v1, v9, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->checkFeaturedEmoji()V

    .line 2069
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v3, "windowBackgroundWhiteBlackText"

    invoke-direct {v9, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 2071
    :cond_4
    new-instance v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-direct {v1, v9, v12}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    .line 2072
    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v6, 0x0

    .line 2073
    invoke-virtual {v1, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDelay(J)V

    const-wide/16 v6, 0xdc

    .line 2074
    invoke-virtual {v1, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 2075
    invoke-virtual {v1, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    const-wide/16 v6, 0xa0

    .line 2076
    invoke-virtual {v1, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 2077
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2078
    iget-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 2079
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda6;

    invoke-direct {v3, v9, v15}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2080
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$7;

    invoke-direct {v3, v9}, Lorg/telegram/ui/Components/EmojiView$7;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 2183
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setInstantClick(Z)V

    .line 2184
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$8;

    invoke-direct {v3, v9, v12, v8}, Lorg/telegram/ui/Components/EmojiView$8;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    iput-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2201
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    const/16 v3, 0x26

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 2202
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    const/16 v7, 0x24

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setBottomGlowOffset(I)V

    .line 2203
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    const/4 v6, 0x5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    const/16 v28, 0x2c

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v1, v3, v8, v7, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2204
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    const-string v8, "chat_emojiPanelBackground"

    invoke-direct {v9, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 2205
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    .line 2206
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 2207
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$9;

    invoke-direct {v3, v9}, Lorg/telegram/ui/Components/EmojiView$9;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 2237
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-direct {v3, v9}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    iput-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2238
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$EmojiGridSpacing;

    invoke-direct {v3, v9}, Lorg/telegram/ui/Components/EmojiView$EmojiGridSpacing;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 2239
    new-instance v1, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    const/4 v6, 0x0

    invoke-direct {v1, v9, v6}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$1;)V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->emojiSearchAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    .line 2240
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->emojiContainer:Landroid/widget/FrameLayout;

    iget-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    const/4 v6, -0x1

    invoke-static {v6, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2241
    new-instance v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    iget-object v7, v9, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v1, v3, v7}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->emojiScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    .line 2242
    new-instance v3, Lorg/telegram/ui/Components/EmojiView$10;

    invoke-direct {v3, v9}, Lorg/telegram/ui/Components/EmojiView$10;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setAnimationCallback(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;)V

    .line 2263
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$11;

    const/4 v7, 0x1

    invoke-direct {v3, v9, v7}, Lorg/telegram/ui/Components/EmojiView$11;-><init>(Lorg/telegram/ui/Components/EmojiView;I)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 2279
    new-instance v3, Lorg/telegram/ui/Components/EmojiView$12;

    const/16 v18, 0x1

    const/16 v20, 0x0

    if-eqz v0, :cond_5

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda14;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    move-object/from16 v29, v0

    goto :goto_3

    :cond_5
    const/16 v29, 0x0

    :goto_3
    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v30, v2

    move-object/from16 v2, p5

    move-object/from16 v31, v3

    move-object/from16 v32, v25

    move-object/from16 v3, p9

    move/from16 v33, v4

    move/from16 v4, v18

    move/from16 v5, p2

    move/from16 v18, v19

    move-object/from16 v34, v26

    move/from16 v6, v20

    move/from16 v35, v27

    const/16 v17, 0x4

    move-object/from16 v7, v29

    move-object/from16 v16, v14

    move-object v14, v8

    move-object/from16 v8, p5

    .line 2283
    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/EmojiView$12;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZILjava/lang/Runnable;Landroid/content/Context;)V

    move-object/from16 v0, v31

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    if-eqz v13, :cond_6

    .line 2392
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$SearchField;

    const/4 v6, 0x1

    invoke-direct {v0, v9, v12, v6}, Lorg/telegram/ui/Components/EmojiView$SearchField;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    .line 2393
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->emojiContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v9, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v7, -0x1

    invoke-direct {v2, v7, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2394
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$13;

    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/EmojiView$13;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_4

    :cond_6
    const/4 v6, 0x1

    const/4 v7, -0x1

    .line 2405
    :goto_4
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-direct {v9, v14}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    .line 2406
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->processEmoji(Z)V

    .line 2407
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->getEmojipacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateEmojiPacks(Ljava/util/ArrayList;)V

    .line 2408
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->emojiContainer:Landroid/widget/FrameLayout;

    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    const/16 v8, 0x24

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2410
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    const/4 v1, 0x0

    .line 2411
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2412
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2413
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    const-string v5, "chat_emojiPanelShadowLine"

    invoke-direct {v9, v5}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2414
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v1

    const/16 v4, 0x33

    invoke-direct {v0, v7, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 2415
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2416
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->emojiContainer:Landroid/widget/FrameLayout;

    iget-object v2, v9, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move/from16 v3, p3

    if-eqz v3, :cond_11

    move/from16 v2, p4

    if-eqz v2, :cond_9

    .line 2420
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v12}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->gifContainer:Landroid/widget/FrameLayout;

    .line 2421
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$Tab;

    const/4 v1, 0x0

    invoke-direct {v0, v9, v1}, Lorg/telegram/ui/Components/EmojiView$Tab;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$1;)V

    .line 2422
    iput v6, v0, Lorg/telegram/ui/Components/EmojiView$Tab;->type:I

    .line 2423
    iget-object v4, v9, Lorg/telegram/ui/Components/EmojiView;->gifContainer:Landroid/widget/FrameLayout;

    iput-object v4, v0, Lorg/telegram/ui/Components/EmojiView$Tab;->view:Landroid/view/View;

    .line 2424
    iget-object v4, v9, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2426
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$14;

    invoke-direct {v0, v9, v12}, Lorg/telegram/ui/Components/EmojiView$14;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x0

    .line 2475
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 2476
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$15;

    invoke-direct {v1, v9, v12, v4}, Lorg/telegram/ui/Components/EmojiView$15;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Z)V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2482
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v1, v9, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v0, v4, v1, v4, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2483
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 2484
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 2485
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-direct {v1, v9, v12, v6}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Z)V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2486
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-direct {v0, v9, v12}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    .line 2487
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;

    invoke-direct {v1, v9, v8}, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;-><init>(Lorg/telegram/ui/Components/EmojiView;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    if-nez v18, :cond_7

    .line 2490
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda7;

    invoke-direct {v1, v9, v15}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2491
    :cond_7
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda20;

    invoke-direct {v0, v9, v15}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->gifOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    .line 2544
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 2545
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->gifContainer:Landroid/widget/FrameLayout;

    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v7, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2547
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-direct {v0, v9, v12, v8}, Lorg/telegram/ui/Components/EmojiView$SearchField;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    .line 2549
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->gifContainer:Landroid/widget/FrameLayout;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v8, v9, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v19

    add-int v8, v8, v19

    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2551
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;

    invoke-direct {v0, v9, v12, v15}, Lorg/telegram/ui/Components/EmojiView$DraggableScrollSlidingTabStrip;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    .line 2552
    sget-object v1, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;->TAB:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setType(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;)V

    .line 2553
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineHeight(I)V

    .line 2554
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {v9, v11}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setIndicatorColor(I)V

    .line 2555
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {v9, v5}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineColor(I)V

    if-eqz v18, :cond_8

    .line 2558
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-direct {v9, v1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    goto :goto_5

    .line 2560
    :cond_8
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {v9, v14}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    .line 2562
    :goto_5
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->updateGifTabs()V

    .line 2564
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda21;

    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setDelegate(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;)V

    .line 2600
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->loadTrendingGifs()V

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    .line 2603
    :goto_6
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$16;

    invoke-direct {v0, v9, v12}, Lorg/telegram/ui/Components/EmojiView$16;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickersContainer:Landroid/widget/FrameLayout;

    .line 2626
    iget v0, v9, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    .line 2627
    iget v0, v9, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->checkFeaturedStickers()V

    .line 2628
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$17;

    invoke-direct {v0, v9, v12}, Lorg/telegram/ui/Components/EmojiView$17;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 2690
    new-instance v1, Lorg/telegram/ui/Components/EmojiView$18;

    const/4 v6, 0x5

    invoke-direct {v1, v9, v12, v6}, Lorg/telegram/ui/Components/EmojiView$18;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2716
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$19;

    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/EmojiView$19;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 2741
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v1, 0x24

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v4, v8, v4, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2742
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 2744
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$Tab;

    const/4 v1, 0x0

    invoke-direct {v0, v9, v1}, Lorg/telegram/ui/Components/EmojiView$Tab;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$1;)V

    const/4 v1, 0x2

    .line 2745
    iput v1, v0, Lorg/telegram/ui/Components/EmojiView$Tab;->type:I

    .line 2746
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->stickersContainer:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lorg/telegram/ui/Components/EmojiView$Tab;->view:Landroid/view/View;

    .line 2747
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2748
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-direct {v0, v9, v12}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickersSearchGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    .line 2749
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-direct {v1, v9, v12}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-nez v18, :cond_a

    .line 2752
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda8;

    invoke-direct {v1, v9, v15}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2753
    :cond_a
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda19;

    invoke-direct {v0, v9, v15}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    .line 2787
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    if-eqz v18, :cond_b

    .line 2790
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-direct {v9, v1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    goto :goto_7

    .line 2792
    :cond_b
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v9, v14}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 2793
    :goto_7
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickersContainer:Landroid/widget/FrameLayout;

    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2794
    new-instance v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v8, v9, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v0, v1, v8}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickersScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    .line 2796
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$20;

    invoke-direct {v0, v9, v12, v4}, Lorg/telegram/ui/Components/EmojiView$20;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    .line 2803
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->stickersContainer:Landroid/widget/FrameLayout;

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, v9, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v19

    add-int v6, v6, v19

    invoke-direct {v8, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2805
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$21;

    invoke-direct {v0, v9, v12, v15}, Lorg/telegram/ui/Components/EmojiView$21;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/4 v1, 0x1

    .line 2870
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setDragEnabled(Z)V

    .line 2871
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v0, v4}, Landroid/widget/HorizontalScrollView;->setWillNotDraw(Z)V

    .line 2872
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    sget-object v6, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;->TAB:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setType(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;)V

    .line 2873
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v1

    goto :goto_8

    :cond_c
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineHeight(I)V

    .line 2875
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {v9, v11}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setIndicatorColor(I)V

    .line 2876
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {v9, v5}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineColor(I)V

    move-object/from16 v8, p8

    move-object/from16 v1, v16

    if-eqz v8, :cond_d

    .line 2878
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$22;

    invoke-direct {v0, v9, v12}, Lorg/telegram/ui/Components/EmojiView$22;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    .line 2914
    iget-object v4, v9, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    move-object/from16 v16, v1

    const/16 v1, 0x24

    const/16 v3, 0x33

    invoke-static {v7, v1, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2915
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    const/4 v4, -0x2

    invoke-static {v7, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    :cond_d
    move-object/from16 v16, v1

    const/16 v1, 0x24

    const/16 v3, 0x33

    const/4 v4, -0x2

    .line 2917
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickersContainer:Landroid/widget/FrameLayout;

    iget-object v2, v9, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-static {v7, v1, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_9
    const/4 v0, 0x1

    .line 2919
    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    .line 2920
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda23;

    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setDelegate(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;)V

    .line 2979
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;

    const/4 v2, 0x0

    invoke-direct {v1, v9, v2}, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;-><init>(Lorg/telegram/ui/Components/EmojiView;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    if-nez v18, :cond_10

    .line 2982
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$23;

    invoke-direct {v0, v9, v12}, Lorg/telegram/ui/Components/EmojiView$23;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoContainer:Landroid/widget/FrameLayout;

    .line 2997
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$Tab;

    const/4 v1, 0x0

    invoke-direct {v0, v9, v1}, Lorg/telegram/ui/Components/EmojiView$Tab;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$1;)V

    .line 2998
    sget v2, Lorg/telegram/ui/Components/EmojiView;->TAB_KIKLIKO:I

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView$Tab;->type:I

    .line 2999
    iget-object v2, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoContainer:Landroid/widget/FrameLayout;

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView$Tab;->view:Landroid/view/View;

    .line 3000
    iget-object v2, v9, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3001
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$24;

    invoke-direct {v0, v9, v12}, Lorg/telegram/ui/Components/EmojiView$24;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    .line 3049
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 3050
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$25;

    const/4 v4, 0x1

    invoke-direct {v2, v9, v12, v4}, Lorg/telegram/ui/Components/EmojiView$25;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Z)V

    iput-object v2, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3072
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$26;

    invoke-direct {v2, v9}, Lorg/telegram/ui/Components/EmojiView$26;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 3091
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v2, 0x24

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v4, v7, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 3092
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 3093
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 3094
    iget-object v4, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object v0, v2

    move-object/from16 v7, v16

    move-object/from16 v1, p0

    move-object/from16 v36, v2

    move-object/from16 v2, p5

    const/16 v16, 0x33

    move/from16 v3, v19

    move-object/from16 v37, v4

    move/from16 v4, v21

    move-object/from16 v16, v14

    move-object v14, v5

    move/from16 v5, v22

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;ZIZ)V

    move-object/from16 v0, v36

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-object/from16 v1, v37

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3095
    new-instance v5, Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v19, 0x1

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v13, v5

    move/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;ZIZ)V

    iput-object v13, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    .line 3096
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;

    const/4 v2, 0x3

    invoke-direct {v1, v9, v2}, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;-><init>(Lorg/telegram/ui/Components/EmojiView;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 3097
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda18;

    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 3113
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoContainer:Landroid/widget/FrameLayout;

    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3114
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$27;

    invoke-direct {v0, v9, v12, v2}, Lorg/telegram/ui/Components/EmojiView$27;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    .line 3121
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoContainer:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v9, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3122
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$28;

    invoke-direct {v0, v9, v12, v15}, Lorg/telegram/ui/Components/EmojiView$28;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/4 v1, 0x1

    .line 3138
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setDragEnabled(Z)V

    .line 3139
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setWillNotDraw(Z)V

    .line 3140
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setType(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;)V

    .line 3141
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v3

    goto :goto_a

    :cond_e
    const/4 v3, 0x0

    :goto_a
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineHeight(I)V

    .line 3142
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {v9, v11}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setIndicatorColor(I)V

    .line 3143
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {v9, v14}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineColor(I)V

    if-eqz v8, :cond_f

    .line 3145
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$29;

    invoke-direct {v0, v9, v12}, Lorg/telegram/ui/Components/EmojiView$29;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabContainer:Landroid/widget/FrameLayout;

    .line 3173
    iget-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/16 v4, 0x33

    const/16 v5, 0x24

    const/4 v6, -0x1

    invoke-static {v6, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v3, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3174
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabContainer:Landroid/widget/FrameLayout;

    const/4 v3, -0x2

    invoke-static {v6, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v8, v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    :cond_f
    const/4 v3, -0x2

    const/16 v4, 0x33

    const/16 v5, 0x24

    const/4 v6, -0x1

    .line 3176
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoContainer:Landroid/widget/FrameLayout;

    iget-object v8, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-static {v6, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v8, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_b
    move-object/from16 v0, v32

    .line 3178
    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v9, v7}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v12, v10, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoTrendsIcon:Landroid/graphics/drawable/Drawable;

    .line 3179
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->updateKiklikoTabs()V

    .line 3180
    iget-object v5, v9, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    new-instance v6, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda22;

    invoke-direct {v6, v9}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setDelegate(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;)V

    goto :goto_d

    :cond_10
    move-object/from16 v7, v16

    move-object/from16 v0, v32

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, -0x2

    const/16 v4, 0x33

    goto :goto_c

    :cond_11
    move-object/from16 v7, v16

    move-object/from16 v0, v32

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, -0x2

    :goto_c
    move-object/from16 v16, v14

    move-object v14, v5

    .line 3201
    :goto_d
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v9, Lorg/telegram/ui/Components/EmojiView;->tabIcons:[Landroid/graphics/drawable/Drawable;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move/from16 v6, p4

    move/from16 v8, p3

    if-eqz v6, :cond_12

    if-eqz v8, :cond_12

    if-nez v18, :cond_12

    .line 3203
    sget v10, Lorg/telegram/messenger/R$drawable;->fork_kikliko_tab:I

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v9, v7}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v11

    invoke-static {v12, v10, v0, v11}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    if-eqz v18, :cond_13

    .line 3206
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3207
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    move-object/from16 v10, v30

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3208
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->gifContainer:Landroid/widget/FrameLayout;

    iget-object v10, v9, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3209
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickersContainer:Landroid/widget/FrameLayout;

    iget-object v10, v9, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 3210
    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->emojiContainer:Landroid/widget/FrameLayout;

    .line 3211
    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    .line 3212
    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    .line 3213
    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    goto :goto_e

    :cond_13
    const/4 v0, 0x0

    .line 3215
    :goto_e
    iget-object v10, v9, Lorg/telegram/ui/Components/EmojiView;->tabIcons:[Landroid/graphics/drawable/Drawable;

    invoke-interface {v5, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/graphics/drawable/Drawable;

    iput-object v5, v9, Lorg/telegram/ui/Components/EmojiView;->tabIcons:[Landroid/graphics/drawable/Drawable;

    .line 3218
    iget-object v5, v9, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 3219
    iget-object v5, v9, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    iget-object v10, v9, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3221
    new-instance v5, Lorg/telegram/ui/Components/EmojiView$30;

    invoke-direct {v5, v9, v12}, Lorg/telegram/ui/Components/EmojiView$30;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v5, v9, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 3279
    new-instance v10, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;

    invoke-direct {v10, v9, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$1;)V

    iput-object v10, v9, Lorg/telegram/ui/Components/EmojiView;->emojiPagerAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;

    invoke-virtual {v5, v10}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 3281
    new-instance v5, Lorg/telegram/ui/Components/EmojiView$31;

    invoke-direct {v5, v9, v12}, Lorg/telegram/ui/Components/EmojiView$31;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v5, v9, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/4 v10, 0x1

    .line 3300
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setHapticFeedbackEnabled(Z)V

    .line 3301
    iget-object v5, v9, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    sget v10, Lorg/telegram/messenger/R$drawable;->smiles_tab_clear:I

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3302
    iget-object v5, v9, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    move-object/from16 v11, v34

    invoke-direct {v9, v11}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v13

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v13, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3303
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3304
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/messenger/R$string;->AccDescrBackspace:I

    const-string v10, "AccDescrBackspace"

    invoke-static {v10, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3305
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 3306
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    new-instance v10, Lorg/telegram/ui/Components/EmojiView$32;

    invoke-direct {v10, v9}, Lorg/telegram/ui/Components/EmojiView$32;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3313
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v12}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->bulletinContainer:Landroid/widget/FrameLayout;

    if-eqz p6, :cond_14

    const/16 v21, -0x1

    const/high16 v22, 0x42c80000    # 100.0f

    const/16 v23, 0x57

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/high16 v10, 0x42200000    # 40.0f

    .line 3315
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v13

    int-to-float v13, v13

    sget v19, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float v13, v13, v19

    add-float v27, v13, v10

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f

    :cond_14
    const/16 v21, -0x1

    const/16 v22, 0x64

    const/16 v23, 0x57

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 3317
    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3320
    :goto_f
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v12}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    const/4 v10, 0x1

    .line 3321
    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 3323
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->shadowLine:Landroid/view/View;

    .line 3324
    invoke-direct {v9, v14}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3325
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    iget-object v10, v9, Lorg/telegram/ui/Components/EmojiView;->shadowLine:Landroid/view/View;

    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v14

    const/4 v4, -0x1

    invoke-direct {v13, v4, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v10, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3327
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerBackground:Landroid/view/View;

    .line 3328
    iget-object v10, v9, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v14, 0x28

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/16 v2, 0x53

    invoke-direct {v13, v4, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v10, v0, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p6, :cond_18

    .line 3331
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v5

    add-int/2addr v3, v5

    const/16 v5, 0x53

    invoke-direct {v2, v4, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v9, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3332
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    iget-object v2, v9, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/16 v3, 0x2f

    const/16 v4, 0x55

    invoke-static {v3, v14, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move/from16 v0, v33

    const/16 v2, 0x15

    if-lt v0, v2, :cond_15

    .line 3334
    iget-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/16 v4, 0x12

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    move/from16 v5, v35

    const/4 v10, 0x1

    invoke-static {v5, v10, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_10

    :cond_15
    move/from16 v5, v35

    .line 3337
    :goto_10
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    .line 3338
    sget v4, Lorg/telegram/messenger/R$drawable;->smiles_tab_settings:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3339
    iget-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v9, v11}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v10

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v10, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3340
    iget-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3341
    iget-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    if-lt v0, v2, :cond_16

    .line 3343
    iget-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    const/16 v10, 0x12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v5, v4, v10}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3345
    :cond_16
    iget-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$string;->Settings:I

    const-string v10, "Settings"

    invoke-static {v10, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3346
    iget-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    iget-object v4, v9, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    const/16 v10, 0x2f

    const/16 v13, 0x55

    invoke-static {v10, v14, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v3, v4, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3347
    iget-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$33;

    invoke-direct {v4, v9}, Lorg/telegram/ui/Components/EmojiView$33;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3356
    new-instance v3, Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-direct {v3, v12, v15}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    .line 3357
    iget-object v4, v9, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 3358
    iget-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setShouldExpand(Z)V

    .line 3359
    iget-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const/4 v4, 0x3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setIndicatorHeight(I)V

    .line 3360
    iget-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-direct {v9, v7}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setIndicatorColor(I)V

    .line 3361
    iget-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setUnderlineHeight(I)V

    .line 3362
    iget-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const/16 v4, 0xd

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setTabPaddingLeftRight(I)V

    .line 3363
    iget-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    iget-object v4, v9, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const/16 v7, 0x51

    const/4 v10, -0x2

    invoke-static {v10, v14, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3364
    iget-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$34;

    invoke-direct {v4, v9}, Lorg/telegram/ui/Components/EmojiView$34;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 3453
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    .line 3454
    sget v4, Lorg/telegram/messenger/R$drawable;->smiles_tab_search:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3455
    iget-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v9, v11}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v7, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3456
    iget-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3457
    iget-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$string;->Search:I

    const-string v7, "Search"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3458
    iget-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 3459
    iget-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    if-lt v0, v2, :cond_17

    .line 3461
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    const/16 v2, 0x12

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v5, v4, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3463
    :cond_17
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    iget-object v2, v9, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    const/16 v3, 0x2f

    const/16 v4, 0x53

    invoke-static {v3, v14, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3464
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$35;

    invoke-direct {v2, v9}, Lorg/telegram/ui/Components/EmojiView$35;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v7, 0x4

    goto/16 :goto_16

    :cond_18
    move/from16 v0, v33

    const/16 v2, 0x15

    const/4 v4, 0x3

    const/16 v7, 0x8

    .line 3493
    iget-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    if-lt v0, v2, :cond_19

    const/16 v10, 0x28

    goto :goto_11

    :cond_19
    const/16 v10, 0x2c

    :goto_11
    add-int/lit8 v21, v10, 0x10

    if-lt v0, v2, :cond_1a

    const/16 v10, 0x28

    goto :goto_12

    :cond_1a
    const/16 v10, 0x2c

    :goto_12
    add-int/lit8 v22, v10, 0x8

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_1b

    goto :goto_13

    :cond_1b
    const/4 v4, 0x5

    :goto_13
    or-int/lit8 v23, v4, 0x50

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x2

    const/16 v27, 0x0

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x38

    .line 3495
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    move-object/from16 v4, v16

    invoke-direct {v9, v4}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v4}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v10, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-ge v0, v2, :cond_1c

    .line 3497
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v10, Lorg/telegram/messenger/R$drawable;->floating_shadow:I

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 3498
    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v11, -0x1000000

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3499
    new-instance v10, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v10, v4, v3, v1, v1}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    const/16 v3, 0x24

    .line 3500
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v10, v4, v3}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    move-object v3, v10

    goto :goto_14

    .line 3503
    :cond_1c
    new-instance v4, Landroid/animation/StateListAnimator;

    invoke-direct {v4}, Landroid/animation/StateListAnimator;-><init>()V

    const/4 v10, 0x1

    new-array v11, v10, [I

    const v13, 0x10100a7

    aput v13, v11, v1

    .line 3504
    iget-object v13, v9, Lorg/telegram/ui/Components/EmojiView;->floatingButton:Landroid/widget/ImageView;

    sget-object v15, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v7, v14, [F

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    aput v2, v7, v1

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    aput v2, v7, v10

    invoke-static {v13, v15, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v13, 0xc8

    invoke-virtual {v2, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v4, v11, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array v2, v1, [I

    .line 3505
    iget-object v7, v9, Lorg/telegram/ui/Components/EmojiView;->floatingButton:Landroid/widget/ImageView;

    const/4 v10, 0x2

    new-array v11, v10, [F

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    aput v13, v11, v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v10, v13

    const/4 v13, 0x1

    aput v10, v11, v13

    invoke-static {v7, v15, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v10, 0xc8

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 3506
    iget-object v2, v9, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 3507
    iget-object v2, v9, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$36;

    invoke-direct {v4, v9}, Lorg/telegram/ui/Components/EmojiView$36;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 3515
    :goto_14
    iget-object v2, v9, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/4 v4, 0x2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v2, v1, v1, v7, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 3516
    iget-object v2, v9, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3517
    iget-object v2, v9, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const-string v3, "AccDescrBackspace"

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3518
    iget-object v2, v9, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 3519
    iget-object v2, v9, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    iget-object v3, v9, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/16 v4, 0x15

    if-lt v0, v4, :cond_1d

    const/16 v5, 0x28

    goto :goto_15

    :cond_1d
    const/16 v5, 0x2c

    :goto_15
    const/4 v7, 0x4

    add-int/lit8 v21, v5, -0x4

    if-lt v0, v4, :cond_1e

    const/16 v28, 0x28

    :cond_1e
    add-int/lit8 v22, v28, -0x4

    const/16 v23, 0x33

    const/16 v24, 0xa

    const/16 v25, 0x0

    const/16 v26, 0xa

    const/16 v27, 0x0

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3520
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->shadowLine:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3521
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3524
    :goto_16
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    const/16 v2, 0x33

    const/4 v3, -0x1

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3526
    new-instance v0, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const/4 v2, 0x6

    .line 3527
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const-string v3, "chat_gifSaveHintBackground"

    invoke-direct {v9, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3528
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const-string v2, "chat_gifSaveHintText"

    invoke-direct {v9, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3529
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const/16 v2, 0xc

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v3, 0x7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v5, 0x7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3530
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 3531
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3532
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3533
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x51

    const/16 v22, 0x5

    const/16 v23, 0x0

    const/16 v24, 0x5

    const/16 v25, 0x35

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3535
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v0, 0x28

    goto :goto_17

    :cond_1f
    const/16 v0, 0x20

    :goto_17
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v9, Lorg/telegram/ui/Components/EmojiView;->emojiSize:I

    .line 3536
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    invoke-direct {v0, v9, v12}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    .line 3537
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    iget-object v2, v9, Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_20

    const/16 v14, 0x28

    goto :goto_18

    :cond_20
    const/16 v14, 0x20

    :goto_18
    mul-int/lit8 v14, v14, 0x6

    add-int/lit8 v14, v14, 0xa

    add-int/lit8 v14, v14, 0x14

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v9, Lorg/telegram/ui/Components/EmojiView;->popupWidth:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_21

    const/16 v4, 0x40

    goto :goto_19

    :cond_21
    const/16 v4, 0x38

    :goto_19
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iput v4, v9, Lorg/telegram/ui/Components/EmojiView;->popupHeight:I

    invoke-direct {v0, v9, v2, v3, v4}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;II)V

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    const/4 v2, 0x1

    .line 3538
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 3539
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 3540
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 3541
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 3542
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 3543
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda5;

    invoke-direct {v4, v9}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-eqz v18, :cond_23

    .line 3552
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    iget-object v4, v9, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3553
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    iget-object v4, v9, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3554
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    iget-object v4, v9, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3555
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 3556
    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    .line 3557
    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    .line 3558
    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    .line 3559
    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    .line 3560
    invoke-direct {v9, v12}, Lorg/telegram/ui/Components/EmojiView;->createSetAvatarPreviewLayout(Landroid/content/Context;)V

    .line 3561
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->setAvatarPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-nez p10, :cond_22

    goto :goto_1a

    :cond_22
    const/4 v2, 0x2

    .line 3562
    :goto_1a
    iput v2, v9, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    goto :goto_1b

    .line 3564
    :cond_23
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "selected_page"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    .line 3567
    :goto_1b
    invoke-static {}, Lorg/telegram/messenger/Emoji;->loadRecentEmoji()V

    .line 3568
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 3570
    invoke-virtual {v9, v8, v6, v1}, Lorg/telegram/ui/Components/EmojiView;->setAllow(ZZZ)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->expandKiklikoByDrag:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$10000(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersContainerAttached:Z

    return p0
.end method

.method static synthetic access$10002(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0

    .line 165
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersContainerAttached:Z

    return p1
.end method

.method static synthetic access$10100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0

    .line 165
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->expandKiklikoByDrag:Z

    return p1
.end method

.method static synthetic access$10200(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->firstStickersAttach:Z

    return p0
.end method

.method static synthetic access$10202(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0

    .line 165
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->firstStickersAttach:Z

    return p1
.end method

.method static synthetic access$10300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    return-object p0
.end method

.method static synthetic access$10400(Lorg/telegram/ui/Components/EmojiView;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$10500(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    return-object p0
.end method

.method static synthetic access$11100(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 165
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    return p0
.end method

.method static synthetic access$11200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$11300(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    return-void
.end method

.method static synthetic access$11400(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    return-void
.end method

.method static synthetic access$11500(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->hasChatStickers:Z

    return p0
.end method

.method static synthetic access$11602(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0

    .line 165
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoContainerAttached:Z

    return p1
.end method

.method static synthetic access$11700(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->firstKiklikoAttach:Z

    return p0
.end method

.method static synthetic access$11702(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0

    .line 165
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->firstKiklikoAttach:Z

    return p1
.end method

.method static synthetic access$11800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    return-object p0
.end method

.method static synthetic access$11900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$12000(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$12100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$12300(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->prepareKikliko()V

    return-void
.end method

.method static synthetic access$12400(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->startStopVisibleGifs(Z)V

    return-void
.end method

.method static synthetic access$12500(Lorg/telegram/ui/Components/EmojiView;)[I
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    return-object p0
.end method

.method static synthetic access$12702(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0

    .line 165
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->backspacePressed:Z

    return p1
.end method

.method static synthetic access$12800(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceOnce:Z

    return p0
.end method

.method static synthetic access$12802(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0

    .line 165
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceOnce:Z

    return p1
.end method

.method static synthetic access$12900(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->postBackspaceRunnable(I)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->bulletinContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$13000(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/ImageView;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$13100(Lorg/telegram/ui/Components/EmojiView;IF)V
    .locals 0

    .line 165
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->checkGridVisibility(IF)V

    return-void
.end method

.method static synthetic access$13200(Lorg/telegram/ui/Components/EmojiView;III)V
    .locals 0

    .line 165
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView;->onPageScrolled(III)V

    return-void
.end method

.method static synthetic access$13300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    return-object p0
.end method

.method static synthetic access$13400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    return-object p0
.end method

.method static synthetic access$13500(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveNewPage()V

    return-void
.end method

.method static synthetic access$13600(Lorg/telegram/ui/Components/EmojiView;ZZ)V
    .locals 0

    .line 165
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->showBackspaceButton(ZZ)V

    return-void
.end method

.method static synthetic access$13700(Lorg/telegram/ui/Components/EmojiView;ZZ)V
    .locals 0

    .line 165
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->showStickerSettingsButton(ZZ)V

    return-void
.end method

.method static synthetic access$13800(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->firstEmojiAttach:Z

    return p0
.end method

.method static synthetic access$13802(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0

    .line 165
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->firstEmojiAttach:Z

    return p1
.end method

.method static synthetic access$13900(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Ljava/lang/String;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->sendEmoji(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    return-object p0
.end method

.method static synthetic access$14000(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->animatedEmojiDrawables:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$14002(Lorg/telegram/ui/Components/EmojiView;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 0

    .line 165
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->animatedEmojiDrawables:Landroid/util/LongSparseArray;

    return-object p1
.end method

.method static synthetic access$14100(Lorg/telegram/ui/Components/EmojiView;)J
    .locals 2

    .line 165
    iget-wide v0, p0, Lorg/telegram/ui/Components/EmojiView;->animateExpandStartTime:J

    return-wide v0
.end method

.method static synthetic access$14102(Lorg/telegram/ui/Components/EmojiView;J)J
    .locals 0

    .line 165
    iput-wide p1, p0, Lorg/telegram/ui/Components/EmojiView;->animateExpandStartTime:J

    return-wide p1
.end method

.method static synthetic access$14200(Lorg/telegram/ui/Components/EmojiView;)Landroid/view/View;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->animateExpandFromButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$14202(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 165
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->animateExpandFromButton:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$14300(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 165
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->animateExpandFromPosition:I

    return p0
.end method

.method static synthetic access$14302(Lorg/telegram/ui/Components/EmojiView;I)I
    .locals 0

    .line 165
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->animateExpandFromPosition:I

    return p1
.end method

.method static synthetic access$14400(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 165
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->animateExpandToPosition:I

    return p0
.end method

.method static synthetic access$14402(Lorg/telegram/ui/Components/EmojiView;I)I
    .locals 0

    .line 165
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->animateExpandToPosition:I

    return p1
.end method

.method static synthetic access$14900(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->openPremiumAnimatedEmojiFeature()V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$15102(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0

    .line 165
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiPackAlertOpened:Z

    return p1
.end method

.method static synthetic access$15200(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateEmojiHeaders()V

    return-void
.end method

.method static synthetic access$15300(Lorg/telegram/ui/Components/EmojiView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$15302(Lorg/telegram/ui/Components/EmojiView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 165
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$15602(Lorg/telegram/ui/Components/EmojiView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 165
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabShadowAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$15800(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/ImageView;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$15900(Lorg/telegram/ui/Components/EmojiView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$15902(Lorg/telegram/ui/Components/EmojiView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 165
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    return-object p0
.end method

.method static synthetic access$16002(Lorg/telegram/ui/Components/EmojiView;F)F
    .locals 0

    .line 165
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabAdditionalTranslation:F

    return p1
.end method

.method static synthetic access$16100(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateBottomTabContainerPosition()V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateRecentGifs()V

    return-void
.end method

.method static synthetic access$18000(Lorg/telegram/ui/Components/EmojiView;)Landroid/graphics/Paint;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->dotPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$18100(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->featuredStickerSets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$18200(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 165
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    return p0
.end method

.method static synthetic access$18300(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 165
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    return p0
.end method

.method static synthetic access$18400(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 165
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->premiumTabNum:I

    return p0
.end method

.method static synthetic access$18502(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;)Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;
    .locals 0

    .line 165
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->trendingAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

    return-object p1
.end method

.method static synthetic access$18600(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$18700(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$18800(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 165
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackPosition:I

    return p0
.end method

.method static synthetic access$18802(Lorg/telegram/ui/Components/EmojiView;I)I
    .locals 0

    .line 165
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackPosition:I

    return p1
.end method

.method static synthetic access$18900(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickersHidden:Z

    return p0
.end method

.method static synthetic access$19000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-object p0
.end method

.method static synthetic access$19100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object p0
.end method

.method static synthetic access$19200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->premiumStickers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$19300(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 165
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    return p0
.end method

.method static synthetic access$19400(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->openTrendingStickers(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V

    return-void
.end method

.method static synthetic access$19500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingEmojiAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

    return-object p0
.end method

.method static synthetic access$19502(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;)Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;
    .locals 0

    .line 165
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->trendingEmojiAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

    return-object p1
.end method

.method static synthetic access$19700(Lorg/telegram/ui/Components/EmojiView;)[Ljava/lang/String;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTitles:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$19800(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->expandedEmojiSets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabsPosition(Z)V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    return-object p0
.end method

.method static synthetic access$20200(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->isGifsBanned:Z

    return p0
.end method

.method static synthetic access$20300(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$20400(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->scrollGifsToTop(Z)V

    return-void
.end method

.method static synthetic access$20500(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$20600(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 165
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifRecentTabNum:I

    return p0
.end method

.method static synthetic access$20700(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 165
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    return p0
.end method

.method static synthetic access$20800(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/List;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTags:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$20900(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 165
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifFirstEmojiTabNum:I

    return p0
.end method

.method static synthetic access$21002(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;
    .locals 0

    .line 165
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastKiklikoSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    return-object p1
.end method

.method static synthetic access$21100(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->scrollGifsToTop()V

    return-void
.end method

.method static synthetic access$21200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/Map;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifCache:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$21400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    return-object p0
.end method

.method static synthetic access$22600(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$22700(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/EmojiView;Ljava/lang/String;)I
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 165
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$SearchField;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->openSearch(Lorg/telegram/ui/Components/EmojiView$SearchField;)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->setAvatarPreviewLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->allowAnimatedEmoji:Z

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/EmojiView;ZZ)V
    .locals 0

    .line 165
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->showBottomTab(ZZ)V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiTabsStrip;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->ignorePagerScroll:Z

    return p0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0

    .line 165
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->ignorePagerScroll:Z

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/EmojiView;)Ljava/lang/Runnable;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoSearchByTyping:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->setAvatarPreviewImage:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchPreloader:Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->animateTabsY(I)V

    return-void
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->ignoreStickersScroll:Z

    return p0
.end method

.method static synthetic access$4302(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0

    .line 165
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->ignoreStickersScroll:Z

    return p1
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/EmojiView;I)Lorg/telegram/ui/Components/EmojiView$SearchField;
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getSearchFieldForType(I)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->stopAnimatingTabsY(I)V

    return-void
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->chooseStickerActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->createStickersChooseActionTracker()V

    return-void
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->checkScroll(I)V

    return-void
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/EmojiView;II)V
    .locals 0

    .line 165
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->checkTabsY(II)V

    return-void
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/EmojiView;F)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->checkBottomTabScroll(F)V

    return-void
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/EmojiView;ZZ)V
    .locals 0

    .line 165
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->checkGifSearchFieldScroll(ZZ)V

    return-void
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->checkStickersSearchFieldScroll(Z)V

    return-void
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->checkEmojiSearchFieldScroll(Z)V

    return-void
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$DragListener;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->dragListener:Lorg/telegram/ui/Components/EmojiView$DragListener;

    return-object p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/EmojiView;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$5602(Lorg/telegram/ui/Components/EmojiView;F)F
    .locals 0

    .line 165
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastStickersX:F

    return p1
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/EmojiView;)Ljava/lang/Runnable;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->checkExpandStickerTabsRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/EmojiView;)Ljava/lang/Runnable;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->checkExpandKiklikoTabsRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    return-object p0
.end method

.method static synthetic access$6000()Ljava/lang/reflect/Field;
    .locals 1

    .line 165
    sget-object v0, Lorg/telegram/ui/Components/EmojiView;->superListenerField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$6100()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 1

    .line 165
    sget-object v0, Lorg/telegram/ui/Components/EmojiView;->NOP:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-object v0
.end method

.method static synthetic access$6200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 165
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->addColorToCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 165
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSize:I

    return p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTouchedView:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    return-object p0
.end method

.method static synthetic access$6502(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;
    .locals 0

    .line 165
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTouchedView:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    return-object p1
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Components/EmojiView;)F
    .locals 0

    .line 165
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTouchedX:F

    return p0
.end method

.method static synthetic access$6602(Lorg/telegram/ui/Components/EmojiView;F)F
    .locals 0

    .line 165
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTouchedX:F

    return p1
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Components/EmojiView;)F
    .locals 0

    .line 165
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLastX:F

    return p0
.end method

.method static synthetic access$6702(Lorg/telegram/ui/Components/EmojiView;F)F
    .locals 0

    .line 165
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLastX:F

    return p1
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Components/EmojiView;)F
    .locals 0

    .line 165
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTouchedY:F

    return p0
.end method

.method static synthetic access$6802(Lorg/telegram/ui/Components/EmojiView;F)F
    .locals 0

    .line 165
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTouchedY:F

    return p1
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Components/EmojiView;)F
    .locals 0

    .line 165
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLastY:F

    return p0
.end method

.method static synthetic access$6902(Lorg/telegram/ui/Components/EmojiView;F)F
    .locals 0

    .line 165
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLastY:F

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->expandStickersByDragg:Z

    return p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    return-object p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0

    .line 165
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->expandStickersByDragg:Z

    return p1
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Components/EmojiView;)[I
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->location:[I

    return-object p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 165
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->popupWidth:I

    return p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    return-object p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 0

    .line 165
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView;->popupHeight:I

    return p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSmoothScrolling:Z

    return p0
.end method

.method static synthetic access$7502(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0

    .line 165
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSmoothScrolling:Z

    return p1
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Components/EmojiView;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabsPosition()V

    return-void
.end method

.method static synthetic access$8600(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateEmojiTabsPosition()V

    return-void
.end method

.method static synthetic access$8700(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->allowEmojisForNonPremium:Z

    return p0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/Components/EmojiView;)Landroid/view/View;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->featuredEmojiSets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    return-object p0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    return-object p0
.end method

.method static synthetic access$9200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->emojipacksProcessed:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$9300(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->updateEmojiTabsPosition(I)V

    return-void
.end method

.method static synthetic access$9400(Lorg/telegram/ui/Components/EmojiView;II)V
    .locals 0

    .line 165
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->scrollEmojisToPosition(II)V

    return-void
.end method

.method static synthetic access$9500(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;I)V
    .locals 0

    .line 165
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->checkEmojiTabY(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$9600(Lorg/telegram/ui/Components/EmojiView;)Landroid/graphics/PorterDuffColorFilter;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    return-object p0
.end method

.method static synthetic access$9700(Lorg/telegram/ui/Components/EmojiView;)[Ljava/lang/String;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$9702(Lorg/telegram/ui/Components/EmojiView;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 165
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9800(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView;->firstGifAttach:Z

    return p0
.end method

.method static synthetic access$9802(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0

    .line 165
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->firstGifAttach:Z

    return p1
.end method

.method static synthetic access$9900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;
    .locals 0

    .line 165
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    return-object p0
.end method

.method private static addColorToCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 4938
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x200d

    const/4 v3, 0x2

    if-le v0, v3, :cond_0

    .line 4939
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_0

    .line 4940
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4941
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    if-le v0, v3, :cond_1

    .line 4942
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    .line 4943
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4944
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4946
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_2

    .line 4948
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method private animateSearchField(I)V
    .locals 6

    .line 5790
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getListViewForType(I)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/16 v2, 0x26

    goto :goto_0

    :cond_0
    const/16 v2, 0x30

    .line 5791
    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v3, 0x0

    .line 5792
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5794
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    aget v5, v4, p1

    add-int/2addr v2, v5

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    :cond_1
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 5796
    :goto_1
    aget v0, v4, p1

    invoke-direct {p0, p1, v1, v0}, Lorg/telegram/ui/Components/EmojiView;->animateSearchField(IZI)V

    :cond_3
    return-void
.end method

.method private animateSearchField(IZI)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return-void

    .line 5805
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getListViewForType(I)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 5808
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$47;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p3}, Lorg/telegram/ui/Components/EmojiView$47;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    xor-int/lit8 p2, p2, 0x1

    .line 5824
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 5825
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getLayoutManagerForType(I)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method private animateTabsY(I)V
    .locals 8

    .line 5756
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/high16 v1, 0x42100000    # 36.0f

    goto :goto_0

    :cond_3
    const/high16 v1, 0x42400000    # 48.0f

    .line 5759
    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    .line 5760
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    aget v2, v2, p1

    int-to-float v2, v2

    neg-float v3, v1

    div-float/2addr v2, v3

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-lez v3, :cond_9

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_4

    goto :goto_3

    .line 5765
    :cond_4
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getTabsForType(I)Landroid/view/View;

    move-result-object v3

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_5

    float-to-double v6, v1

    .line 5766
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    neg-double v6, v6

    double-to-int v1, v6

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-lez v2, :cond_6

    .line 5768
    invoke-direct {p0, p1, v5, v1}, Lorg/telegram/ui/Components/EmojiView;->animateSearchField(IZI)V

    :cond_6
    if-ne p1, v0, :cond_7

    .line 5771
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->checkEmojiShadow(I)V

    .line 5773
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->tabsYAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v4, v2, p1

    const/4 v6, 0x2

    if-nez v4, :cond_8

    .line 5774
    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v6, [F

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v7

    aput v7, v6, v5

    int-to-float v1, v1

    aput v1, v6, v0

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v2, p1

    .line 5775
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsYAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v0, v0, p1

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EmojiView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5776
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsYAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v0, v0, p1

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_2

    .line 5778
    :cond_8
    aget-object v2, v2, p1

    new-array v4, v6, [F

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    aput v3, v4, v5

    int-to-float v1, v1

    aput v1, v4, v0

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 5780
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsYAnimators:[Landroid/animation/ObjectAnimator;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 5762
    :cond_9
    :goto_3
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->animateSearchField(I)V

    return-void
.end method

.method private checkBottomTabScroll(F)V
    .locals 5

    .line 5579
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/EmojiView;->shownBottomTabAfterClick:J

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 5582
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastBottomScrollDy:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastBottomScrollDy:F

    .line 5584
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x26

    .line 5585
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/16 p1, 0x30

    .line 5587
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 5589
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastBottomScrollDy:F

    int-to-float v1, p1

    const/4 v2, 0x1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    const/4 p1, 0x0

    .line 5590
    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Components/EmojiView;->showBottomTab(ZZ)V

    goto :goto_1

    :cond_2
    neg-int p1, p1

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_3

    .line 5592
    invoke-direct {p0, v2, v2}, Lorg/telegram/ui/Components/EmojiView;->showBottomTab(ZZ)V

    goto :goto_1

    .line 5593
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastBottomScrollDy:F

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_5

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastBottomScrollDy:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    .line 5594
    :cond_5
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastBottomScrollDy:F

    :cond_6
    :goto_1
    return-void
.end method

.method private checkDocuments(Z)V
    .locals 10

    if-eqz p1, :cond_0

    .line 6824
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateRecentGifs()V

    goto/16 :goto_6

    .line 6826
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 6827
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6828
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaDataController;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    .line 6829
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MediaDataController;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    .line 6830
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6831
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MediaDataController;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->premiumStickers:Ljava/util/ArrayList;

    goto :goto_0

    .line 6833
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->premiumStickers:Ljava/util/ArrayList;

    :goto_0
    const/4 v1, 0x0

    .line 6835
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 6836
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v4, 0x0

    .line 6837
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 6838
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    .line 6839
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iget v7, v3, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    if-ne v6, v7, :cond_2

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    .line 6840
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6845
    :cond_4
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    .line 6846
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 6847
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6848
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    .line 6852
    :goto_5
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 6853
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 6854
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 6859
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne p1, v1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq v0, p1, :cond_a

    .line 6860
    :cond_9
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    .line 6862
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz p1, :cond_b

    .line 6863
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    .line 6865
    :cond_b
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->checkPanels()V

    :goto_6
    return-void
.end method

.method private checkEmojiSearchFieldScroll(Z)V
    .locals 5

    .line 5897
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5898
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5900
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    xor-int/lit8 v3, p1, 0x1

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$15700(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V

    goto :goto_1

    .line 5902
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    if-ge v0, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    xor-int/lit8 v4, p1, 0x1

    invoke-static {v3, v0, v4}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$15700(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V

    :goto_1
    xor-int/2addr p1, v2

    .line 5904
    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/Components/EmojiView;->showEmojiShadow(ZZ)V

    return-void

    .line 5907
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    if-nez v0, :cond_3

    goto :goto_3

    .line 5910
    :cond_3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5912
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_2

    .line 5914
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 5916
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    xor-int/2addr p1, v2

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$15700(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V

    .line 5917
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getTranslationY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->checkEmojiShadow(I)V

    :cond_5
    :goto_3
    return-void
.end method

.method private checkEmojiShadow(I)V
    .locals 4

    .line 5921
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsYAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5924
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    const/16 v3, 0x26

    .line 5925
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, p1

    if-lez v3, :cond_2

    if-eqz v0, :cond_1

    .line 5926
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p1, v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->isLayout:Z

    xor-int/2addr p1, v1

    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/Components/EmojiView;->showEmojiShadow(ZZ)V

    return-void
.end method

.method private checkEmojiTabY(Landroid/view/View;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 5931
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    aput v0, p2, v1

    int-to-float p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setTranslationY(F)V

    return-void

    .line 5934
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSmoothScrolling:Z

    if-eqz p1, :cond_1

    goto :goto_2

    .line 5937
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    if-lez p2, :cond_4

    .line 5940
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 5941
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 5942
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    add-int/2addr p1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    if-lt p1, v2, :cond_4

    return-void

    .line 5946
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    aget v2, p1, v1

    sub-int/2addr v2, p2

    aput v2, p1, v1

    .line 5947
    aget p2, p1, v1

    if-lez p2, :cond_5

    .line 5948
    aput v0, p1, v1

    goto :goto_1

    .line 5949
    :cond_5
    aget p1, p1, v1

    const/16 p2, 0x6c

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    if-ge p1, v0, :cond_6

    .line 5950
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    neg-int p2, p2

    aput p2, p1, v1

    .line 5952
    :cond_6
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    const/16 p2, 0x24

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    neg-int p2, p2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    aget v0, v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setTranslationY(F)V

    :cond_7
    :goto_2
    return-void
.end method

.method private checkGifSearchFieldScroll(ZZ)V
    .locals 10

    if-eqz p2, :cond_0

    .line 5957
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    :goto_0
    if-eqz p2, :cond_1

    .line 5958
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    :goto_1
    if-eqz p2, :cond_2

    .line 5959
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    :goto_2
    if-eqz v0, :cond_4

    .line 5961
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    if-eqz v3, :cond_4

    .line 5962
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    .line 5963
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$16200(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$16300(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result v3

    if-nez v3, :cond_4

    if-eqz p2, :cond_3

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$16400(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    :cond_3
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$15500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 5964
    :goto_3
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_4

    .line 5965
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    if-le v3, v1, :cond_4

    .line 5966
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$1900(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$16500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$16600(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z

    move-result v8

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$16600(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z

    move-result v9

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 5970
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5971
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-nez p2, :cond_5

    xor-int/2addr p1, v4

    .line 5973
    invoke-static {v2, v4, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$15700(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V

    goto :goto_4

    .line 5975
    :cond_5
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    if-ge p2, v0, :cond_6

    const/4 v3, 0x1

    :cond_6
    xor-int/2addr p1, v4

    invoke-static {v2, v3, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$15700(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V

    :goto_4
    return-void

    :cond_7
    if-eqz v2, :cond_b

    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    if-eqz p2, :cond_a

    .line 5984
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 5986
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_5

    .line 5988
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_a
    :goto_5
    xor-int/2addr p1, v4

    .line 5998
    invoke-static {v2, v4, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$15700(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V

    :cond_b
    :goto_6
    return-void
.end method

.method private checkGridVisibility(IF)V
    .locals 4

    .line 4327
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 4331
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p1, v0, :cond_2

    .line 4337
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 4338
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 4339
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {p1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 4340
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 4341
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4342
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 4343
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_2
    const/4 v0, 0x0

    if-nez p1, :cond_5

    .line 4346
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 4347
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    cmpl-float p2, p2, v0

    if-nez p2, :cond_3

    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 4348
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-nez p2, :cond_4

    const/16 v1, 0x8

    :cond_4
    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 4349
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 4350
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4352
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 4353
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {p1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_3

    :cond_5
    const/4 v3, 0x1

    if-ne p1, v3, :cond_8

    .line 4356
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 4357
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 4358
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 4359
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    cmpl-float p2, p2, v0

    if-nez p2, :cond_6

    const/16 v0, 0x8

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 4360
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    if-nez p2, :cond_7

    const/16 v1, 0x8

    :cond_7
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4362
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 4363
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {p1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_3

    :cond_8
    const/4 v3, 0x2

    if-ne p1, v3, :cond_b

    .line 4366
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 4367
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 4368
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {p1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 4369
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 4370
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4372
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    cmpl-float p2, p2, v0

    if-nez p2, :cond_9

    const/16 v0, 0x8

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 4373
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-nez p2, :cond_a

    const/16 v1, 0x8

    :cond_a
    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_b
    :goto_3
    return-void
.end method

.method private checkPanels()V
    .locals 4

    .line 6299
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-nez v0, :cond_0

    return-void

    .line 6302
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 6305
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    if-lez v1, :cond_1

    goto :goto_0

    .line 6307
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    if-lez v1, :cond_2

    goto :goto_0

    .line 6310
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 6312
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getTabForPosition(I)I

    move-result v0

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    :cond_3
    return-void
.end method

.method private checkScroll(I)V
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_5

    .line 6009
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->ignoreStickersScroll:Z

    if-eqz p1, :cond_0

    return-void

    .line 6012
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    if-ne p1, v0, :cond_1

    return-void

    .line 6016
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_2

    return-void

    .line 6020
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    if-lez v0, :cond_3

    goto :goto_0

    .line 6022
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    if-lez v0, :cond_4

    goto :goto_0

    .line 6025
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 6027
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getTabForPosition(I)I

    move-result p1

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto :goto_2

    :cond_5
    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    .line 6029
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    if-ne p1, v1, :cond_8

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$4000(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result p1

    if-ltz p1, :cond_8

    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    if-ltz p1, :cond_8

    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifRecentTabNum:I

    if-ltz p1, :cond_8

    .line 6030
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    if-ne p1, v0, :cond_6

    return-void

    .line 6034
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$4000(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result v1

    if-lt p1, v1, :cond_7

    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    goto :goto_1

    :cond_7
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifRecentTabNum:I

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    :cond_8
    :goto_2
    return-void
.end method

.method private checkStickersSearchFieldScroll(Z)V
    .locals 5

    .line 5557
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5558
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5560
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    xor-int/2addr p1, v2

    invoke-static {v0, v2, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$15700(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V

    goto :goto_0

    .line 5562
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    if-ge v0, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    xor-int/2addr p1, v2

    invoke-static {v3, v1, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$15700(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V

    :goto_0
    return-void

    .line 5566
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_3

    goto :goto_2

    .line 5569
    :cond_3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5571
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_1

    .line 5573
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 5575
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    xor-int/2addr p1, v2

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$15700(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V

    :cond_5
    :goto_2
    return-void
.end method

.method private checkTabsY(II)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 5722
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->checkEmojiTabY(Landroid/view/View;I)V

    return-void

    .line 5725
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->ignoreStickersScroll:Z

    if-eqz v1, :cond_3

    :cond_2
    return-void

    .line 5728
    :cond_3
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getListViewForType(I)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const/4 v2, 0x0

    if-lez p2, :cond_4

    if-eqz v1, :cond_4

    .line 5729
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 5730
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 5731
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    add-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    if-lt v3, v1, :cond_4

    return-void

    .line 5735
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    aget v3, v1, p1

    sub-int/2addr v3, p2

    aput v3, v1, p1

    .line 5736
    aget p2, v1, p1

    if-lez p2, :cond_5

    .line 5737
    aput v2, v1, p1

    goto :goto_0

    .line 5738
    :cond_5
    aget p2, v1, p1

    const/16 v1, 0x120

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    if-ge p2, v3, :cond_6

    .line 5739
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    aput v1, p2, p1

    :cond_6
    :goto_0
    const/4 p2, 0x3

    if-eqz p1, :cond_8

    if-ne p1, p2, :cond_7

    goto :goto_1

    .line 5744
    :cond_7
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getTabsForType(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x30

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    aget p1, v1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3

    :cond_8
    :goto_1
    if-ne p1, p2, :cond_9

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    .line 5742
    :goto_2
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabsPosition(Z)V

    :goto_3
    return-void
.end method

.method private createSetAvatarPreviewLayout(Landroid/content/Context;)V
    .locals 8

    .line 368
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->setAvatarPreviewLayout:Landroid/widget/FrameLayout;

    const-string v1, "dialogBackground"

    .line 369
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const v3, -0x20000001

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->setAvatarPreviewLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->setAvatarPreviewLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setSoundEffectsEnabled(Z)V

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->setAvatarPreviewLayout:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->setAvatarPreviewImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v3, 0x1

    .line 375
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 376
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->setAvatarPreviewImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    .line 377
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->setAvatarPreviewLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->setAvatarPreviewImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 379
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 380
    sget v4, Lorg/telegram/messenger/R$string;->content_preview_make_an_avatar:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41600000    # 14.0f

    .line 381
    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v3, "dialogTextBlue2"

    .line 382
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 383
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string v3, "listSelectorSDK21"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorWithBackgroundDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x11

    .line 384
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v1, 0x1d

    .line 385
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v3, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v1, "fonts/rmedium.ttf"

    .line 386
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 387
    new-instance v1, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->setAvatarPreviewLayout:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    const/16 v3, 0x30

    const/16 v4, 0x53

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string p1, "dialogShadowLine"

    .line 406
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 407
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->setAvatarPreviewLayout:Landroid/widget/FrameLayout;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v2

    const/4 v1, -0x1

    const/16 v3, 0x53

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createStickersChooseActionTracker()V
    .locals 7

    .line 4278
    new-instance v6, Lorg/telegram/ui/Components/EmojiView$37;

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->getDialogId()J

    move-result-wide v3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->getThreadId()I

    move-result v5

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EmojiView$37;-><init>(Lorg/telegram/ui/Components/EmojiView;IJI)V

    iput-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->chooseStickerActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    .line 4284
    invoke-virtual {v6}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->checkVisibility()V

    return-void
.end method

.method private getLayoutManagerForType(I)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 5865
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    return-object p1

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 5873
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    return-object p1

    .line 5875
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5871
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p1

    .line 5869
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p1
.end method

.method private getListViewForType(I)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 5848
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p1

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 5856
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p1

    .line 5858
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5854
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    return-object p1

    .line 5852
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p1
.end method

.method private getSearchFieldForType(I)Lorg/telegram/ui/Components/EmojiView$SearchField;
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 5882
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    return-object p1

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 5890
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    return-object p1

    .line 5892
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5888
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    return-object p1

    .line 5886
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    return-object p1
.end method

.method private getTabsForType(I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 5831
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    return-object p1

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 5839
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    return-object p1

    .line 5841
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5837
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    return-object p1

    .line 5835
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    return-object p1
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 7143
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 7144
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private synthetic lambda$animateTabsY$18(ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 5775
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-int p2, p2

    aput p2, v0, p1

    return-void
.end method

.method private synthetic lambda$createSetAvatarPreviewLayout$1(Landroid/view/View;)V
    .locals 0

    .line 372
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->hideSetAvatarPreview()V

    return-void
.end method

.method private synthetic lambda$createSetAvatarPreviewLayout$2(Landroid/view/View;)V
    .locals 6

    .line 388
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    .line 389
    sget v0, Lorg/telegram/messenger/NotificationCenter;->gifStickerAvatarPreparingStarted:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentPreviewGif:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 391
    sget v0, Lorg/telegram/messenger/NotificationCenter;->gifStickerAvatarPrepared:I

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->currentPreviewGif:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v4, v5, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v2, v3

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 392
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentPreviewSticker:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_2

    .line 393
    invoke-static {v0, v3}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->setAvatarPreviewImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 396
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentPreviewSticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getDuration()J

    move-result-wide v3

    const-string/jumbo v5, "temp_app_avatar.mp4"

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MediaController;->exportAnimatedSticker(ILorg/telegram/tgnet/TLRPC$Document;JLjava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_1
    sget v0, Lorg/telegram/messenger/NotificationCenter;->gifStickerAvatarPrepared:I

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->currentPreviewSticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v4, v5, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentPreviewSticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 227
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$10(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 2752
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-object v1, p3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ContentPreviewViewer;->onTouch(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILjava/lang/Object;Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$11(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)V
    .locals 12

    .line 2755
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 2756
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$22300(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v0

    .line 2757
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$22900(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    if-eqz p3, :cond_0

    .line 2759
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-interface {p1, p2, v2}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onShowStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V

    return-void

    :cond_0
    move-object v6, v0

    goto :goto_0

    :cond_1
    move-object v6, v2

    .line 2763
    :goto_0
    instance-of p3, p2, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-nez p3, :cond_2

    return-void

    .line 2766
    :cond_2
    move-object v4, p2

    check-cast v4, Lorg/telegram/ui/Cells/StickerEmojiCell;

    .line 2767
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget p2, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-nez p2, :cond_3

    .line 2768
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ContentPreviewViewer;->showMenuFor(Landroid/view/View;)Z

    return-void

    .line 2772
    :cond_3
    iget-boolean p2, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    if-nez p2, :cond_4

    .line 2773
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ContentPreviewViewer;->reset()V

    .line 2775
    :cond_4
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/StickerEmojiCell;->isDisabled()Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    .line 2778
    :cond_5
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/StickerEmojiCell;->disable()V

    .line 2780
    iget-boolean p2, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    if-eqz p2, :cond_6

    .line 2781
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lorg/telegram/ui/Components/EmojiView;->showSetAvatarPreview(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_1

    .line 2782
    :cond_6
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isSendingStickerConfirmationEnabled:Z

    if-eqz p2, :cond_7

    .line 2783
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    invoke-virtual {p2, v4, p3, v0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->showInstantly(Landroid/view/View;ILorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_1

    .line 2785
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getParentObject()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSendAnimationData()Lorg/telegram/messenger/MessageObject$SendAnimationData;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v3 .. v11}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onStickerSelected(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$new$12(I)V
    .locals 4

    .line 2921
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->firstTabUpdate:Z

    if-eqz v0, :cond_0

    return-void

    .line 2924
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 2925
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->openTrendingStickers(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V

    return-void

    .line 2929
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->isCategorySelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2930
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/EmojiView$SearchField;->search(Ljava/lang/String;Z)V

    .line 2931
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2800(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    .line 2934
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    if-ne p1, v0, :cond_4

    .line 2935
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 2936
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    const-string v0, "recent"

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getPositionForPack(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Components/EmojiView;->scrollStickersToPosition(II)V

    .line 2937
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->resetTabsY(I)V

    .line 2938
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    if-lez v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    :goto_0
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    return-void

    .line 2940
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    if-ne p1, v0, :cond_6

    .line 2941
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 2942
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    const-string v0, "fav"

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getPositionForPack(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Components/EmojiView;->scrollStickersToPosition(II)V

    .line 2943
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->resetTabsY(I)V

    .line 2944
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    if-lez v0, :cond_5

    move v1, v0

    goto :goto_1

    :cond_5
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    :goto_1
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    return-void

    .line 2946
    :cond_6
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->premiumTabNum:I

    if-ne p1, v0, :cond_8

    .line 2947
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 2948
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    const-string v0, "premium"

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getPositionForPack(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Components/EmojiView;->scrollStickersToPosition(II)V

    .line 2949
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->resetTabsY(I)V

    .line 2950
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->premiumTabNum:I

    if-lez v0, :cond_7

    move v1, v0

    goto :goto_2

    :cond_7
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    :goto_2
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    return-void

    .line 2954
    :cond_8
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    sub-int v0, p1, v0

    .line 2955
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_9

    return-void

    .line 2958
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_a

    .line 2959
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2961
    :cond_a
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->firstStickersAttach:Z

    .line 2962
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 2963
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getPositionForPack(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Components/EmojiView;->scrollStickersToPosition(II)V

    .line 2964
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->resetTabsY(I)V

    .line 2965
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->checkScroll(I)V

    .line 2967
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    if-lez v0, :cond_b

    goto :goto_3

    .line 2969
    :cond_b
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    if-lez v0, :cond_c

    goto :goto_3

    .line 2972
    :cond_c
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 2974
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    .line 2975
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->expandStickersByDragg:Z

    .line 2976
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabsPosition()V

    return-void
.end method

.method private synthetic lambda$new$13(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x1

    .line 3105
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoLoadingPreviewCanceled:Z

    return-void
.end method

.method private synthetic lambda$new$14(Landroid/view/View;I)V
    .locals 3

    .line 3098
    instance-of p2, p1, Lorg/fork/ui/view/KiklikoGifView;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 3101
    iput-boolean p2, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoLoadingPreviewCanceled:Z

    .line 3102
    check-cast p1, Lorg/fork/ui/view/KiklikoGifView;

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoLoadingPreviewView:Lorg/fork/ui/view/KiklikoGifView;

    .line 3103
    invoke-virtual {p1}, Lorg/fork/ui/view/KiklikoGifView;->getGif()Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;->getFile()Lcom/smedialink/storage/data/network/model/response/kikliko/GifFileResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/response/kikliko/GifFileResponse;->getMp4()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoLoadingPreviewUrl:Ljava/lang/String;

    .line 3104
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoLoadingPreviewView:Lorg/fork/ui/view/KiklikoGifView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoLoadingPreviewDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 3105
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 3106
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoLoadingPreviewDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 3107
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoLoadingPreviewView:Lorg/fork/ui/view/KiklikoGifView;

    invoke-virtual {p1}, Lorg/fork/ui/view/KiklikoGifView;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3108
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoLoadingPreviewUrl:Ljava/lang/String;

    aput-object v2, v1, p2

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 3110
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoLoadingPreviewUrl:Ljava/lang/String;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    const-string v1, "mp4"

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/messenger/ImageLoader;->loadHttpFile(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$15(I)V
    .locals 3

    .line 3181
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->firstKiklikoTabUpdate:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$16400(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3184
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 3185
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    if-nez p1, :cond_1

    .line 3187
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3189
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTags:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/data/network/model/response/kikliko/TagResponse;

    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/response/kikliko/TagResponse;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchEmoji(Ljava/lang/String;)V

    .line 3191
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->firstKiklikoAttach:Z

    .line 3192
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    const/4 p1, 0x3

    .line 3193
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->resetTabsY(I)V

    .line 3194
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->checkScroll(I)V

    .line 3195
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->expandKiklikoByDrag:Z

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$16(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    .line 3544
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3545
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->dismiss()V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$new$22()V
    .locals 2

    .line 7027
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 7028
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$5(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 2079
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    const/4 v4, 0x0

    move-object v1, p3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ContentPreviewViewer;->onTouch(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILjava/lang/Object;Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$6()V
    .locals 2

    .line 2280
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v0, :cond_0

    .line 2281
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->access$23100(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onEmojiSettingsClick(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$7(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 2490
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->gifOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    const/4 v3, 0x0

    move-object v1, p3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ContentPreviewViewer;->onTouch(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILjava/lang/Object;Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$8(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)V
    .locals 12

    .line 2492
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-nez v0, :cond_0

    return-void

    .line 2495
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$12200(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p3, p3, -0x1

    .line 2498
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_9

    if-gez p3, :cond_2

    return-void

    .line 2503
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    if-eqz v0, :cond_3

    .line 2504
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {p0, p1, v3}, Lorg/telegram/ui/Components/EmojiView;->showSetAvatarPreview(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$Document;)V

    goto/16 :goto_1

    .line 2505
    :cond_3
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isSendingGifConfirmationEnabled:Z

    if-eqz v0, :cond_4

    .line 2506
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    invoke-virtual {p3, p2, v2, v0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->showInstantly(Landroid/view/View;ILorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_1

    .line 2508
    :cond_4
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$21500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result v0

    if-ge p3, v0, :cond_5

    .line 2509
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v8, "gif"

    move-object v5, p2

    invoke-interface/range {v4 .. v11}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onGifSelected(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/String;)V

    goto/16 :goto_1

    .line 2512
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$21500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result v0

    if-lez v0, :cond_6

    .line 2513
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$21500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result v0

    sub-int/2addr p3, v0

    add-int/lit8 p3, p3, -0x1

    :cond_6
    if-ltz p3, :cond_e

    .line 2516
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$15500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_e

    .line 2518
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    if-eqz v0, :cond_7

    .line 2519
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$15500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {p0, p1, v3}, Lorg/telegram/ui/Components/EmojiView;->showSetAvatarPreview(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$Document;)V

    goto/16 :goto_1

    .line 2520
    :cond_7
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isSendingGifConfirmationEnabled:Z

    if-eqz v0, :cond_8

    .line 2521
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    invoke-virtual {p3, p2, v2, v0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->showInstantly(Landroid/view/View;ILorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_1

    .line 2523
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$15500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$23000(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p2

    invoke-interface/range {v3 .. v10}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onGifSelected(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/String;)V

    goto :goto_1

    .line 2526
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    if-ne v0, v1, :cond_e

    if-ltz p3, :cond_e

    .line 2527
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$15500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p3, v0, :cond_a

    goto :goto_1

    .line 2531
    :cond_a
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    if-eqz v0, :cond_b

    .line 2532
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$15500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p1, :cond_d

    .line 2534
    invoke-virtual {p0, p1, v3}, Lorg/telegram/ui/Components/EmojiView;->showSetAvatarPreview(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_0

    .line 2536
    :cond_b
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isSendingGifConfirmationEnabled:Z

    if-eqz v0, :cond_c

    .line 2537
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    invoke-virtual {p3, p2, v2, v0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->showInstantly(Landroid/view/View;ILorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    .line 2539
    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$15500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$1900(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$23000(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p2

    invoke-interface/range {v3 .. v10}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onGifSelected(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/String;)V

    .line 2540
    :cond_d
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateRecentGifs()V

    nop

    :cond_e
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$9(I)V
    .locals 4

    .line 2565
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$15500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2568
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 2569
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    .line 2570
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifRecentTabNum:I

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 2588
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->gifSearchEmojies:Ljava/util/ArrayList;

    .line 2589
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifFirstEmojiTabNum:I

    sub-int v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchEmoji(Ljava/lang/String;)V

    .line 2590
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifFirstEmojiTabNum:I

    sub-int v3, p1, v1

    if-lez v3, :cond_2

    .line 2591
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchPreloader:Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;

    sub-int v1, p1, v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->preload(Ljava/lang/String;)V

    .line 2593
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifFirstEmojiTabNum:I

    sub-int v1, p1, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_8

    .line 2594
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchPreloader:Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifFirstEmojiTabNum:I

    sub-int/2addr p1, v3

    add-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->preload(Ljava/lang/String;)V

    goto :goto_3

    .line 2572
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    const-string v3, ""

    if-eqz v0, :cond_4

    .line 2573
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;)V

    goto :goto_1

    .line 2575
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2576
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$4000(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result v0

    if-lt v0, v2, :cond_5

    .line 2577
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$4000(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_2

    .line 2579
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v3, :cond_7

    invoke-interface {v3}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    const/4 v2, 0x0

    :cond_7
    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2581
    :goto_2
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    if-ne p1, v0, :cond_8

    .line 2582
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->gifSearchEmojies:Ljava/util/ArrayList;

    .line 2583
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2584
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchPreloader:Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->preload(Ljava/lang/String;)V

    :cond_8
    :goto_3
    const/4 p1, 0x2

    .line 2597
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->resetTabsY(I)V

    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$20()V
    .locals 1

    const/4 v0, 0x0

    .line 6761
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    .line 6762
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    return-void
.end method

.method private synthetic lambda$postBackspaceRunnable$19(I)V
    .locals 2

    .line 6089
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspacePressed:Z

    if-nez v0, :cond_0

    return-void

    .line 6092
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onBackspace()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6093
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->performHapticFeedback(I)Z

    :cond_1
    const/4 v0, 0x1

    .line 6095
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceOnce:Z

    const/16 v0, 0x32

    add-int/lit8 p1, p1, -0x64

    .line 6096
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->postBackspaceRunnable(I)V

    return-void
.end method

.method private synthetic lambda$sendEmoji$4()V
    .locals 4

    .line 1642
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1643
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    const-string/jumbo v3, "user_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1644
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$5;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/EmojiView$5;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$showBottomTab$17(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 5697
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabAdditionalTranslation:F

    .line 5698
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateBottomTabContainerPosition()V

    return-void
.end method

.method private synthetic lambda$showStickerBanHint$21(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 6968
    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->showStickerBanHint(ZZZ)V

    return-void
.end method

.method private static synthetic lambda$static$3()V
    .locals 0

    return-void
.end method

.method private onPageScrolled(III)V
    .locals 3

    .line 6075
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v0, :cond_2

    if-eqz p3, :cond_1

    const/4 v1, 0x2

    .line 6079
    :cond_1
    invoke-interface {p2, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onTabOpened(I)V

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    const/4 p1, 0x3

    .line 6081
    invoke-interface {p2, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onTabOpened(I)V

    goto :goto_0

    .line 6083
    :cond_3
    invoke-interface {p2, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onTabOpened(I)V

    :goto_0
    return-void
.end method

.method private openPremiumAnimatedEmojiFeature()V
    .locals 1

    .line 4379
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v0, :cond_0

    .line 4380
    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onAnimatedEmojiUnlockClick()V

    :cond_0
    return-void
.end method

.method private openSearch(Lorg/telegram/ui/Components/EmojiView$SearchField;)V
    .locals 13

    .line 5237
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 5238
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 5239
    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    :cond_0
    const/4 v0, 0x0

    .line 5242
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->firstKiklikoAttach:Z

    .line 5243
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->firstStickersAttach:Z

    .line 5244
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->firstGifAttach:Z

    .line 5245
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->firstEmojiAttach:Z

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ge v1, v2, :cond_14

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    .line 5253
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    .line 5254
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 5255
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    .line 5256
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    .line 5259
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    .line 5260
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    .line 5261
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    .line 5262
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    goto :goto_1

    :cond_2
    if-ne v1, v3, :cond_3

    .line 5264
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    .line 5265
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 5266
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    .line 5267
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    goto :goto_1

    .line 5269
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    .line 5270
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 5271
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    .line 5272
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    :goto_1
    if-nez v5, :cond_4

    goto/16 :goto_b

    :cond_4
    const/16 v9, 0x28

    const/4 v10, 0x2

    if-ne p1, v5, :cond_7

    .line 5278
    iget-object v11, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v11, :cond_7

    invoke-interface {v11}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isExpanded()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 5279
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    const/16 v8, 0x24

    if-eqz v7, :cond_5

    if-eq v1, v10, :cond_5

    new-array v4, v4, [Landroid/animation/Animator;

    .line 5281
    sget-object v11, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v12, v3, [F

    .line 5282
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v12, v0

    invoke-static {v7, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v4, v0

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v3, [F

    .line 5283
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v9, v0

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v4, v3

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v3, [F

    .line 5284
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v3, v0

    invoke-static {v5, v7, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v4, v10

    .line 5281
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_3

    :cond_5
    new-array v4, v10, [Landroid/animation/Animator;

    .line 5286
    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v3, [F

    if-ne v1, v10, :cond_6

    const/4 v8, 0x0

    goto :goto_2

    .line 5287
    :cond_6
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    :goto_2
    aput v8, v9, v0

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v4, v0

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v3, [F

    .line 5288
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    aput v9, v8, v0

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v3

    .line 5286
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5290
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0xdc

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5291
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5292
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$40;

    invoke-direct {v3, p0, v6}, Lorg/telegram/ui/Components/EmojiView$40;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5315
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_b

    .line 5317
    :cond_7
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v5, v11}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    if-eqz v7, :cond_8

    if-eq v1, v10, :cond_8

    if-eq v1, v4, :cond_8

    .line 5319
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v7, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 5321
    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eq v6, v4, :cond_b

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne v6, v4, :cond_9

    goto :goto_4

    .line 5323
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    if-ne v6, v2, :cond_a

    const/4 v2, 0x5

    .line 5324
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v6, v4, v0, v2, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_5

    .line 5325
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne v6, v2, :cond_c

    .line 5326
    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    invoke-virtual {v6, v0, v2, v0, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_5

    .line 5322
    :cond_b
    :goto_4
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v6, v0, v2, v0, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 5329
    :cond_c
    :goto_5
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne v6, v2, :cond_d

    const/4 v4, 0x1

    goto :goto_6

    :cond_d
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_e

    goto :goto_7

    .line 5330
    :cond_e
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    :goto_7
    if-eqz v4, :cond_f

    .line 5331
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    goto :goto_8

    :cond_f
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    :goto_8
    if-eqz v4, :cond_10

    .line 5332
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    goto :goto_9

    :cond_10
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    :goto_9
    if-ne v6, v2, :cond_13

    if-eqz v4, :cond_11

    .line 5335
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$15500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_12

    goto :goto_a

    :cond_11
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$15500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_12

    goto :goto_a

    :cond_12
    const/4 v3, 0x0

    :goto_a
    invoke-static {v5, v3}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$15402(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Z)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, ""

    .line 5336
    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;)V

    .line 5337
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    if-eq v3, v5, :cond_13

    .line 5338
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5342
    :cond_13
    invoke-virtual {v8, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 5345
    :cond_14
    invoke-direct {p0, v0, v3}, Lorg/telegram/ui/Components/EmojiView;->showBottomTab(ZZ)V

    return-void
.end method

.method private openTrendingStickers(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V
    .locals 10

    .line 4954
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$39;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/EmojiView$39;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    .line 5037
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    new-instance v9, Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->primaryInstallingStickerSets:[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Landroid/util/LongSparseArray;

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Landroid/util/LongSparseArray;

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, v9

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/TrendingStickersLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-interface {v8, v9}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->showTrendingStickersAlert(Lorg/telegram/ui/Components/TrendingStickersLayout;)V

    return-void
.end method

.method private postBackspaceRunnable(I)V
    .locals 3

    .line 6088
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/EmojiView;I)V

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private prepareKikliko()V
    .locals 8

    .line 349
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->isKiklikoPrepared:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->isKiklikoPrepareLoading:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->presenter:Lcom/smedialink/ui/kikliko/EmojiViewPresenter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 352
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->isKiklikoPrepareLoading:Z

    .line 353
    invoke-virtual {v0}, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->loadKiklikoTags()V

    .line 354
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, ""

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private reloadStickersAdapter()V
    .locals 1

    .line 6634
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_0

    .line 6635
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    .line 6638
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    if-nez v0, :cond_1

    return-void

    .line 6642
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    if-eqz v0, :cond_2

    .line 6643
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->notifyDataSetChanged()V

    .line 6645
    :cond_2
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ContentPreviewViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6646
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ContentPreviewViewer;->close()V

    .line 6648
    :cond_3
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ContentPreviewViewer;->reset()V

    return-void
.end method

.method private resetTabsY(I)V
    .locals 3

    .line 5749
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    return-void

    .line 5752
    :cond_2
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->getTabsForType(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->tabsMinusDy:[I

    const/4 v2, 0x0

    aput v2, v1, p1

    int-to-float p1, v2

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private saveNewPage()V
    .locals 5

    .line 6040
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    return-void

    .line 6044
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 6046
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v2, :cond_2

    .line 6052
    sget v3, Lorg/telegram/ui/Components/EmojiView;->TAB_KIKLIKO:I

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    if-ne v0, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 6061
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    if-eq v0, v3, :cond_5

    .line 6062
    iput v3, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    if-nez v1, :cond_5

    .line 6065
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "selected_page"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_5
    return-void
.end method

.method private scrollEmojisToPosition(II)V
    .locals 4

    .line 5406
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 5407
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    sub-int v0, p1, v1

    .line 5408
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x41100000    # 9.0f

    mul-float v1, v1, v3

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->animationsEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5409
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const/4 v3, 0x0

    if-ge v1, p1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollDirection(I)V

    .line 5410
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-virtual {v0, p1, p2, v3, v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollToPosition(IIZZ)V

    goto :goto_1

    .line 5412
    :cond_3
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->ignoreStickersScroll:Z

    .line 5413
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$42;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Components/EmojiView$42;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    .line 5424
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 5425
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->setOffset(I)V

    .line 5426
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    :goto_1
    return-void
.end method

.method private scrollGifsToTop()V
    .locals 1

    const/4 v0, 0x0

    .line 345
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->scrollGifsToTop(Z)V

    return-void
.end method

.method private scrollGifsToTop(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 6002
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    :goto_0
    const/4 v1, 0x0

    .line 6003
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    .line 6004
    :goto_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->resetTabsY(I)V

    return-void
.end method

.method private scrollStickersToPosition(II)V
    .locals 4

    .line 5379
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 5380
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sub-int v0, p1, v1

    .line 5381
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_1

    .line 5382
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const/4 v3, 0x0

    if-ge v1, p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollDirection(I)V

    .line 5383
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-virtual {v0, p1, p2, v3, v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollToPosition(IIZZ)V

    goto :goto_1

    .line 5385
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->ignoreStickersScroll:Z

    .line 5386
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :goto_1
    return-void
.end method

.method private sendEmoji(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Ljava/lang/String;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 1600
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 1605
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz p2, :cond_b

    .line 1606
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object p2

    iget-wide v3, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    .line 1607
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_3

    const/4 v5, 0x0

    .line 1610
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->emojipacksProcessed:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 1611
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->emojipacksProcessed:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    const/4 v7, 0x0

    .line 1612
    :goto_1
    iget-object v8, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 1613
    iget-object v8, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v10, v8, v3

    if-nez v10, :cond_1

    .line 1614
    iget-object p2, v6, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    .line 1621
    iget p2, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p2, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    :cond_4
    move-object v5, p2

    if-eqz v5, :cond_5

    .line 1624
    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object p2

    move-object v6, p2

    goto :goto_3

    :cond_5
    move-object v6, v0

    .line 1626
    :goto_3
    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isFreeEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p2

    if-nez p2, :cond_a

    iget p2, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz p2, :cond_6

    invoke-interface {p2}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isUserSelf()Z

    move-result p2

    if-nez p2, :cond_a

    :cond_6
    iget-boolean p2, p0, Lorg/telegram/ui/Components/EmojiView;->allowEmojisForNonPremium:Z

    if-nez p2, :cond_a

    .line 1627
    invoke-direct {p0, v2, v1}, Lorg/telegram/ui/Components/EmojiView;->showBottomTab(ZZ)V

    .line 1628
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_7

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->bulletinContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    .line 1629
    :goto_4
    iget-boolean p2, p0, Lorg/telegram/ui/Components/EmojiView;->premiumBulletin:Z

    if-nez p2, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez p2, :cond_8

    goto :goto_5

    .line 1637
    :cond_8
    sget p2, Lorg/telegram/messenger/R$raw;->saved_messages:I

    sget v0, Lorg/telegram/messenger/R$string;->UnlockPremiumEmojiHint2:I

    const-string v2, "UnlockPremiumEmojiHint2"

    .line 1639
    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->Open:I

    const-string v3, "Open"

    .line 1640
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    .line 1637
    invoke-virtual {p1, p2, v0, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 1659
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_6

    .line 1630
    :cond_9
    :goto_5
    sget p2, Lorg/telegram/messenger/R$string;->UnlockPremiumEmojiHint:I

    const-string v0, "UnlockPremiumEmojiHint"

    .line 1632
    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->PremiumMore:I

    const-string v2, "PremiumMore"

    .line 1633
    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    .line 1630
    invoke-virtual {p1, v5, p2, v0, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 1635
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 1661
    :goto_6
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->premiumBulletin:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->premiumBulletin:Z

    return-void

    .line 1664
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lorg/telegram/ui/Components/EmojiView;->shownBottomTabAfterClick:J

    .line 1665
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/EmojiView;->showBottomTab(ZZ)V

    .line 1666
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "animated_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/EmojiView;->addEmojiToRecent(Ljava/lang/String;)V

    .line 1667
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$5900(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Z

    move-result v7

    invoke-interface/range {v2 .. v7}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onCustomEmojiSelected(JLorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Z)V

    :cond_b
    return-void

    .line 1671
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Components/EmojiView;->shownBottomTabAfterClick:J

    .line 1672
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/EmojiView;->showBottomTab(ZZ)V

    if-eqz p2, :cond_d

    move-object v0, p2

    goto :goto_7

    .line 1673
    :cond_d
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1674
    :goto_7
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1675
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-nez p2, :cond_f

    .line 1677
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$5900(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 1678
    sget-object p1, Lorg/telegram/messenger/Emoji;->emojiColor:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_e

    .line 1680
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->addColorToCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1683
    :cond_e
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->addEmojiToRecent(Ljava/lang/String;)V

    .line 1684
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz p1, :cond_10

    .line 1685
    invoke-static {v0}, Lorg/telegram/messenger/Emoji;->fixEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onEmojiSelected(Ljava/lang/String;)V

    goto :goto_8

    .line 1688
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    if-eqz p1, :cond_10

    .line 1689
    invoke-static {p2}, Lorg/telegram/messenger/Emoji;->fixEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onEmojiSelected(Ljava/lang/String;)V

    :cond_10
    :goto_8
    return-void
.end method

.method private showBackspaceButton(ZZ)V
    .locals 9

    .line 5600
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 5604
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    if-nez p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_2
    return-void

    .line 5607
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButtonAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 5608
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 5609
    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButtonAnimation:Landroid/animation/AnimatorSet;

    .line 5611
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p2, :cond_a

    if-eqz p1, :cond_6

    .line 5614
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5616
    :cond_6
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButtonAnimation:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    .line 5617
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v2, [F

    if-eqz p1, :cond_7

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_7
    const/4 v8, 0x0

    :goto_1
    aput v8, v7, v0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v2, [F

    if-eqz p1, :cond_8

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    :goto_2
    aput v8, v7, v0

    .line 5618
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x2

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v2, [F

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    :goto_3
    aput v1, v2, v0

    .line 5619
    invoke-static {v6, v7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v4, v5

    .line 5617
    invoke-virtual {p2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5620
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButtonAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5621
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButtonAnimation:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5622
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$44;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EmojiView$44;-><init>(Lorg/telegram/ui/Components/EmojiView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5630
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_8

    .line 5632
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 5633
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_c

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_c
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 5634
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_d

    goto :goto_6

    :cond_d
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 5635
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_e

    goto :goto_7

    :cond_e
    const/4 v0, 0x4

    :goto_7
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_8
    return-void
.end method

.method private showBottomTab(ZZ)V
    .locals 6

    const/4 v0, 0x0

    .line 5682
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastBottomScrollDy:F

    .line 5683
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p1, :cond_1

    .line 5686
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_1
    if-nez p1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    :cond_2
    return-void

    .line 5689
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 5690
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5691
    iput-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerAnimator:Landroid/animation/ValueAnimator;

    .line 5693
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x2d

    const/16 v3, 0x32

    if-eqz p2, :cond_8

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 5695
    iget v5, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabAdditionalTranslation:F

    aput v5, p2, v2

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    const/16 v1, 0x32

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float v0, p1

    :goto_2
    aput v0, p2, v4

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerAnimator:Landroid/animation/ValueAnimator;

    .line 5696
    new-instance p2, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5700
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/EmojiView$46;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/EmojiView$46;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5711
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x17c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5712
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5713
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    :cond_8
    if-eqz p1, :cond_9

    goto :goto_4

    .line 5715
    :cond_9
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_a
    const/16 v1, 0x32

    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float v0, p1

    :goto_4
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabAdditionalTranslation:F

    .line 5716
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateBottomTabContainerPosition()V

    :goto_5
    return-void
.end method

.method private showEmojiShadow(ZZ)V
    .locals 6

    if-eqz p1, :cond_0

    .line 5349
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 5352
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabShadowAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 5353
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 5354
    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabShadowAnimator:Landroid/animation/AnimatorSet;

    .line 5356
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    .line 5358
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabShadowAnimator:Landroid/animation/AnimatorSet;

    new-array v3, v2, [Landroid/animation/Animator;

    .line 5359
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    const/4 p1, 0x0

    aput v0, v2, p1

    invoke-static {v4, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, p1

    invoke-virtual {p2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5360
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabShadowAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5361
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabShadowAnimator:Landroid/animation/AnimatorSet;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5362
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabShadowAnimator:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/Components/EmojiView$41;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/EmojiView$41;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5368
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabShadowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    .line 5370
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_3
    return-void
.end method

.method private showStickerSettingsButton(ZZ)V
    .locals 9

    .line 5640
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 5643
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    if-nez p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_2
    return-void

    .line 5646
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersButtonAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 5647
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 5648
    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersButtonAnimation:Landroid/animation/AnimatorSet;

    .line 5650
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p2, :cond_a

    if-eqz p1, :cond_6

    .line 5653
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5655
    :cond_6
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersButtonAnimation:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    .line 5656
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v2, [F

    if-eqz p1, :cond_7

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_7
    const/4 v8, 0x0

    :goto_1
    aput v8, v7, v0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v2, [F

    if-eqz p1, :cond_8

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    :goto_2
    aput v8, v7, v0

    .line 5657
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x2

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v2, [F

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    :goto_3
    aput v1, v2, v0

    .line 5658
    invoke-static {v6, v7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v4, v5

    .line 5656
    invoke-virtual {p2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5659
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersButtonAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5660
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersButtonAnimation:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5661
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$45;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EmojiView$45;-><init>(Lorg/telegram/ui/Components/EmojiView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5669
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_8

    .line 5671
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 5672
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_c

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_c
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 5673
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_d

    goto :goto_6

    :cond_d
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 5674
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_e

    goto :goto_7

    :cond_e
    const/4 v0, 0x4

    :goto_7
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_8
    return-void
.end method

.method private startStopVisibleGifs(Z)V
    .locals 5

    .line 5121
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_0

    return-void

    .line 5124
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 5126
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5127
    instance-of v4, v3, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v4, :cond_2

    .line 5128
    check-cast v3, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 5129
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ContextLinkCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5131
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 5132
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    goto :goto_1

    .line 5134
    :cond_1
    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 5135
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->stopAnimation()V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private stopAnimatingTabsY(I)V
    .locals 2

    .line 5784
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsYAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5785
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->tabsYAnimators:[Landroid/animation/ObjectAnimator;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private updateBottomTabContainerPosition()V
    .locals 3

    .line 5048
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 5050
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    .line 5051
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_0

    .line 5052
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 5054
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    add-float/2addr v1, v0

    .line 5056
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    neg-float v0, v1

    .line 5059
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabMainTranslation:F

    .line 5060
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainer:Landroid/widget/FrameLayout;

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabAdditionalTranslation:F

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 5061
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    if-eqz v0, :cond_2

    .line 5062
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->bulletinContainer:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabMainTranslation:F

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabAdditionalTranslation:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_2
    return-void
.end method

.method private updateEmojiHeaders()V
    .locals 3

    .line 6107
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6110
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 6111
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6112
    instance-of v2, v1, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;

    if-eqz v2, :cond_1

    .line 6113
    check-cast v1, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->updateState(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateEmojiTabsPosition()V
    .locals 1

    .line 4288
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->updateEmojiTabsPosition(I)V

    return-void
.end method

.method private updateEmojiTabsPosition(I)V
    .locals 8

    .line 4291
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSmoothScrolling:Z

    if-nez v0, :cond_8

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    .line 4293
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getRecentEmoji()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->access$8100(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    if-lt p1, v1, :cond_7

    const/4 v2, 0x0

    .line 4296
    :goto_1
    sget-object v4, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 4297
    aget-object v4, v4, v2

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v1, v4

    if-ge p1, v1, :cond_1

    add-int/lit8 v0, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-gez v0, :cond_6

    .line 4305
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getEmojipacks()Ljava/util/ArrayList;

    move-result-object v1

    .line 4306
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->access$14700(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_3
    if-ltz v2, :cond_6

    .line 4307
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->access$14700(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, p1, :cond_5

    .line 4308
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojipacksProcessed:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    .line 4309
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_6

    .line 4310
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-object v2, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_4

    iget-boolean v2, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 4311
    :cond_3
    sget-object p1, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p1, v3

    move v3, p1

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_6
    move v3, v0

    :cond_7
    :goto_5
    if-ltz v3, :cond_8

    .line 4321
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/EmojiTabsStrip;->select(I)V

    :cond_8
    return-void
.end method

.method private updateGifTabs()V
    .locals 14

    .line 6317
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getCurrentPosition()I

    move-result v0

    .line 6319
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifRecentTabNum:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ltz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 6321
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v3

    .line 6323
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->beginUpdate(Z)V

    const/4 v6, -0x2

    .line 6326
    iput v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifRecentTabNum:I

    .line 6327
    iput v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    .line 6328
    iput v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifFirstEmojiTabNum:I

    if-eqz v5, :cond_2

    .line 6331
    iput v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifRecentTabNum:I

    .line 6332
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->gifIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v2

    invoke-virtual {v6, v2, v7}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(ILandroid/graphics/drawable/Drawable;)Landroid/widget/FrameLayout;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$string;->RecentStickers:I

    const-string v8, "RecentStickers"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    add-int/lit8 v7, v6, 0x1

    .line 6335
    iput v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    .line 6336
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView;->gifIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v3

    invoke-virtual {v6, v3, v8}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(ILandroid/graphics/drawable/Drawable;)Landroid/widget/FrameLayout;

    move-result-object v6

    sget v8, Lorg/telegram/messenger/R$string;->FeaturedGifs:I

    const-string v9, "FeaturedGifs"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6338
    iput v7, p0, Lorg/telegram/ui/Components/EmojiView;->gifFirstEmojiTabNum:I

    const/16 v6, 0xd

    .line 6339
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    const/16 v6, 0xb

    .line 6340
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    .line 6341
    iget v6, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->gifSearchEmojies:Ljava/util/ArrayList;

    .line 6342
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_4

    .line 6343
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 6344
    invoke-static {v9}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 6347
    iget v11, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v11

    invoke-virtual {v11, v9}, Lorg/telegram/messenger/MediaDataController;->getEmojiAnimatedSticker(Ljava/lang/CharSequence;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v11

    .line 6348
    iget-object v12, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    add-int/lit8 v13, v8, 0x3

    invoke-virtual {v12, v13, v10, v11}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addEmojiTab(ILorg/telegram/messenger/Emoji$EmojiDrawable;Lorg/telegram/tgnet/TLRPC$Document;)Landroid/view/View;

    move-result-object v10

    .line 6350
    invoke-virtual {v10, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 6354
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->commitUpdate()V

    .line 6355
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->updateTabStyles()V

    if-eqz v4, :cond_5

    if-nez v5, :cond_5

    .line 6358
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTrendingTabNum:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    .line 6359
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2800(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 6360
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2800(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$16700(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    goto :goto_4

    .line 6362
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v5, :cond_6

    if-nez v1, :cond_6

    .line 6364
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    add-int/2addr v0, v3

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto :goto_4

    :cond_6
    if-nez v5, :cond_7

    if-eqz v1, :cond_7

    .line 6366
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    :cond_7
    :goto_4
    return-void
.end method

.method private updateKiklikoTabs()V
    .locals 3

    .line 358
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->beginUpdate(Z)V

    .line 359
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTrendsIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addKiklikoTrendsTab(Landroid/graphics/drawable/Drawable;)V

    .line 360
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/storage/data/network/model/response/kikliko/TagResponse;

    .line 361
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addKiklikoTab(Lcom/smedialink/storage/data/network/model/response/kikliko/TagResponse;)V

    goto :goto_0

    .line 363
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->commitUpdate()V

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->updateTabStyles()V

    return-void
.end method

.method private updateRecentGifs()V
    .locals 6

    .line 6870
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6871
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    const v2, 0x7fffffff

    invoke-static {v1, v2}, Lorg/telegram/messenger/MediaDataController;->calcDocumentsHash(Ljava/util/ArrayList;I)J

    move-result-wide v3

    .line 6872
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getRecentGifs()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    .line 6873
    invoke-static {v1, v2}, Lorg/telegram/messenger/MediaDataController;->calcDocumentsHash(Ljava/util/ArrayList;I)J

    move-result-wide v1

    .line 6874
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz v5, :cond_0

    if-nez v0, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6875
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateGifTabs()V

    .line 6877
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v0, v5, :cond_3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    if-eqz v0, :cond_4

    .line 6878
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method private updateStickerTabs(Z)V
    .locals 14

    .line 6121
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_14

    :cond_0
    const/4 v0, -0x2

    .line 6124
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    .line 6125
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    .line 6126
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    .line 6127
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->premiumTabNum:I

    const/4 v0, 0x0

    .line 6128
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->hasChatStickers:Z

    .line 6130
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 6131
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getCurrentPosition()I

    move-result v1

    .line 6132
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->beginUpdate(Z)V

    .line 6134
    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    .line 6136
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getEmojiSettings(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 6137
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->featuredStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 6138
    invoke-virtual {v2}, Lorg/telegram/messenger/MediaDataController;->getFeaturedStickerSets()Ljava/util/ArrayList;

    move-result-object v5

    .line 6139
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_4

    .line 6140
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 6141
    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v2, v9, v10}, Lorg/telegram/messenger/MediaDataController;->isStickerPackInstalled(J)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    .line 6144
    :cond_3
    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiView;->featuredStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 6146
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->trendingAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingAdapter;

    if-eqz v6, :cond_5

    .line 6147
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6150
    :cond_5
    iget-boolean v6, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    const-wide/16 v7, 0x0

    if-nez v6, :cond_8

    .line 6151
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->featuredStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "featured_hidden"

    invoke-interface {v3, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v3, v9, v5

    if-nez v3, :cond_8

    .line 6152
    :cond_6
    invoke-virtual {v2}, Lorg/telegram/messenger/MediaDataController;->getUnreadStickerSets()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x2

    goto :goto_3

    :cond_7
    const/4 v3, 0x3

    .line 6153
    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->stickerIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v3

    invoke-virtual {v5, v3, v6}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addStickerIconTab(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/StickerTabView;

    move-result-object v3

    .line 6154
    iget-object v5, v3, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->FeaturedStickersShort:I

    const-string v9, "FeaturedStickersShort"

    invoke-static {v9, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6155
    sget v5, Lorg/telegram/messenger/R$string;->FeaturedStickers:I

    const-string v6, "FeaturedStickers"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6156
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    iput v3, p0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    add-int/2addr v3, v4

    .line 6157
    iput v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 6160
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 6161
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    iput v3, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    add-int/2addr v3, v4

    .line 6162
    iput v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 6163
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickerIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addStickerIconTab(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/StickerTabView;

    move-result-object v3

    .line 6164
    iget-object v5, v3, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->FavoriteStickersShort:I

    const-string v9, "FavoriteStickersShort"

    invoke-static {v9, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6165
    sget v5, Lorg/telegram/messenger/R$string;->FavoriteStickers:I

    const-string v6, "FavoriteStickers"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6168
    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 6169
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    iput v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    add-int/2addr v3, v4

    .line 6170
    iput v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 6171
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickerIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v0

    invoke-virtual {v3, v0, v5}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addStickerIconTab(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/StickerTabView;

    move-result-object v3

    .line 6172
    iget-object v5, v3, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->RecentStickersShort:I

    const-string v9, "RecentStickersShort"

    invoke-static {v9, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6173
    sget v5, Lorg/telegram/messenger/R$string;->RecentStickers:I

    const-string v6, "RecentStickers"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6177
    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    .line 6178
    iput-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/4 v5, -0x1

    .line 6179
    iput v5, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackPosition:I

    const/16 v5, -0xa

    .line 6180
    iput v5, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    .line 6182
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->frozenStickerSets:Ljava/util/ArrayList;

    if-eqz v5, :cond_b

    if-eqz p1, :cond_c

    .line 6183
    :cond_b
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->frozenStickerSets:Ljava/util/ArrayList;

    .line 6185
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->frozenStickerSets:Ljava/util/ArrayList;

    const/4 v5, 0x0

    .line 6186
    :goto_4
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->primaryInstallingStickerSets:[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    array-length v9, v6

    if-ge v5, v9, :cond_11

    .line 6187
    aget-object v6, v6, v5

    if-eqz v6, :cond_10

    .line 6189
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v2, v9, v10}, Lorg/telegram/messenger/MediaDataController;->getStickerSetById(J)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 6190
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-nez v9, :cond_d

    .line 6191
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->primaryInstallingStickerSets:[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    aput-object v3, v6, v5

    goto :goto_6

    .line 6193
    :cond_d
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;-><init>()V

    .line 6194
    iget-object v10, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object v10, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 6195
    iget-object v10, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v10, :cond_e

    .line 6196
    iget-object v6, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 6197
    :cond_e
    iget-object v10, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_f

    .line 6198
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6200
    :cond_f
    :goto_5
    iget-object v6, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_10

    .line 6201
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 6206
    :cond_11
    iget v5, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/telegram/messenger/MessagesController;->filterPremiumStickers(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v5, 0x0

    .line 6207
    :goto_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_14

    .line 6208
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 6209
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-nez v9, :cond_13

    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v9, :cond_13

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_12

    goto :goto_8

    .line 6212
    :cond_12
    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 6223
    :cond_14
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_1e

    .line 6224
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getEmojiSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "group_hide_stickers_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v9, -0x1

    invoke-interface {p1, v5, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 6225
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v11, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p1, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 6226
    iget-object v11, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v11, :cond_17

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_a

    .line 6228
    :cond_15
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p1, :cond_19

    .line 6229
    iget-wide v9, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long p1, v5, v9

    if-nez p1, :cond_16

    const/4 p1, 0x1

    goto :goto_9

    :cond_16
    const/4 p1, 0x0

    :goto_9
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickersHidden:Z

    goto :goto_c

    :cond_17
    :goto_a
    cmp-long p1, v5, v9

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_b

    :cond_18
    const/4 p1, 0x0

    .line 6227
    :goto_b
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickersHidden:Z

    .line 6231
    :cond_19
    :goto_c
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v5, :cond_1c

    .line 6232
    invoke-virtual {v2, v5}, Lorg/telegram/messenger/MediaDataController;->getGroupStickerSetById(Lorg/telegram/tgnet/TLRPC$StickerSet;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 6233
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v2, :cond_1e

    .line 6234
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;-><init>()V

    .line 6235
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    .line 6236
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    .line 6237
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object p1, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 6238
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickersHidden:Z

    if-eqz p1, :cond_1a

    .line 6239
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    .line 6240
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 6242
    :cond_1a
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    .line 6243
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 6245
    :goto_d
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_stickers:Z

    if-eqz p1, :cond_1b

    goto :goto_e

    :cond_1b
    move-object v2, v3

    :goto_e
    iput-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    goto :goto_f

    .line 6247
    :cond_1c
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_stickers:Z

    if-eqz p1, :cond_1e

    .line 6248
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;-><init>()V

    .line 6249
    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickersHidden:Z

    if-eqz v2, :cond_1d

    .line 6250
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    .line 6251
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 6253
    :cond_1d
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    .line 6254
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1e
    :goto_f
    const/4 p1, 0x0

    .line 6258
    :goto_10
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_26

    .line 6259
    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->groupStickerPackNum:I

    if-ne p1, v2, :cond_20

    .line 6260
    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-nez v2, :cond_1f

    .line 6262
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_13

    .line 6265
    :cond_1f
    iput-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView;->hasChatStickers:Z

    .line 6266
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addStickerTab(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto/16 :goto_13

    .line 6269
    :cond_20
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 6271
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v5, :cond_22

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_document_id:J

    cmp-long v9, v5, v7

    if-eqz v9, :cond_22

    const/4 v5, 0x0

    .line 6272
    :goto_11
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_22

    .line 6273
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_21

    .line 6274
    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_document_id:J

    iget-wide v11, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v13, v9, v11

    if-nez v13, :cond_21

    goto :goto_12

    :cond_21
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_22
    move-object v6, v3

    :goto_12
    if-nez v6, :cond_23

    .line 6281
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    .line 6283
    :cond_23
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumbs:Ljava/util/ArrayList;

    const/16 v9, 0x5a

    invoke-static {v5, v9}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    if-eqz v5, :cond_24

    .line 6284
    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$StickerSet;->gifs:Z

    if-eqz v9, :cond_25

    :cond_24
    move-object v5, v6

    .line 6287
    :cond_25
    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v9, v5, v6, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addStickerTab(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Landroid/view/View;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrStickerSet:I

    const-string v9, "AccDescrStickerSet"

    invoke-static {v9, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_13
    add-int/2addr p1, v4

    goto/16 :goto_10

    .line 6290
    :cond_26
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->commitUpdate()V

    .line 6291
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->updateTabStyles()V

    if-eqz v1, :cond_27

    .line 6293
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    .line 6295
    :cond_27
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->checkPanels()V

    :cond_28
    :goto_14
    return-void
.end method

.method private updateStickerTabsPosition()V
    .locals 1

    const/4 v0, 0x0

    .line 340
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabsPosition(Z)V

    return-void
.end method

.method private updateStickerTabsPosition(Z)V
    .locals 9

    if-eqz p1, :cond_0

    .line 5070
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabContainer:Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabContainer:Landroid/widget/FrameLayout;

    :goto_0
    if-eqz p1, :cond_1

    .line 5071
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoContainer:Landroid/widget/FrameLayout;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersContainer:Landroid/widget/FrameLayout;

    :goto_1
    if-eqz p1, :cond_2

    .line 5072
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    :goto_2
    if-eqz p1, :cond_3

    .line 5073
    iget-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoContainerAttached:Z

    goto :goto_3

    :cond_3
    iget-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersContainerAttached:Z

    :goto_3
    if-nez v0, :cond_4

    return-void

    .line 5078
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_5

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->getProgressToSearchOpened()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_6

    const/4 v4, 0x0

    goto :goto_5

    :cond_6
    const/16 v4, 0x8

    .line 5079
    :goto_5
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz v3, :cond_a

    .line 5082
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 5083
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->rect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-virtual {v4, v1, v7, v8}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    const/16 v1, 0x32

    .line 5084
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    invoke-interface {v4}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->getProgressToSearchOpened()F

    move-result v4

    mul-float v1, v1, v4

    .line 5085
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-nez v4, :cond_7

    const/4 v7, 0x0

    cmpl-float v7, v1, v7

    if-eqz v7, :cond_9

    :cond_7
    if-eqz p1, :cond_8

    .line 5089
    iput-boolean v6, p0, Lorg/telegram/ui/Components/EmojiView;->expandKiklikoByDrag:Z

    goto :goto_6

    .line 5091
    :cond_8
    iput-boolean v6, p0, Lorg/telegram/ui/Components/EmojiView;->expandStickersByDragg:Z

    :cond_9
    :goto_6
    int-to-float v4, v4

    .line 5094
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 5095
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v7

    add-float/2addr v4, v7

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v4, v7

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getExpandedOffset()F

    move-result v7

    sub-float/2addr v4, v7

    sub-float/2addr v4, v1

    .line 5096
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_a

    .line 5097
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 5098
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_a
    if-eqz p1, :cond_b

    .line 5102
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->expandKiklikoByDrag:Z

    if-eqz v0, :cond_c

    goto :goto_7

    :cond_b
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->expandStickersByDragg:Z

    if-eqz v0, :cond_c

    :goto_7
    if-eqz v3, :cond_c

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->showing:Z

    if-eqz v0, :cond_c

    .line 5103
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastStickersX:F

    invoke-virtual {v2, p1, v5}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandStickers(FZ)V

    goto :goto_9

    :cond_c
    if-eqz p1, :cond_d

    .line 5107
    iput-boolean v6, p0, Lorg/telegram/ui/Components/EmojiView;->expandKiklikoByDrag:Z

    goto :goto_8

    .line 5109
    :cond_d
    iput-boolean v6, p0, Lorg/telegram/ui/Components/EmojiView;->expandStickersByDragg:Z

    .line 5110
    :goto_8
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastStickersX:F

    invoke-virtual {v2, p1, v6}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandStickers(FZ)V

    :goto_9
    return-void
.end method

.method private updateVisibleTrendingSets()V
    .locals 15

    .line 6976
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_0

    return-void

    .line 6980
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_d

    .line 6982
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6983
    instance-of v4, v3, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    if-eqz v4, :cond_c

    .line 6984
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-nez v4, :cond_1

    goto/16 :goto_8

    .line 6988
    :cond_1
    check-cast v3, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    .line 6989
    iget v4, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaDataController;->getUnreadStickerSets()Ljava/util/ArrayList;

    move-result-object v4

    .line 6990
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->getStickerSet()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v12

    const/4 v13, 0x1

    if-eqz v4, :cond_2

    .line 6991
    iget-object v5, v12, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x0

    .line 6993
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->primaryInstallingStickerSets:[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    array-length v7, v6

    if-ge v5, v7, :cond_4

    .line 6994
    aget-object v7, v6, v5

    if-eqz v7, :cond_3

    aget-object v6, v6, v5

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-object v8, v12, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v10, v6, v8

    if-nez v10, :cond_3

    const/4 v14, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    :goto_3
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v3

    move-object v6, v12

    move v7, v4

    move v11, v14

    .line 6999
    invoke-virtual/range {v5 .. v11}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;ZZIIZ)V

    if-eqz v4, :cond_5

    .line 7001
    iget v4, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    iget-object v5, v12, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v4, v1, v5, v6}, Lorg/telegram/messenger/MediaDataController;->markFeaturedStickersByIdAsRead(ZJ)V

    .line 7003
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Landroid/util/LongSparseArray;

    iget-object v5, v12, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v4, v5, v6}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v4

    if-ltz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    .line 7004
    :goto_4
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Landroid/util/LongSparseArray;

    iget-object v6, v12, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v5, v6, v7}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v5

    if-ltz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    if-nez v4, :cond_8

    if-eqz v5, :cond_a

    :cond_8
    if-eqz v4, :cond_9

    .line 7006
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 7007
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Landroid/util/LongSparseArray;

    iget-object v5, v12, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v4, v5, v6}, Landroid/util/LongSparseArray;->remove(J)V

    const/4 v4, 0x0

    goto :goto_6

    :cond_9
    if-eqz v5, :cond_a

    .line 7009
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled()Z

    move-result v5

    if-nez v5, :cond_a

    .line 7010
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Landroid/util/LongSparseArray;

    iget-object v6, v12, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v5, v6, v7}, Landroid/util/LongSparseArray;->remove(J)V

    :cond_a
    :goto_6
    if-nez v14, :cond_b

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    goto :goto_7

    :cond_b
    const/4 v4, 0x0

    .line 7014
    :goto_7
    invoke-virtual {v3, v4, v13}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setAddDrawProgress(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 7018
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public addEmojiToRecent(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_6

    const-string v0, "animated_"

    .line 5163
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->isValidEmoji(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 5166
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->addRecentEmoji(Ljava/lang/String;)V

    .line 5167
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-eqz p1, :cond_2

    .line 5168
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/Emoji;->sortEmoji()V

    .line 5169
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 5171
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/Emoji;->saveRecentEmoji()V

    .line 5173
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->allowAnimatedEmoji:Z

    if-nez p1, :cond_6

    .line 5174
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    if-nez p1, :cond_3

    .line 5175
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    goto :goto_0

    .line 5177
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    const/4 p1, 0x0

    .line 5179
    :goto_1
    sget-object v1, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_5

    .line 5180
    sget-object v1, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 5181
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    sget-object v2, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 5184
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentCount:I

    :cond_6
    :goto_2
    return-void
.end method

.method public addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 6390
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    .line 6391
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateRecentGifs()V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 6393
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    :cond_1
    return-void
.end method

.method public addRecentSticker(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 6375
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v5, v4

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MediaDataController;->addRecentSticker(ILjava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;IZ)V

    .line 6376
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    .line 6377
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    .line 6378
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_1

    .line 6379
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    :cond_1
    if-eqz p1, :cond_2

    .line 6382
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    :cond_2
    return-void
.end method

.method public allowEmojisForNonPremium(Z)V
    .locals 0

    .line 525
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->allowEmojisForNonPremium:Z

    return-void
.end method

.method public areThereAnyStickers()Z
    .locals 1

    .line 7023
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clearRecentEmoji()V
    .locals 1

    .line 6070
    invoke-static {}, Lorg/telegram/messenger/Emoji;->clearRecentEmoji()V

    .line 6071
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public closeSearch(Z)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 5375
    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/Components/EmojiView;->closeSearch(ZJ)V

    return-void
.end method

.method public closeSearch(ZJ)V
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    .line 5431
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 5432
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 5433
    iput-object v4, v0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    .line 5436
    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    const-wide/16 v6, -0x1

    cmp-long v8, v1, v6

    if-eqz v8, :cond_1

    .line 5438
    iget v6, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSetById(J)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5440
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getPositionForPack(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 5441
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/16 v2, 0x30

    .line 5442
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/EmojiView;->scrollStickersToPosition(II)V

    .line 5447
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 5448
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$15402(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Z)Z

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/4 v6, 0x4

    if-ge v1, v6, :cond_10

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-ne v1, v6, :cond_3

    .line 5459
    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiView;->kiklikoSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    .line 5460
    iget-object v9, v0, Lorg/telegram/ui/Components/EmojiView;->kiklikoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 5461
    iget-object v10, v0, Lorg/telegram/ui/Components/EmojiView;->kiklikoLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    .line 5462
    iget-object v11, v0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    .line 5465
    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    .line 5466
    iget-object v9, v0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    .line 5467
    iget-object v10, v0, Lorg/telegram/ui/Components/EmojiView;->emojiLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 5468
    iget-object v11, v0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    goto :goto_1

    :cond_4
    if-ne v1, v7, :cond_5

    .line 5470
    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    .line 5471
    iget-object v9, v0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 5472
    iget-object v10, v0, Lorg/telegram/ui/Components/EmojiView;->gifLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    .line 5473
    iget-object v11, v0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    goto :goto_1

    .line 5475
    :cond_5
    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    .line 5476
    iget-object v9, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 5477
    iget-object v10, v0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 5478
    iget-object v11, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    :goto_1
    if-nez v8, :cond_6

    goto/16 :goto_5

    .line 5485
    :cond_6
    invoke-static {v8}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5486
    invoke-static {v8}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2800(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 5487
    invoke-static {v8}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2800(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v12

    invoke-virtual {v12, v4}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    .line 5488
    invoke-static {v8}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2800(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/StickerCategoriesListView;->scrollToStart()V

    :cond_7
    const/4 v12, 0x0

    const/16 v13, 0x24

    if-ne v1, v3, :cond_9

    if-eqz p1, :cond_9

    .line 5492
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v14, v0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    if-eqz v11, :cond_8

    if-eq v1, v7, :cond_8

    new-array v6, v6, [Landroid/animation/Animator;

    .line 5494
    sget-object v15, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v7, [F

    aput v12, v4, v2

    .line 5495
    invoke-static {v11, v15, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v6, v2

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v11, v7, [F

    .line 5496
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    aput v12, v11, v2

    invoke-static {v9, v4, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v6, v7

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v7, [F

    .line 5497
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    aput v11, v7, v2

    invoke-static {v8, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v6, v5

    .line 5494
    invoke-virtual {v14, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :cond_8
    new-array v4, v7, [Landroid/animation/Animator;

    .line 5500
    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v7, [F

    .line 5501
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iget v11, v0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    sub-int/2addr v8, v11

    int-to-float v8, v8

    aput v8, v7, v2

    invoke-static {v9, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v2

    .line 5500
    invoke-virtual {v14, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5504
    :goto_2
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5505
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5506
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    new-instance v6, Lorg/telegram/ui/Components/EmojiView$43;

    invoke-direct {v6, v0, v10, v9}, Lorg/telegram/ui/Components/EmojiView$43;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroidx/recyclerview/widget/GridLayoutManager;Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5533
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView;->searchAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_5

    .line 5535
    :cond_9
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eq v8, v4, :cond_a

    .line 5536
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iget v7, v0, Lorg/telegram/ui/Components/EmojiView;->searchFieldHeight:I

    sub-int/2addr v4, v7

    int-to-float v4, v4

    invoke-virtual {v8, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_a
    if-eqz v11, :cond_b

    if-eq v1, v5, :cond_b

    if-eq v1, v6, :cond_b

    .line 5539
    invoke-virtual {v11, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 5541
    :cond_b
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v6, 0x2c

    if-eq v9, v4, :cond_e

    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView;->kiklikoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne v9, v4, :cond_c

    goto :goto_3

    .line 5543
    :cond_c
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView;->gifGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne v9, v4, :cond_d

    const/16 v4, 0x28

    .line 5544
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v9, v2, v4, v2, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_4

    .line 5545
    :cond_d
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    if-ne v9, v4, :cond_f

    const/4 v4, 0x5

    .line 5546
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v9, v7, v8, v4, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_4

    .line 5542
    :cond_e
    :goto_3
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v9, v2, v4, v2, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 5548
    :cond_f
    :goto_4
    invoke-virtual {v10, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_10
    if-nez p1, :cond_11

    .line 5552
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onSearchOpenClose(I)V

    :cond_11
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 6

    .line 7036
    sget p2, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    const/4 v0, 0x0

    if-eq p1, p2, :cond_16

    sget v1, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    if-ne p1, v1, :cond_0

    goto/16 :goto_3

    .line 7051
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    const/4 v1, 0x1

    if-ne p1, p2, :cond_2

    .line 7052
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    .line 7053
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz p1, :cond_1a

    .line 7054
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    .line 7055
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateVisibleTrendingSets()V

    .line 7056
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    .line 7057
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->checkPanels()V

    goto/16 :goto_4

    .line 7059
    :cond_1
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_1a

    .line 7060
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged(Z)V

    goto/16 :goto_4

    .line 7062
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoad:I

    const/4 v2, 0x2

    if-ne p1, p2, :cond_4

    .line 7063
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 7064
    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    if-ne p2, v2, :cond_1a

    .line 7066
    :cond_3
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->checkDocuments(Z)V

    goto/16 :goto_4

    .line 7068
    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoad:I

    if-ne p1, p2, :cond_6

    .line 7069
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateVisibleTrendingSets()V

    .line 7070
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    if-eqz p1, :cond_5

    .line 7071
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_5

    .line 7073
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-virtual {p3, p2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 7076
    :cond_5
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    goto/16 :goto_4

    .line 7077
    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->featuredEmojiDidLoad:I

    if-ne p1, p2, :cond_7

    .line 7078
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    if-eqz p1, :cond_1a

    .line 7079
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    goto/16 :goto_4

    .line 7081
    :cond_7
    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    if-ne p1, p2, :cond_a

    .line 7082
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p1, :cond_8

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    aget-object v3, p3, v0

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-nez v5, :cond_8

    .line 7083
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    .line 7085
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->toInstall:Ljava/util/HashMap;

    aget-object p2, p3, v0

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    array-length p1, p3

    if-lt p1, v2, :cond_9

    .line 7086
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 7087
    aget-object p3, p3, v1

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 7088
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->toInstall:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v0, :cond_9

    if-eqz p3, :cond_9

    .line 7090
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->toInstall:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p1, :cond_9

    .line 7092
    invoke-interface {p1, p3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 7096
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->updateStickersLoadedDelayed:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 7097
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->updateStickersLoadedDelayed:Ljava/lang/Runnable;

    const-wide/16 p2, 0x64

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_4

    .line 7098
    :cond_a
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_12

    .line 7099
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_d

    .line 7100
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_d

    .line 7102
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 7103
    instance-of v1, p3, Lorg/telegram/ui/Cells/StickerSetNameCell;

    if-nez v1, :cond_b

    instance-of v1, p3, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v1, :cond_c

    .line 7104
    :cond_b
    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 7108
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    if-eqz p1, :cond_f

    .line 7109
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 7110
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_2
    if-ge v0, p1, :cond_f

    .line 7112
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 7113
    instance-of p3, p2, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz p3, :cond_e

    .line 7114
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7118
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    if-eqz p1, :cond_10

    .line 7119
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 7121
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz p1, :cond_11

    .line 7122
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->invalidateTabs()V

    .line 7125
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz p1, :cond_1a

    .line 7126
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->invalidateTabs()V

    goto/16 :goto_4

    .line 7129
    :cond_12
    sget p2, Lorg/telegram/messenger/NotificationCenter;->newEmojiSuggestionsAvailable:I

    if-ne p1, p2, :cond_14

    .line 7130
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    if-eqz p1, :cond_1a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$17200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/SearchStateDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchStateDrawable;->getIconState()I

    move-result p1

    if-eq p1, v2, :cond_13

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    if-ne p1, p2, :cond_1a

    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->access$2100(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 7131
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->access$2100(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->search(Ljava/lang/String;)V

    goto :goto_4

    .line 7133
    :cond_14
    sget p2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    if-ne p1, p2, :cond_1a

    .line 7134
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    if-eqz p1, :cond_15

    .line 7135
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 7137
    :cond_15
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateEmojiHeaders()V

    .line 7138
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    goto :goto_4

    .line 7037
    :cond_16
    :goto_3
    aget-object p3, p3, v0

    check-cast p3, Ljava/lang/String;

    .line 7038
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoLoadingPreviewCanceled:Z

    if-nez v1, :cond_1a

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoLoadingPreviewUrl:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_17

    goto :goto_4

    .line 7041
    :cond_17
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoLoadingPreviewDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    if-ne p1, p2, :cond_19

    .line 7043
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->presenter:Lcom/smedialink/ui/kikliko/EmojiViewPresenter;

    if-eqz p1, :cond_18

    .line 7044
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoLoadingPreviewView:Lorg/fork/ui/view/KiklikoGifView;

    invoke-virtual {p2}, Lorg/fork/ui/view/KiklikoGifView;->getGif()Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;->getSlug()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->onGifPreviewAsOpened(Ljava/lang/String;)V

    .line 7046
    :cond_18
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoLoadingPreviewView:Lorg/fork/ui/view/KiklikoGifView;

    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView;->contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p1, p2, v0, p3, v1}, Lorg/telegram/ui/ContentPreviewViewer;->showInstantly(Landroid/view/View;ILorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_4

    .line 7048
    :cond_19
    sget p1, Lorg/telegram/messenger/R$string;->common_unexpected_error_title:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    :cond_1a
    :goto_4
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 5116
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateBottomTabContainerPosition()V

    .line 5117
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    .line 6797
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    return v0
.end method

.method public getEmojiAdapter()Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    return-object v0
.end method

.method public getEmojipacks()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/EmojiView$EmojiPack;",
            ">;"
        }
    .end annotation

    .line 8376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 8377
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojipacksProcessed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 8378
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojipacksProcessed:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    .line 8379
    iget-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    if-nez v3, :cond_0

    iget-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    iget-object v4, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->installedEmojiSets:Ljava/util/ArrayList;

    iget-object v4, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 8380
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getRecentEmoji()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5144
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->allowAnimatedEmoji:Z

    if-eqz v0, :cond_0

    .line 5145
    sget-object v0, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    return-object v0

    .line 5147
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 5148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    .line 5150
    :cond_1
    sget-object v0, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentCount:I

    if-eq v0, v1, :cond_4

    .line 5151
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 5152
    :goto_0
    sget-object v1, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 5153
    sget-object v1, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "animated_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5154
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    sget-object v2, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5157
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentCount:I

    .line 5159
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastRecentArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStickersExpandOffset()F
    .locals 3

    .line 10173
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 10174
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getExpandedOffset()F

    move-result v0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    return v0

    .line 10180
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getExpandedOffset()F

    move-result v1

    :goto_0
    return v1
.end method

.method public hideSearchKeyboard()V
    .locals 1

    .line 5221
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_0

    .line 5222
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->hideKeyboard()V

    .line 5225
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_1

    .line 5226
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->hideKeyboard()V

    .line 5228
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_2

    .line 5229
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->hideKeyboard()V

    .line 5231
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_3

    .line 5232
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->hideKeyboard()V

    :cond_3
    return-void
.end method

.method public hideSetAvatarPreview()V
    .locals 7

    .line 280
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/Animator;

    .line 281
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->setAvatarPreviewLayout:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v1, v6

    invoke-static {v3, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0xc8

    .line 282
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 283
    new-instance v1, Lorg/telegram/ui/Components/EmojiView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EmojiView$2;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 290
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .line 6665
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 6747
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 6749
    invoke-virtual {p0}, Lcom/smedialink/ui/base/mvp/view/MvpFrameLayout;->onCreateMvpView()V

    .line 6750
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/EmojiView;->observers:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 6752
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6753
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->newEmojiSuggestionsAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6754
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_0

    .line 6755
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6756
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6757
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6758
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6759
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6760
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 6801
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/EmojiView;->observers:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 6802
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6803
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->newEmojiSuggestionsAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6804
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6805
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_0

    .line 6806
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6807
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6808
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6809
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 6815
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 6816
    invoke-virtual {p0}, Lcom/smedialink/ui/base/mvp/view/MvpFrameLayout;->onDestroyMvpView()V

    .line 6817
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6818
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public onKiklikoSearchResultsLoaded(Ljava/lang/String;Ljava/lang/String;ZLcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;)V
    .locals 1

    .line 331
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastKiklikoSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->processKiklikoResponse(Ljava/lang/String;Ljava/lang/String;ZLcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;)V

    return-void
.end method

.method public onKiklikoTagsLoaded(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/network/model/response/kikliko/TagResponse;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 322
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->isKiklikoPrepareLoading:Z

    const/4 v0, 0x1

    .line 323
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->isKiklikoPrepared:Z

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 325
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 326
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateKiklikoTabs()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 6623
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastNotifyWidth:I

    sub-int v1, p4, p2

    if-eq v0, v1, :cond_0

    .line 6624
    iput v1, p0, Lorg/telegram/ui/Components/EmojiView;->lastNotifyWidth:I

    .line 6625
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    .line 6627
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 6628
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateBottomTabContainerPosition()V

    .line 6629
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabsPosition()V

    const/4 p1, 0x1

    .line 6630
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabsPosition(Z)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 8

    const/4 v0, 0x1

    .line 6571
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->isLayout:Z

    .line 6572
    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    const/16 v2, 0x15

    const/4 v3, 0x0

    const-string/jumbo v4, "windowBackgroundWhite"

    const-string v5, "chat_emojiPanelBackground"

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->forseMultiwindowLayout:Z

    if-eqz v1, :cond_0

    goto :goto_2

    .line 6595
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    if-eqz v0, :cond_a

    .line 6596
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    .line 6597
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 6598
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    const/4 v0, 0x0

    .line 6599
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 6602
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    if-eqz v0, :cond_2

    .line 6603
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 6605
    :cond_2
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 6606
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    if-eqz v0, :cond_4

    .line 6608
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    if-eqz v0, :cond_3

    .line 6609
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerBackground:Landroid/view/View;

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 6611
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerBackground:Landroid/view/View;

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6613
    :cond_4
    :goto_1
    iput v3, p0, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    goto :goto_5

    .line 6573
    :cond_5
    :goto_2
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    if-eq v1, v0, :cond_a

    .line 6574
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_6

    .line 6575
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->outlineProvider:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 6576
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    const/4 v1, 0x2

    .line 6577
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 6579
    :cond_6
    sget v1, Lorg/telegram/messenger/R$drawable;->smiles_popup:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 6581
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    if-eqz v1, :cond_7

    .line 6582
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_3

    .line 6584
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6585
    :goto_3
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    if-eqz v1, :cond_9

    .line 6587
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    if-eqz v1, :cond_8

    .line 6588
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerBackground:Landroid/view/View;

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 6590
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerBackground:Landroid/view/View;

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6592
    :cond_9
    :goto_4
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    .line 6616
    :cond_a
    :goto_5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 6617
    iput-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView;->isLayout:Z

    .line 6618
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    return-void
.end method

.method public onMessageSend()V
    .locals 1

    .line 10190
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->chooseStickerActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    if-eqz v0, :cond_0

    .line 10191
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->access$22800(Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;)V

    :cond_0
    return-void
.end method

.method public onOpen(Z)V
    .locals 4

    .line 6673
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersBanned:Z

    if-eqz v0, :cond_0

    .line 6674
    iput v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    .line 6676
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiBanned:Z

    if-eqz v0, :cond_1

    .line 6677
    iput v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    .line 6680
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    sget v3, Lorg/telegram/ui/Components/EmojiView;->TAB_KIKLIKO:I

    if-ne v0, v3, :cond_3

    .line 6681
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/EmojiView;->showBackspaceButton(ZZ)V

    .line 6682
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/EmojiView;->showStickerSettingsButton(ZZ)V

    .line 6683
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    .line 6684
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 6686
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz p1, :cond_e

    .line 6687
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->firstKiklikoTabUpdate:Z

    .line 6688
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    .line 6689
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->firstKiklikoTabUpdate:Z

    .line 6690
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoLayoutManager:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    invoke-virtual {p1, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto/16 :goto_4

    :cond_3
    if-eqz v0, :cond_d

    if-nez p1, :cond_d

    .line 6693
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_4

    goto/16 :goto_3

    .line 6699
    :cond_4
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    const/4 v0, 0x2

    if-ne p1, v2, :cond_9

    .line 6700
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/EmojiView;->showBackspaceButton(ZZ)V

    .line 6701
    invoke-direct {p0, v2, v1}, Lorg/telegram/ui/Components/EmojiView;->showStickerSettingsButton(ZZ)V

    .line 6703
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    if-eqz p1, :cond_5

    .line 6704
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-eq p1, v2, :cond_6

    .line 6705
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 6708
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-eq p1, v0, :cond_6

    .line 6709
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 6711
    :cond_6
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz p1, :cond_e

    .line 6712
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->firstTabUpdate:Z

    .line 6713
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->favTabNum:I

    if-ltz v0, :cond_7

    .line 6714
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    goto :goto_1

    .line 6715
    :cond_7
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabNum:I

    if-ltz v0, :cond_8

    .line 6716
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    goto :goto_1

    .line 6718
    :cond_8
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    .line 6720
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->firstTabUpdate:Z

    .line 6721
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_4

    :cond_9
    if-ne p1, v0, :cond_e

    .line 6724
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/EmojiView;->showBackspaceButton(ZZ)V

    .line 6725
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/EmojiView;->showStickerSettingsButton(ZZ)V

    .line 6727
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    if-eqz p1, :cond_a

    .line 6728
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-eqz p1, :cond_b

    .line 6729
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_2

    .line 6732
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-eq p1, v2, :cond_b

    .line 6733
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 6735
    :cond_b
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz p1, :cond_c

    .line 6736
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    .line 6738
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz p1, :cond_e

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2800(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 6739
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2800(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$17800(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    goto :goto_4

    .line 6694
    :cond_d
    :goto_3
    invoke-direct {p0, v2, v1}, Lorg/telegram/ui/Components/EmojiView;->showBackspaceButton(ZZ)V

    .line 6695
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/EmojiView;->showStickerSettingsButton(ZZ)V

    .line 6696
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-eqz v0, :cond_e

    .line 6697
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    xor-int/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 6742
    :cond_e
    :goto_4
    invoke-direct {p0, v2, v2}, Lorg/telegram/ui/Components/EmojiView;->showBottomTab(ZZ)V

    return-void
.end method

.method public openEmojiPackAlert(Lorg/telegram/tgnet/TLRPC$StickerSet;)V
    .locals 8

    .line 4879
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiPackAlertOpened:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4882
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiPackAlertOpened:Z

    .line 4883
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4884
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 4885
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 4886
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 4887
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4888
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$38;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/EmojiView$38;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$StickerSet;)V

    .line 4906
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->show()V

    return-void
.end method

.method providePresenter()Lcom/smedialink/ui/kikliko/EmojiViewPresenter;
    .locals 1
    .annotation runtime Lmoxy/presenter/ProvidePresenter;
    .end annotation

    .line 175
    const-class v0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;

    invoke-static {v0}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;

    return-object v0
.end method

.method public requestLayout()V
    .locals 1

    .line 6399
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->isLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 6402
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollEmojisToAnimated()V
    .locals 2

    .line 5391
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSmoothScrolling:Z

    if-eqz v0, :cond_0

    return-void

    .line 5395
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->access$9100(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Landroid/util/SparseIntArray;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 5397
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 5398
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->updateEmojiTabsPosition(I)V

    const/16 v1, -0x9

    .line 5399
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/EmojiView;->scrollEmojisToPosition(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5400
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/EmojiView;->checkEmojiTabY(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public searchProgressChanged()V
    .locals 1

    .line 10167
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabsPosition()V

    const/4 v0, 0x1

    .line 10168
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabsPosition(Z)V

    return-void
.end method

.method public setAllow(ZZZ)V
    .locals 5

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 498
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_4

    .line 500
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView$Tab;->type:I

    sget v4, Lorg/telegram/ui/Components/EmojiView;->TAB_KIKLIKO:I

    if-ne v2, v4, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    if-nez v2, :cond_0

    .line 501
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/EmojiView$Tab;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 503
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView$Tab;->type:I

    if-nez v2, :cond_1

    .line 504
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/EmojiView$Tab;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView$Tab;->type:I

    if-ne v2, v3, :cond_2

    if-eqz p2, :cond_2

    .line 506
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$Tab;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView$Tab;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    if-eqz p1, :cond_3

    .line 508
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->allTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$Tab;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 511
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    if-eqz p1, :cond_6

    .line 512
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->currentTabs:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, v3, :cond_5

    const/4 v0, 0x1

    :cond_5
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, v0, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 514
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_7

    const/4 p2, 0x0

    .line 515
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 516
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiPagerAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 517
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    if-eqz p1, :cond_7

    .line 518
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    :cond_7
    return-void
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0

    .line 6660
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    const/4 p1, 0x0

    .line 6661
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)V
    .locals 0

    .line 6652
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->delegate:Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    return-void
.end method

.method public setDragListener(Lorg/telegram/ui/Components/EmojiView$DragListener;)V
    .locals 0

    .line 6656
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->dragListener:Lorg/telegram/ui/Components/EmojiView$DragListener;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 988
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 990
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 993
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_1

    .line 994
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 997
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_2

    .line 998
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1000
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_3

    .line 1001
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1003
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-eqz v0, :cond_4

    .line 1004
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_4
    return-void
.end method

.method public setForseMultiwindowLayout(Z)V
    .locals 0

    .line 6669
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->forseMultiwindowLayout:Z

    return-void
.end method

.method public setGifsBanned(ZJ)V
    .locals 1

    .line 298
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->isGifsBanned:Z

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 303
    iput-wide p2, p0, Lorg/telegram/ui/Components/EmojiView;->currentChatId:J

    :cond_1
    const/4 p2, 0x1

    .line 305
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->getTab(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_3

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 307
    :goto_0
    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    if-eqz p1, :cond_3

    .line 308
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-eqz p1, :cond_3

    .line 309
    invoke-direct {p0, p2, p2}, Lorg/telegram/ui/Components/EmojiView;->showBackspaceButton(ZZ)V

    const/4 p1, 0x0

    .line 310
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->showStickerSettingsButton(ZZ)V

    .line 311
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_3
    return-void
.end method

.method public setShowing(Z)V
    .locals 0

    .line 10184
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->showing:Z

    .line 10185
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabsPosition()V

    const/4 p1, 0x1

    .line 10186
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabsPosition(Z)V

    return-void
.end method

.method public setStickersBanned(ZZJ)V
    .locals 5

    .line 6883
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->typeTabs:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    if-nez v0, :cond_0

    return-void

    .line 6886
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiBanned:Z

    .line 6887
    iput-boolean p2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersBanned:Z

    const-wide/16 v1, 0x0

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 6891
    :cond_1
    iput-wide v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentChatId:J

    goto :goto_1

    .line 6889
    :cond_2
    :goto_0
    iput-wide p3, p0, Lorg/telegram/ui/Components/EmojiView;->currentChatId:J

    :goto_1
    const/4 p1, 0x0

    if-eqz p2, :cond_3

    const/4 p3, 0x2

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    .line 6893
    :goto_2
    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->getTab(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 6895
    iget-wide v3, p0, Lorg/telegram/ui/Components/EmojiView;->currentChatId:J

    cmp-long p4, v3, v1

    if-eqz p4, :cond_4

    const p4, 0x3e19999a    # 0.15f

    goto :goto_3

    :cond_4
    const/high16 p4, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {p3, p4}, Landroid/view/View;->setAlpha(F)V

    const/4 p3, 0x1

    if-eqz p2, :cond_5

    .line 6897
    iget-wide v3, p0, Lorg/telegram/ui/Components/EmojiView;->currentChatId:J

    cmp-long p2, v3, v1

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p2

    if-eqz p2, :cond_6

    .line 6898
    invoke-direct {p0, p3, p3}, Lorg/telegram/ui/Components/EmojiView;->showBackspaceButton(ZZ)V

    .line 6899
    invoke-direct {p0, p1, p3}, Lorg/telegram/ui/Components/EmojiView;->showStickerSettingsButton(ZZ)V

    .line 6900
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_4

    .line 6903
    :cond_5
    iget-wide v3, p0, Lorg/telegram/ui/Components/EmojiView;->currentChatId:J

    cmp-long p2, v3, v1

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p2

    if-eq p2, p3, :cond_6

    .line 6904
    invoke-direct {p0, p1, p3}, Lorg/telegram/ui/Components/EmojiView;->showBackspaceButton(ZZ)V

    .line 6905
    invoke-direct {p0, p1, p3}, Lorg/telegram/ui/Components/EmojiView;->showStickerSettingsButton(ZZ)V

    .line 6906
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p3, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_6
    :goto_4
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 5042
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 5043
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabsPosition()V

    const/4 p1, 0x1

    .line 5044
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabsPosition(Z)V

    .line 5045
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateBottomTabContainerPosition()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .line 6769
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6770
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    .line 6773
    invoke-static {}, Lorg/telegram/messenger/Emoji;->sortEmoji()V

    .line 6774
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiAdapter:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 6775
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6776
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz p1, :cond_1

    .line 6777
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoad:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6778
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs(Z)V

    .line 6779
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    .line 6784
    :cond_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->checkDocuments(Z)V

    .line 6785
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->checkDocuments(Z)V

    .line 6786
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v2, v1, v1, v2}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    .line 6787
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v2, v2, v1, v2}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    .line 6788
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2, v1, v2}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    .line 6790
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->chooseStickerActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    if-eqz p1, :cond_3

    .line 6791
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->checkVisibility()V

    :cond_3
    return-void
.end method

.method public showSearchField(Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_3

    .line 5204
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->getLayoutManagerForType(I)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v2

    .line 5205
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 5208
    :cond_0
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 5209
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->resetTabsY(I)V

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    .line 5213
    invoke-virtual {v2, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public showSetAvatarPreview(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    return-void

    .line 248
    :cond_0
    iput-object v1, v0, Lorg/telegram/ui/Components/EmojiView;->currentPreviewGif:Lorg/telegram/tgnet/TLRPC$Document;

    .line 249
    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->currentPreviewSticker:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x2

    const/16 v4, 0x5a

    if-eqz v1, :cond_2

    .line 253
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    .line 254
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocumentVideoThumb(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v4

    .line 255
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    .line 256
    iput v3, v6, Lorg/telegram/messenger/ImageLocation;->imageType:I

    const-string v5, "gif"

    if-eqz v4, :cond_1

    .line 258
    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiView;->setAvatarPreviewImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v4, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    const/4 v9, 0x0

    invoke-static {v2, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    const/4 v12, 0x0

    iget-wide v13, v1, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/4 v15, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const-string v11, "90_90_b"

    move-object v5, v7

    move-object v7, v8

    move-object v8, v4

    invoke-virtual/range {v5 .. v17}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    .line 260
    :cond_1
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView;->setAvatarPreviewImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v2, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/4 v12, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const-string v9, "90_90_b"

    move-object v5, v4

    invoke-virtual/range {v5 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    :goto_0
    const v1, 0x3f99999a    # 1.2f

    goto :goto_1

    .line 264
    :cond_2
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 265
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView;->setAvatarPreviewImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v1, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-string/jumbo v10, "webp"

    invoke-virtual/range {v5 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 269
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->minScreenBound()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->px(F)I

    move-result v5

    .line 270
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView;->setAvatarPreviewImage:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v6, 0x11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1e

    move v4, v5

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView;->setAvatarPreviewLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 273
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/animation/Animator;

    .line 274
    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiView;->setAvatarPreviewLayout:Landroid/widget/FrameLayout;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v5, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0xc8

    .line 275
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 276
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showStickerBanHint(ZZZ)V
    .locals 10

    .line 6915
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentChatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_c

    .line 6921
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz v3, :cond_5

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez v4, :cond_2

    if-eqz p2, :cond_1

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v4, :cond_2

    :cond_1
    if-eqz p3, :cond_5

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-eqz v3, :cond_5

    :cond_2
    if-eqz p2, :cond_3

    .line 6923
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->GlobalAttachEmojiRestricted:I

    const-string v4, "GlobalAttachEmojiRestricted"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    if-eqz p3, :cond_4

    .line 6925
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->GlobalAttachGifRestricted:I

    const-string v4, "GlobalAttachGifRestricted"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 6927
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->GlobalAttachStickersRestricted:I

    const-string v4, "GlobalAttachStickersRestricted"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 6930
    :cond_5
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-nez v3, :cond_6

    return-void

    .line 6933
    :cond_6
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz p2, :cond_7

    .line 6935
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->AttachPlainRestrictedForever:I

    const-string v4, "AttachPlainRestrictedForever"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    if-eqz p3, :cond_8

    .line 6937
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->AttachGifRestrictedForever:I

    const-string v4, "AttachGifRestrictedForever"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6939
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->AttachStickersRestrictedForever:I

    const-string v4, "AttachStickersRestrictedForever"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_9
    if-eqz p2, :cond_a

    .line 6943
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->AttachPlainRestricted:I

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "AttachPlainRestricted"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    if-eqz p3, :cond_b

    .line 6945
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->AttachGifRestricted:I

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v6, v0

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    const-string v0, "AttachGifRestricted"

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6947
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->AttachStickersRestricted:I

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v6, v0

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    const-string v0, "AttachStickersRestricted"

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6951
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6954
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->showStickersBanAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_d

    .line 6955
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 6956
    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->showStickersBanAnimator:Landroid/animation/AnimatorSet;

    .line 6959
    :cond_d
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->showStickersBanAnimator:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v4, v3, [Landroid/animation/Animator;

    .line 6960
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v3, [F

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz p1, :cond_e

    .line 6961
    invoke-virtual {v5}, Landroid/widget/TextView;->getAlpha()F

    move-result v9

    goto :goto_1

    :cond_e
    const/high16 v9, 0x3f800000    # 1.0f

    :goto_1
    aput v9, v7, v2

    const/4 v9, 0x0

    if-eqz p1, :cond_f

    goto :goto_2

    :cond_f
    const/4 v8, 0x0

    :goto_2
    aput v8, v7, v1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v3, [F

    const/16 v7, 0xc

    if-eqz p1, :cond_10

    .line 6962
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    goto :goto_3

    :cond_10
    invoke-virtual {v5}, Landroid/widget/TextView;->getTranslationY()F

    move-result v8

    :goto_3
    aput v8, v3, v2

    if-eqz p1, :cond_11

    goto :goto_4

    :cond_11
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v9, v2

    :goto_4
    aput v9, v3, v1

    invoke-static {v5, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v4, v1

    .line 6960
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 6964
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->hideStickersBan:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    .line 6965
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_12
    if-eqz p1, :cond_13

    .line 6968
    new-instance p1, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0, p2, p3}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/EmojiView;ZZ)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->hideStickersBan:Ljava/lang/Runnable;

    const-wide/16 p2, 0xdac

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 6970
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->showStickersBanAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 p2, 0x140

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 6971
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->showStickersBanAnimator:Landroid/animation/AnimatorSet;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6972
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->showStickersBanAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public switchToGifRecent()V
    .locals 3

    const/4 v0, 0x0

    .line 6101
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Components/EmojiView;->showBackspaceButton(ZZ)V

    .line 6102
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Components/EmojiView;->showStickerSettingsButton(ZZ)V

    .line 6103
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public updateColors()V
    .locals 15

    .line 6406
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    const-string/jumbo v1, "windowBackgroundWhite"

    const-string v2, "chat_emojiPanelBackground"

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->forseMultiwindowLayout:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 6417
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    if-eqz v0, :cond_1

    .line 6418
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 6420
    :cond_1
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 6421
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->needEmojiSearch:Z

    if-eqz v0, :cond_5

    .line 6423
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    if-eqz v0, :cond_2

    .line 6424
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerBackground:Landroid/view/View;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    .line 6426
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->bottomTabContainerBackground:Landroid/view/View;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    .line 6407
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6410
    iget-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    if-eqz v3, :cond_4

    .line 6411
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_2

    .line 6413
    :cond_4
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6429
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    const-string v3, "chat_emojiPanelShadowLine"

    if-eqz v0, :cond_6

    .line 6430
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    .line 6431
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabsShadow:Landroid/view/View;

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6433
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    if-eqz v0, :cond_7

    .line 6434
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->access$16800(Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v4, "dialogBackground"

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v0, v5}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 6435
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->access$16900(Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    :cond_7
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_3
    const/4 v5, 0x4

    const-string/jumbo v6, "windowBackgroundWhiteBlackText"

    const/4 v7, 0x1

    if-ge v4, v5, :cond_d

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    .line 6441
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    goto :goto_4

    :cond_8
    if-nez v4, :cond_9

    .line 6444
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->stickersSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    goto :goto_4

    :cond_9
    if-ne v4, v7, :cond_a

    .line 6446
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    goto :goto_4

    .line 6448
    :cond_a
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    :goto_4
    if-nez v5, :cond_b

    goto :goto_6

    .line 6454
    :cond_b
    iget-boolean v7, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    if-eqz v7, :cond_c

    .line 6455
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$17000(Lorg/telegram/ui/Components/EmojiView$SearchField;)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_5

    .line 6457
    :cond_c
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$17000(Lorg/telegram/ui/Components/EmojiView$SearchField;)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6458
    :goto_5
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$17100(Lorg/telegram/ui/Components/EmojiView$SearchField;)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6459
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$17200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/SearchStateDrawable;

    move-result-object v7

    const-string v8, "chat_emojiSearchIcon"

    invoke-direct {p0, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Lorg/telegram/ui/Components/SearchStateDrawable;->setColor(I)V

    .line 6460
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$17300(Lorg/telegram/ui/Components/EmojiView$SearchField;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const-string v9, "chat_emojiSearchBackground"

    invoke-static {v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColorByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 6461
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$17300(Lorg/telegram/ui/Components/EmojiView$SearchField;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->invalidate()V

    .line 6462
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v7

    invoke-direct {p0, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 6463
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v5

    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(I)V

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 6465
    :cond_d
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->dotPaint:Landroid/graphics/Paint;

    if-eqz v4, :cond_e

    const-string v5, "chat_emojiPanelNewTrending"

    .line 6466
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 6468
    :cond_e
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGridView:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    if-eqz v4, :cond_f

    .line 6469
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 6471
    :cond_f
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v4, :cond_11

    .line 6473
    iget-boolean v5, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    if-eqz v5, :cond_10

    .line 6474
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    goto :goto_7

    .line 6476
    :cond_10
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 6478
    :cond_11
    :goto_7
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const-string v5, "chat_emojiPanelStickerPackSelectorLine"

    if-eqz v4, :cond_13

    .line 6479
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setIndicatorColor(I)V

    .line 6480
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineColor(I)V

    .line 6482
    iget-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    if-eqz v4, :cond_12

    .line 6483
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    goto :goto_8

    .line 6485
    :cond_12
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    .line 6487
    :cond_13
    :goto_8
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz v4, :cond_15

    .line 6488
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setIndicatorColor(I)V

    .line 6489
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineColor(I)V

    .line 6491
    iget-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    if-eqz v4, :cond_14

    .line 6492
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    goto :goto_9

    .line 6494
    :cond_14
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    .line 6497
    :cond_15
    :goto_9
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz v4, :cond_17

    .line 6498
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setIndicatorColor(I)V

    .line 6499
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineColor(I)V

    .line 6500
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTabs:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-boolean v8, p0, Lorg/telegram/ui/Components/EmojiView;->isAvatarMode:Z

    if-eqz v8, :cond_16

    goto :goto_a

    :cond_16
    move-object v1, v2

    :goto_a
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    .line 6502
    :cond_17
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    const-string v4, "progressCircle"

    const-string v8, "chat_emojiPanelEmptyText"

    if-eqz v1, :cond_18

    .line 6503
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$17400(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->access$17500(Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v10

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6504
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$17400(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->access$17600(Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6505
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$17400(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->access$17700(Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v1

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 6507
    :cond_18
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTrendsIcon:Landroid/graphics/drawable/Drawable;

    const-string v9, "chat_emojiPanelIcon"

    invoke-direct {p0, v9}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v10

    invoke-static {v1, v10, v0}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 6508
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->kiklikoTrendsIcon:Landroid/graphics/drawable/Drawable;

    const-string v10, "chat_emojiPanelIconSelected"

    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v11

    invoke-static {v1, v11, v7}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 6510
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const-string v11, "chat_emojiPanelBackspace"

    if-eqz v1, :cond_19

    .line 6511
    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, v11}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v13

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v13, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6512
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSearchField:Lorg/telegram/ui/Components/EmojiView$SearchField;

    if-nez v1, :cond_19

    .line 6513
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v12

    invoke-static {v1, v12, v0}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 6514
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v7}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 6517
    :cond_19
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSettingsButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_1a

    .line 6518
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, v11}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v12

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v12, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6520
    :cond_1a
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->searchButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_1b

    .line 6521
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, v11}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v11

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v11, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6523
    :cond_1b
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->shadowLine:Landroid/view/View;

    if-eqz v1, :cond_1c

    .line 6524
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6526
    :cond_1c
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    if-eqz v1, :cond_1d

    .line 6527
    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const-string v2, "chat_gifSaveHintBackground"

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6528
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->mediaBanTooltip:Landroid/widget/TextView;

    const-string v2, "chat_gifSaveHintText"

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6530
    :cond_1d
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    if-eqz v1, :cond_1e

    .line 6531
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$17400(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->access$17500(Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6532
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$17400(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->access$17600(Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v8}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6533
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifSearchAdapter:Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$17400(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->access$17700(Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v1

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 6535
    :cond_1e
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, 0x0

    .line 6537
    :goto_b
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->tabIcons:[Landroid/graphics/drawable/Drawable;

    array-length v3, v2

    const-string v4, "chat_emojiBottomPanelIcon"

    if-ge v1, v3, :cond_1f

    .line 6538
    aget-object v2, v2, v1

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3, v0}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 6539
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->tabIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3, v7}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 6541
    :cond_1f
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    if-eqz v1, :cond_20

    .line 6542
    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateColors()V

    :cond_20
    const/4 v1, 0x0

    .line 6544
    :goto_c
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerIcons:[Landroid/graphics/drawable/Drawable;

    array-length v3, v2

    if-ge v1, v3, :cond_21

    .line 6545
    aget-object v2, v2, v1

    invoke-direct {p0, v9}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3, v0}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 6546
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickerIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3, v7}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_21
    const/4 v1, 0x0

    .line 6548
    :goto_d
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifIcons:[Landroid/graphics/drawable/Drawable;

    array-length v3, v2

    if-ge v1, v3, :cond_22

    .line 6549
    aget-object v2, v2, v1

    invoke-direct {p0, v9}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3, v0}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 6550
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3, v7}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 6552
    :cond_22
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->searchIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_23

    .line 6553
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v0}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 6554
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->searchIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v7}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 6556
    :cond_23
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->searchIconDotDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_24

    .line 6557
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v0}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 6558
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->searchIconDotDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v7}, Lorg/telegram/ui/ActionBar/Theme;->setEmojiDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 6560
    :cond_24
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLockPaint:Landroid/graphics/Paint;

    const-string v1, "chat_emojiPanelStickerSetName"

    if-eqz v0, :cond_25

    .line 6561
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6562
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLockPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6564
    :cond_25
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiLockDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_26

    .line 6565
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_26
    return-void
.end method
